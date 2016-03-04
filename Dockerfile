FROM centos
#FROM ubuntu
#安装wget
RUN rpm -vhi ftp://220.194.48.110/pub/wget-1.12-1.8.el6.x86_64.rpm

RUN cd /opt
#安装jdk，tomcat
RUN wget ftp://220.194.48.110:21/pub/jdk1.7.0_71.tar.gz
RUN tar -zxvf jdk1.7.0_71.tar.gz
#RUN cd /opt
#RUN wget  ftp://220.194.48.110:21/pub/tomcat7.tar.gz
#RUN tar -zxvf tomcat7.tar.gz
#RUN curl -fsSL ftp://220.194.48.110:21/pub/jdk1.7.0_71.tar.gz
 # &&&& mv /usr/share/jdk1.7.0_71.tar.gz /opt



#设置环境变量
RUN echo JAVA_HOME=/opt/jdk1.7.0_71
RUN echo JRE_HOME=$JAVA_HOME/jre
RUN echo CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
RUN echo PATH=.:$JAVA_HOME/bin:$HOME/bin:$PATH



RUN java -version
#ENV CATALINA_HOME /usr/local/tomcat
#ENV PATH $CATALINA_HOME/bin:$PATH
#RUN mkdir -p "$CATALINA_HOME"
#WORKDIR $CATALINA_HOME
