
var_hostname = node['hostname']

file '/etc/motd' do
	content "Hostname is this: #{var_hostname}"
end
