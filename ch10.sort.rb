def sort text_array # This "wraps" recursive_sort.
recursive_sort text_array, []
end

def recursive_sort unsorted, sorted
	return sorted if unsorted.length <= 0
  
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
  	if tested_object < smallest
  		still_unsorted.push smallest
  		smallest = tested_object
  	else
  		still_unsorted.push tested_object
  	end
  end

  sorted.push smallest
  recursive_sort still_unsorted, sorted
end

puts(sort(['can', 'feel', 'singing', 'like', 'a', 'can']))