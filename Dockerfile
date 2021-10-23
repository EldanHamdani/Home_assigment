FROM ubuntu
RUN apt update
RUN apt install -y maven && apt install -y git &&\
    git clone https://github.com/EldanHamdani/Bottomline.git &&\
    cd Bottomline/complete/ &&\
    mvn clean install
CMD cd Bottomline/complete/target/ &&\
    java -jar spring-boot-complete-0.0.1-SNAPSHOT.jar
