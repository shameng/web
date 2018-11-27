FROM java:8u111-jdk

MAINTAINER meng

EXPOSE 21000

WORKDIR /workspace
VOLUME ["/workspace/logs"]

ARG JAR_FILE
COPY target/${JAR_FILE} /workspace/

CMD java -Xmx128m -Duser.timezone=Asia/Shanghai -XX:HeapDumpPath=/workspace/logs/web-test_heap.dump -cp /workspace/resources -jar ${JAR_FILE}

