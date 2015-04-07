loop do
	print "Do you want to continue? (y/n) "
	answer = gets.chomp.downcase
	break if answer == "n"
end