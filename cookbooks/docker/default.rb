execute " yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine"

package "yum-utils"

execute "yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo"

execute "yum install https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm -y"

package "docker-ce" 
package "docker-ce-cli"

service "docker" do
  action [:enable, :start]
end

execute "usermod -aG docker admin"

execute "docker run hello-world"

