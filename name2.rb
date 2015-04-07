class Name
	
	attr_reader :title, :first_name, :middle_name, :last_name
	# This substitues the commented out methods below
	
	def initialize(title, first_name, middle_name, last_name)
		@title = title
		@first_name = first_name
		@middle_name = middle_name
		@last_name = last_name
	end

#	def title
#		@title
#	end
#
#	def first_name
#		@first_name
#	end
#
#	def middle_name
#		@middle_name
#	end
#
#	def last_name
#		@last_name
#	end

end

name = Name.new("Mr.", "Derek", "Peter", "Hill")
puts name.title + " " + 
		 name.first_name + " " + 
		 name.middle_name + " " + 
		 name.last_name