# Multi-stage build für dettmer.dev
FROM node:20-alpine AS base

# Enable pnpm (optional, wenn du npm bevorzugst, weglassen)
RUN corepack enable

# Build stage
FROM base AS build
WORKDIR /app

# Copy dependency files
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci --frozen-lockfile

# Copy source files
COPY . .

# Build the application
ENV NODE_ENV=production
RUN npm run build

# Production stage (Nginx für statische Dateien)
FROM nginx:alpine

# Copy built files from build stage
COPY --from=build /app/dist /usr/share/nginx/html

# Copy custom nginx config (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
