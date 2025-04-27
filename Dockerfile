# 1. Use an official lightweight nginx image as the base image
FROM nginx:alpine

# 2. Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# 3. Copy your website files to nginx public folder
COPY . /usr/share/nginx/html

# 4. Expose port 80 (used by nginx)
EXPOSE 80

# 5. Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
# https://travelwebsite-0pr0.onrender.com/