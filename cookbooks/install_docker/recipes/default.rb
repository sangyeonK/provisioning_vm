package %w(docker docker-engine docker.io) do
  action :remove
end

apt_update

package %w(apt-transport-https ca-certificates curl software-properties-common) do
  action :install
end

bash 'add apt-repository of docker-ce' do
  cwd '/tmp'
  code <<-EOH
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) \
      stable"
  EOH
end

apt_update do
  action :update
end

package %w(docker-ce) do
  action :install
end

group 'docker' do
  append true
  members ['vagrant']
end

bash 'install docker-compose' do
  cwd '/tmp'
  code <<-EOH
    sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
  EOH
end