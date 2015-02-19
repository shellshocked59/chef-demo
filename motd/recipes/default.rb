#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
file "/etc/motd" do
	action :create
	#content IO.read("motd.txt")
	content "motd.erb"
	mode "0644"
	owner "root"
	group "root"
end
