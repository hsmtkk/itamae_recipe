execute "curl -L -o /tmp/minikube.rpm https://storage.googleapis.com/minikube/releases/latest/minikube-1.9.1-0.x86_64.rpm"

execute "rpm -i /tmp/minikube.rpm"

execute "curl -L -o /tmp/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"

execute "mv /tmp/kubectl /usr/local/bin/kubectl"

file "/usr/local/bin/kubectl" do
  action :nothing
  mode "0755"
end

