FROM ubuntu
RUN apt install && apt install tomcat9 -y && apt install git -y && apt install default-jdk -y
#RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
#RUN mvn packege -f /boxfuse-sample-java-war-hello/pom.xml
EXPOSE 8080
CMD ["catalina.sh", "run"]