FROM java:7

COPY src /home/root/jhello/src 
WORKDIR  /home/root/jhello

ENV FOO bar
RUN apt-get update && apt-get install -y vim
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp" , "bin", "HelloWorld"]


