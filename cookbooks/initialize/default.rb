execute 'apt-get update' do
  command 'apt-get update -y'
end

%w(git vim).each do |pkg|
  package pkg do
    action :install
  end
end
