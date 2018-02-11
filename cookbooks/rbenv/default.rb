include_recipe 'rbenv::system'

file "#{node[:home_dir]}/.bashrc" do
  action :edit
  block do |content|
    content << "\nexport RBENV_ROOT=/usr/local/rbenv\nexport PATH=\"${RBENV_ROOT}/bin:${PATH}\"\neval \"$(rbenv init -)\""
  end
end
