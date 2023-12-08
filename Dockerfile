# set the base image httpd:latest
FROM httpd:latest

# person who is maintaining the Dockerfile
MAINTAINER "rgunaki47@gmail.com"

# copy all the files from little fashion app to container path
COPY ./* /usr/local/apache2/htdocs
