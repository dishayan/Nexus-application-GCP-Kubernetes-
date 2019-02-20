FROM sonatype/nexus3
USER root
RUN yum install wget -y
RUN wget https://storage.googleapis.com/pub/gsutil.tar.gz
RUN tar xfz gsutil.tar.gz -C $HOME
RUN echo 'export PATH=${PATH}:$HOME/gsutil' >> /root/.bashrc
RUN source /root/.bashrc
USER nexus
CMD /opt/sonatype/start-nexus-repository-manager.sh
