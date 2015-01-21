def rackserver(platform, options = {} )
	if options.empty?
		puts "ServerType: #{platform}"
	else
		puts "ServerType: #{platform}
Browser:    #{options[:browser]}
OS:         #{options[:os]}
Location:   #{options[:location]}
Size:       #{options[:size]}
Gb Ram:     #{options[:ram]}"

    end
end

rackserver("PC")
rackserver("Apple", {
	browser: "Firefox", 
	os: "OSX Yosemite", 
	location: "Dallas", 
	ram: "32gb", 
	size: "XL"})
