execute "curl -L -o /tmp/minikube.rpm https://storage.googleapis.com/minikube/releases/latest/minikube-1.9.1-0.x86_64.rpm"

execute "rpm -i /tmp/minikube.rpm"

execute "minikube start"

