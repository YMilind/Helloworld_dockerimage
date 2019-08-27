FROM centos:latest

RUN yum update -y

 
RUN yum install git awscli -y 
RUN yum install httpd -y
#RUN git clone https://github.com/YMilind/html.git /var/www/html/
RUN aws s3 cp s3://d3jslearning/index.html /var/www/html/index.html 

EXPOSE 80
RUN chkconfig httpd on


CMD [ "/usr/sbin/httpd", "-D","FOREGROUND"]




