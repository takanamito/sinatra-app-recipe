package 'tmux'

remote_file "#{node[:home_dir]}/.tmux.conf" do
  source 'files/.tmux.conf'
  mode '644'
end
