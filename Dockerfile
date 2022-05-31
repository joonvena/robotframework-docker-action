FROM ppodgorsek/robot-framework:latest
USER root

VOLUME $REPORTS_DIR:/opt/robotframework/reports:Z
VOLUME $TESTS_DIR:/opt/robotframework:Z
ENV BROWSER=$BROWSER
ENV ROBOT_THREADS=$ROBOT_THREADS
ENV PABOT_OPTIONS="$PABOT_OPTIONS"
ENV ROBOT_OPTIONS="$ROBOT_OPTIONS"

## Install dependencies
RUN yum upgrade -y && yum update -y
RUN yum install -y libzbar0 libzbar-dev zbarlight
RUN pip3 install zbarlight

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
