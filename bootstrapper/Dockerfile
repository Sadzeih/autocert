FROM smallstep/step-cli:0.14.2

USER root
ENV FEDERATED_PEM="/var/run/autocert.step.sm/federated.pem"
ENV CRT="/var/run/autocert.step.sm/site.crt"
ENV KEY="/var/run/autocert.step.sm/site.key"
ENV STEP_ROOT="/var/run/autocert.step.sm/root.crt"

COPY bootstrapper/bootstrapper.sh /home/step/
RUN chmod +x /home/step/bootstrapper.sh
CMD ["/home/step/bootstrapper.sh"]
