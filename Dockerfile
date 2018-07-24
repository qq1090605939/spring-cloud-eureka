FROM hub.c.163.com/wuxukun/maven-aliyun:3-jdk-8
#FROM ubuntu:16.04
VOLUME /tmp
ADD spring-cloud-eureka-0.0.1-SNAPSHOT.jar euraka-server.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","/euraka-server.jar"]