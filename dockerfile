FROM centos:centos7
MAINTAINER liubin.kt@haier.com

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nodejs npm; yum clean all

# copy 程序代码到容器的/src 下
ADD . /src

RUN cd /src; npm install

EXPOSE 8080

CMD ["node", "/src/app.js"]
