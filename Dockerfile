FROM ubuntu
LABEL maintainer="mateusz.atopech@gmail.com" vendor="Mateusz Grela"
RUN apt-get update 
RUN apt-get install -y --allow-unauthenticated apache2 && apt-get clean 
EXPOSE 8080
CMD ["apachectl", "-D", "FOREGROUND"]
