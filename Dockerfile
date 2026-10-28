# Stage 1: Build Vite App
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve with 'serve'
FROM node:18-alpine
WORKDIR /app
RUN npm install -g serve
# Copy the compiled Vite output from the builder stage
COPY --from=builder /app/dist /app/dist

EXPOSE 3000
# Ensure -s flag is passed so 'serve' handles client-side routing, and point to /app/dist
CMD ["serve", "-s", "dist", "-l", "3000"]
