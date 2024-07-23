# Build stage
FROM alpine:3.18 AS builder

# Install Hugo
RUN apk add --no-cache hugo

# Set the working directory
WORKDIR /src

# Copy the Hugo project files
COPY . .

# Build the Hugo site
RUN hugo --minify

# Production stage
FROM nginx:alpine

# Copy the built site from the builder stage
COPY --from=builder /src/public /usr/share/nginx/html

# Create a custom Nginx configuration
RUN echo 'server { \
    listen 8080; \
    server_name localhost; \
    location / { \
        root /usr/share/nginx/html; \
        index index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

# Expose port 8080 (common for Fly.io deployments)
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
