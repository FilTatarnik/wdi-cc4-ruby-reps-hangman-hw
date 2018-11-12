words = ["hello", "what", "is", "up", "dude"]

def lengths words
	words.map.with_index { |words| p words.length  }
end

lengths(words)