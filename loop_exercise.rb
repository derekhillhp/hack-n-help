contact_list = [
  {"name" => "Jason", "phone_number" => "123"},
  {"name" => "Nick", "phone_number" => "456"}
]
contact_list.each do |item|
	contact = item
	puts contact
	puts "Name is: #{contact["name"]} and Phone number is: #{contact["phone_number"]}"
end