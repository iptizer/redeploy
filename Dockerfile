FROM bitnami/kubectl

WORKDIR /

COPY redeploy.sh /redeploy.sh

USER root

RUN chmod a+x /redeploy.sh

USER 1001

ENTRYPOINT ["/bin/bash","-c","/redeploy.sh"]

