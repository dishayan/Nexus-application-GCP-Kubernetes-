# Nexus-application-GCP-Kubernetes
# Task1 :- Build a custom container 
You do not have to start from scratch, since Nexus has an image already prepared here: https://hub.docker.com/r/sonatype/nexus3/
Nexus needs a plugin to write into Cloud Storage. You can find its description here: https://github.com/sonatype-nexus-community/nexus-blobstore-google-cloud
Create a Docker file, which makes an image, where the Cloud Storage plugin is already properly installed. 

# 
Attached the Dockerfile. Once you are ready with yout docker file then run below command to make an image.

#docker build -t nexus-debasish-v1 .

Here considering "nexus-debasish-v1" as image name with version.

Run below command to run a container from the above image in background and execute bash shell login to check whether cloud storage plugin is installed properly.

#docker run -dt -p 8081:8081 --name nexus-v1 nexus-debasish bash

#docker exec -it debasish-nexus /root/gsutil/gsutil --version

Also check if the application is working fine.

#curl -u admin:admin123 http://localhost:8081/service/metrics/ping
#
It will show you the installed version of "gsutil.
