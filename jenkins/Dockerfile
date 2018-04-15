FROM jenkins/jenkins

# https://github.com/anabadce/rotate-elasticsearch-index
ENV JOB_SCRIPT_URL "https://raw.githubusercontent.com/anabadce/rotate-elasticsearch-index/master/rotate-elasticsearch-index.sh"
ENV JOB_DIR "$JENKINS_HOME/jobs/rotate-elasticsearch-index"
ENV JOB_WORKSPACE "$JOB_DIR/workspace"

COPY --chown=jenkins:jenkins config.xml $JOB_DIR/
COPY --chown=jenkins:jenkins rotate-elasticsearch-indexes.sh $JOB_WORKSPACE/
ADD  --chown=jenkins:jenkins $JOB_SCRIPT_URL $JOB_WORKSPACE/
