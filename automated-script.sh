cd /var/tmp
git clone https://github.com/dishayan/Nexus-application-GCP-Kubernetes-.git
cd /var/tmp/Nexus-application-GCP-Kubernetes-/
docker build -t gcr.io/my-nexus-project-232423/nexus:v1 .
gcloud container clusters create nexus-cluster --num-nodes=3 --zone=us-central1-a
kubectl create -f cloud-nexus.yaml
