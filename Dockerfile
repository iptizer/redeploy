FROM bitnami/kubectl

COPY redeploy.sh /redeploy.sh

CMD ["/redeploy.sh"]

