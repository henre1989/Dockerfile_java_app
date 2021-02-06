FROM tomcat:9
RUN apt update && apt install git -y
RUN apt install default-jdk -y
RUN apt install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package -f /usr/local/tomcat/boxfuse-sample-java-war-hello/pom.xml
RUN copy /usr/local/tomcat/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
