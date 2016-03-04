FROM centos
#FROM ubuntu
#安装wget
RUN rpm -vhi ftp://220.194.48.110/pub/wget-1.12-1.8.el6.x86_64.rpm

RUN cd /opt
#安装jdk，tomcat
RUN wget ftp://220.194.48.110:21/pub/jdk1.7.0_71.tar.gz
RUN tar -zxvf jdk1.7.0_71.tar.gz
RUN cd /opt
RUN wget  ftp://220.194.48.110:21/tomcat7-push.tar.gz
RUN tar -zxvf tomcat7-push.tar.gz

#设置tomcat端口
EXPOSE 8089



#设置环境变量
ENV JAVA_HOME /opt/jdk1.7.0_71
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
ENV PATH .:$JAVA_HOME/bin:$HOME/bin:$PATH
#校验环境变量设置是否正确
RUN echo PATH=.:$JAVA_HOME/bin:$HOME/bin:$PATH


#启动tomcat服务
#RUN cd /opt/tomcat7-push/bin
CMD ["catalina.sh", "run”]


