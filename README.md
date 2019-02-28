# Nexus-application-GCP-Kubernetes
# Task1 :- Build a custom container 
You do not have to start from scratch, since Nexus has an image already prepared here: https://hub.docker.com/r/sonatype/nexus3/
Nexus needs a plugin to write into Cloud Storage. You can find its description here: https://github.com/sonatype-nexus-community/nexus-blobstore-google-cloud
Create a Docker file, which makes an image, where the Cloud Storage plugin is already properly installed. 

# 
Attached the Dockerfile. Once you are ready with yout docker file then run below command to make an image.

    #docker build -t sonatype/nexus5 .

Here considering "sonatype/nexus5" as image name with version.

Run below command to run a container from the above image in background and execute command to check whether cloud storage plugin is installed properly.

    #docker run -d -p 8081:8081 --name nexus sonatype/nexus5

    #docker exec -it --user root nexus /root/gsutil/gsutil --version

It will show you the installed version of "gsutil.

Also check if the application is working fine. It should return "Pong"

    #curl -u admin:admin123 http://localhost:8081/service/metrics/ping


