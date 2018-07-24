FROM hub.c.163.com/wuxukun/maven-aliyun:3-jdk-8
#FROM ubuntu:16.04
ADD pom.xml /tmp/build/

ADD src /tmp/build/src
        #构建应用
RUN cd /tmp/build && mvn clean package \
        #拷贝编译结果到指定目录
        && mv target/*.jar /euraka-server.jar \
        #清理编译痕迹
        && cd / && rm -rf /tmp/build
VOLUME /tmp
EXPOSE 8090
ENTRYPOINT ["java","-jar","/euraka-server.jar"]