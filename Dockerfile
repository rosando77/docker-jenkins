FROM centos:8

LABEL maintainer="Mael THT"

# Updating our OS
RUN yum -y update && yum clean all

# Install Apache package
RUN yum install -y httpd

# Copying index file to html folder
COPY index.html /var/www/html/

# Port on which the container should listen
EXPOSE 80

# run the httpd service
ENTRYPOINT ["/usr/sbin/httpd"]

# Running httpd service in the background
CMD ["-D", "FOREGROUND"]