from openjdk:jre-slim
RUN apt update && apt install -y pylint wget
RUN wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.0.3.778-linux.zip\
&& unzip sonar-scanner-cli-3.0.3.778-linux.zip\
&& rm sonar-scanner-cli-3.0.3.778-linux.zip
RUN mkdir /code
VOLUME /code
WORKDIR /code
ENTRYPOINT ["/sonar-scanner-3.0.3.778-linux/bin/sonar-scanner"]
