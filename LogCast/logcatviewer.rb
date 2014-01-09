filename = ask_open_file

Shoes.app(title: "LogCast") do
	File.read(filename).each_line do |line|
		if line[0] != "\n"
			flow height: "26px" do
				
				icon = line.split('/')[0]
				
				case icon
					when "I"	
						background "#0099CC"
						image "img/info.png", displace_left: 2, displace_top: 6
					when "E"
						background "#CC0000"
						image "img/error.png", displace_left: 2, displace_top: 6
					when "W"
						background "#FF8800"
						image "img/warning.png", displace_left: 2, displace_top: 6
					when "V"
						background "#669900"
						image "img/verbose.png", displace_left: 2, displace_top: 6
					when "D"
						background "#9932CC"
						image "img/debug.png", displace_left: 2, displace_top: 6
				end
				
				para line.split('/')[1].split('(')[0], family: "Consolas", weight: "bold", stroke: "#FFF"
				para line.split('(')[1].split(')')[0], family: "Consolas", stroke: "#FFF"
				
				para line.split(':')[1..100], family: "Consolas", stroke: "#FFF"
			end
		end
	end
end