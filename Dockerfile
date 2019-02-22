FROM sonatype/nexus3
USER root
RUN echo [google-cloud-sdk] >/etc/yum.repos.d/google-cloud-sdk.repo
RUN echo name=Google Cloud SDK>>/etc/yum.repos.d/google-cloud-sdk.repo
RUN echo baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64>>/etc/yum.repos.d/google-cloud-sdk.repo
RUN echo enabled=1>>/etc/yum.repos.d/google-cloud-sdk.repo
RUN echo gpgcheck=0 >>/etc/yum.repos.d/google-cloud-sdk.repo
RUN echo repo_gpgcheck=0>>/etc/yum.repos.d/google-cloud-sdk.repo
RUN echo gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg>>/etc/yum.repos.d/google-cloud-sdk.repo
RUN echo gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg>>/etc/yum.repos.d/google-cloud-sdk.repo
RUN echo [gcsfuse]>/etc/yum.repos.d/gcsfuse.repo
RUN echo name=gcsfuse>>/etc/yum.repos.d/gcsfuse.repo
RUN echo baseurl=https://packages.cloud.google.com/yum/repos/gcsfuse-el7-x86_64>>/etc/yum.repos.d/gcsfuse.repo
RUN echo enabled=1>>/etc/yum.repos.d/gcsfuse.repo
RUN echo gpgcheck=0>>/etc/yum.repos.d/gcsfuse.repo
RUN echo repo_gpgcheck=0>>/etc/yum.repos.d/gcsfuse.repo
RUN yum install google-cloud-sdk -y
RUN yum install gcsfuse -y
RUN mkdir -p /var/cloud_vol
USER nexus
CMD /opt/sonatype/start-nexus-repository-manager.sh
