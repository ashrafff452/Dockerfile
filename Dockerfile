# Base Image
FROM amazonlinux:latest

# Maintainer
LABEL maintainer="Shaik"

# Install Nginx
RUN yum update -y && \
    yum install -y nginx && \
    yum clean all


# Expose Port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
