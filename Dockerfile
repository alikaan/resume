# Use nginx alpine for a lightweight web server
FROM nginx:alpine

# Copy all files to nginx html directory
COPY . /usr/share/nginx/html

# Environment variables for nginx-proxy
ENV VIRTUAL_HOST=alikaanturkmen.com
ENV LETSENCRYPT_HOST=alikaanturkmen.com
ENV LETSENCRYPT_EMAIL=turkmenalikaan@gmail.com

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]