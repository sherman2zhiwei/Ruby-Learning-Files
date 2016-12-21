def substrings(word, array)
	hash = Hash.new



	array.each do |dictionary_word|
		dictionary_word.downcase!
		hash[dictionary_word] = 0
	end


	word.downcase!
	word = word.split(/\W/)
	word.each do |match|
		if hash.has_key?(match)
			hash[match] += 1
		end
	end

	puts hash
end

substrings("Hello did you know that Mama Mia sucks but I don't?", ['hello', 'I', 'suck'])