FROM CentOS release 6.6

#安装jdk，tomcat



#设置环境变量
RUN echo JAVA_HOME=/opt/jdk1.7.0_71
RUN echo JRE_HOME=$JAVA_HOME/jre
RUN echo CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
RUN echo PATH=.:$JAVA_HOME/bin:$HOME/bin:$PATH



#ENV CATALINA_HOME /usr/local/tomcat
#ENV PATH $CATALINA_HOME/bin:$PATH
#RUN mkdir -p "$CATALINA_HOME"
#WORKDIR $CATALINA_HOME
