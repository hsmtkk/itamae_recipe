execute "curl -L -o /tmp/minikube.rpm https://storage.googleapis.com/minikube/releases/latest/minikube-1.9.1-0.x86_64.rpm" do
  not_if "test -f /tmp/minikube.rpm"
end

execute "rpm -i /tmp/minikube.rpm" do
  not_if "rpm -q minikube"
end

execute "minikube start" do
  user "admin"
end

execute "curl -L -o /tmp/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" do
  not_if "test -f /tmp/kubectl"
end

execute "mv /tmp/kubectl /usr/local/bin/kubectl" do
  not_if "test -f /usr/local/bin/kubectl"
end

execute "chmod 755 /usr/local/bin/kubectl"

execute "kubectl cluster-info"

