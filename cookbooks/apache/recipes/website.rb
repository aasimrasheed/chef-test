
if node['platform'] == 'ubuntu'
        var_path = '/var/www/html/index.html'
elsif node['platform_family'] == 'rhel'
	var_path = '/var/www/html/index.html'
elsif  node['platform_family'] == 'debian'
        var_path = '/var/www/index.html'
end

file 'default www' do
	path var_path
	content 'H e l l o   W o r l d VERSION 2.0 !!!!'
end

var_webnodes = search('node', 'role:web')
var_webnodes.each do |var_node|
	puts var_node
end

