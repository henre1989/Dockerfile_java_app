FROM ubuntu
RUN apt update && apt install git -y
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install maven -y
#RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
#RUN mvn packege -f /boxfuse-sample-java-war-hello/pom.xml
EXPOSE 8080
CMD ["catalina.sh", "run"]