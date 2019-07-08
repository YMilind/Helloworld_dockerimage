FROM centos:latest

RUN yum update -y

RUN yum install git -y
RUN yum install httpd -y
RUN git clone https://github.com/YMilind/html.git /var/www/html/


EXPOSE 80



