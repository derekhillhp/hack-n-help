class TodoItem
	attr_reader :name

	def initialize(name)
		@name = name
		@complete = false
	end

	def complete?  #can use a ? if it returns a boolean
		@complete
	end

	def to_s
		if complete?
			"[C] #{name}"
		else
			"[I] #{name}"
		end
	end

	def mark_complete!   #can use a ! to the end of method if it changes something
		@complete = true
	end

	def mark_incomplete!
		@complete = false
	end

end