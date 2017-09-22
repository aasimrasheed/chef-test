# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "aasim"
client_key               "#{current_dir}/aasim.pem"
chef_server_url          "https://aasimrasheed1.mylabserver.com/organizations/chefacademy"
cookbook_path            ["#{current_dir}/../cookbooks"]
