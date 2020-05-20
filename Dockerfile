FROM  devopsedu/webapp
  
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y apache2
EXPOSE 8080
CMD ["apache2ctl", "-D", "FOREGROUND"]

RUN apt-get update && apt-get install -y \
curl

WORKDIR   /var/www/html

RUN apt-get install git -y
RUN git clone https://github.com/robertofloresayala2020/ProjectEdureka
