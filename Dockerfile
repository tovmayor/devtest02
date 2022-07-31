FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
RUN rm -rf /var/www/html/* #remove in container
ADD index.html /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
# Hello World, GIT test
#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
