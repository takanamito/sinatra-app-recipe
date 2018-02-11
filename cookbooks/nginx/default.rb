package 'nginx'

%w( /etc/nginx/nginx.conf /etc/nginx/conf.d/app.conf).each do |conf|
  remote_file conf do
    user 'root'
    owner 'root'
    mode '644'
  end
end

directory '/var/log/nginx/app' do
  mode '755'
end

service 'nginx' do
  action :restart
end
