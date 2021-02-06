FROM tomcat:9
#ENV TZ=Europe/Moscow
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install git -y
RUN apt install default-jdk -y
#RUN apt install tomcat9 -y
RUN apt install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
#RUN cd boxfuse-sample-java-war-hello
#RUN mvn -f /usr/local/tomcat/boxfuse-sample-java-war-hello/pom.xml
EXPOSE 8080
CMD ["catalina.sh", "run"]
