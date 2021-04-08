FROM centos:latest
MAINTAINER sundar <saisundarmasetty@gmail.com>
LABEL env=dev
LABEL description="THIS ENV IS TO TEST"
WORKDIR /var/www/html
RUN yum install httpd -y && \     #script to optimize the performance
echo hello > index.html && \
 echo lw > lw.html
EXPOSE 80
ENTRYPOINT ["httpd"]          #Entrypoint and cmd combined to use the httpd in flexible way
CMD ["-D","FOREGROUND"]        #detach and foreground run and can pass any value like ::"podman run -it myimg:v1 -V or -C or -D "
~                                                                               
~                                
