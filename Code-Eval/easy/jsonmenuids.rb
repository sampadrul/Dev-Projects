require 'json'

def json_parser(line)
	parsed = JSON.parse(line)
	items = parsed['menu']['items'].compact.select { |item| item.include?("label") }.map { |item| item['id'] }
	p items.inject(0) { |memo, value| memo += value }
end

File.open(ARGV[0]).each_line do |line|
	json_parser(line.chomp)
end

#line = '{"menu": {"header": "menu", "items": [{"id": 70, "label": "Label 70"}, {"id": 85, "label": "Label 85"}, {"id": 93, "label": "Label 93"}, {"id": 2}]}}'
#
#parsed = JSON.parse(line.to_s)
#items = parsed['menu']['items'].compact.select { |item| item.include?("label") }.map { |item| item['id'] }
#p items.inject(0) { |memo, value| memo += value }