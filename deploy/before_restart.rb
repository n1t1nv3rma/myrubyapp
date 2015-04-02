myapp = node[:opsworks][:applications][0][:slug_name]
command "sudo su - deploy -c 'cd /srv/www/#{myapp}/current && bundle exec rake RAILS_ENV=production assets:precompile' "
comand "echo asset compiled for #{myapp}... > /var/tmp/before_restart.out"
