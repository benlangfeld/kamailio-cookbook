user node['kamailio']['user']
group node['kamailio']['group']

apt_repository node['kamailio']['package'] do
  key node['kamailio']['key']
  uri node['kamailio']['source']
  distribution node['kamailio']['distro']
  components ['main']
  action :add
end

package 'kamailio'

template '/etc/default/kamailio' do
  source 'kamailio.default.erb'
end

service 'rsyslog' do
  supports restart: true
  action :nothing
  restart_command '/etc/init.d/rsyslog restart || true'
end

template '/etc/rsyslog.d/kamailio.conf' do
  source 'kamailio.syslog.conf.erb'
  owner 'root'
  group 'root'
  notifies :restart, 'service[rsyslog]', :immediately
end

directory '/etc/kamailio' do
  owner node['kamailio']['user']
  group node['kamailio']['group']
end

directory '/usr/share/kamailio' do
  owner node['kamailio']['user']
  group node['kamailio']['group']
end

service 'kamailio' do
  supports restart: true, start: true, stop: true
  action [:enable, :start]
end
