#!/usr/bin/ruby
$KCODE = 'u' # enable UTF-8 mode for 1.8.x

require 'net/http'
require 'YAML'

conf = YAML.load_file(ENV['HOME']+'/.weichuanrc')

def transfer(data, user, authcode)
	t = data.match(/^https?\:/i) ? (data.match(/\.(jpg|png|gif|jpeg)/i) ? "50" : "10") : "20" # 10 url / 20 txt / 30 phone / 50 image
	Net::HTTP.post_form(URI.parse("http://weichuan.me/api/chrome/transmit"),
										 {"ucode" => user, 
										  "password" => authcode,
										  "type" => t,
										  "title" => t=="10" ? data.sub(/https?:\/\/(.+)\/.*/i, "\\1")+"\n" : "",
										  "content" => data}).body
end

if ENV['ThisServiceMode']
	data = $stdin.read.strip
	transfer(data, conf["username"], conf["authcode"] || "")
else 
	system("open http://weichuan.cn/"+user)
end	
