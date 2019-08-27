FROM centos:latest

RUN yum update -y

 
RUN yum install awscli -y 
RUN yum install httpd -y
WORKDIR /opt/apache/scripts/
COPY ./execute.sh /opt/apache/scripts/
EXPOSE 80
ENTRYPOINT ["/bin/bash","/opt/apache/scripts/execute.sh"]
RUN chkconfig httpd on






