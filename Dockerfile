# Use the smallest possible Nginx image based on Alpine Linux
FROM nginx:alpine

# Copy the static web files into the default Nginx html directory
COPY web/ /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# The default command starts Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
