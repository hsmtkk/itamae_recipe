execute " yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine"

package "yum-utils"

execute "yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo"

package "docker-ce" 
package "docker-ce-cli"
package "containerd.io"

service "docker" do
  action [:enable, :start]
end

execute "usermod -aG docker admin"

execute "docker run hello-world"

