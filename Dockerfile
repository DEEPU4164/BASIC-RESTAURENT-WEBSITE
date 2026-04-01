# Use the official, lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Remove the default Nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML and CSS files into the Nginx public directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80 to allow external access
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
