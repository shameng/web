FROM java:8u111-jdk

MAINTAINER meng

EXPOSE 21000

WORKDIR /workspace
VOLUME ["/workspace/logs"]

COPY target/web-test.jar /workspace/

CMD java -Xmx128m -Duser.timezone=Asia/Shanghai -jar web-test.jar > /workspace/test.txt