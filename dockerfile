# Use Nginx as the base image
FROM nginx:alpine

# Copy the HTML file to the default Nginx directory
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
