#---------------------------------------------------------------------------------
# 1. Lengths

# Write a method lengths that accepts a single parameter as an argument, namely an array of strings. The method should return an array of numbers. Each number in the array should be the length of the corresponding string.

words = ["hello", "what", "is", "up", "dude"]

def lengths words
	words.map.with_index { |words| p words.length  }
end

# lengths(words)

#---------------------------------------------------------------------------------

# 2. Transmogifier

# Write a Ruby method called transmogrifier This method should accept three arguments, which you can assume will be numbers. Your method should return the "transmogrified" result
def transmogrifier num1, num2, num3
		p (num1*num2)**num3
end

# transmogrifier(5, 3, 2)

# The transmogrified result of three numbers is the product (numbers multiplied together) of the first two numbers, raised to the power (exponentially) of the third number.

# For example, the transmogrified result of 5, 3, and 2 is (5 times 3) to the power of 2 is 225.

# Use your method to find the following answers.


#---------------------------------------------------------------------------------

# 3. Toonify
def  toonify accent, sentence
	if accent == "daffy"
		p sentence.gsub(/s/, "th")
	elsif accent == "elmer"
		p sentence.gsub(/r/, "w")
	end
end
# toonify("elmer", "really clever Silly rabbit")

# Write a method called toonify that takes two parameters, accent and sentence.

# If accent is the string "daffy", return a modified version of sentence with all "s" replaced with "th".
# If the accent is "elmer", replace all "r" with "w".
# Feel free to add your own accents as well!
# If the accent is not recognized, just return the sentence as-is.

#---------------------------------------------------------------------------------

# 4. Word_reverse
def word_reverse string

	p string.split(" ").reverse 

end

# word_reverse("This is a string")
# Write a method word_reverse that accepts a single argument, a string. The method should return a string with the order of the words reversed. Don't worry about punctuation.

#---------------------------------------------------------------------------------

# 5. Letter_reverse
def letter_reverse string
	words_rev = string.split("").reverse().join("")
	# words_rev.split(" ").reverse().join(" ")
	# return words_rev
	
end

# p letter_reverse("This is a reversed String")
# Write a method letter_reverse that accepts a single argument, a string. The method should maintain the order of words in the string but reverse the letters in each word. Don't worry about punctuation. This will be very similar to round 4 except you won't need to split them with a space.

#---------------------------------------------------------------------------------

# 6. longest
def longest string
	string.max_by(&:length)
end
# p longest(["123456789", "oh", "good", "grief"])
# Write a method longest that accepts a single argument, an array of strings. The method should return the longest word in the array. In case of a tie, the method should return either.

#---------------------------------------------------------------------------------

# 7. check_prime? & get_primes

# Write a method called check_prime? that will test whether a number is Prime. The method will return true if Prime, false if not.
def check_prime (number) 
	if number % 2 == 0
			p "Prime"
		else p "not prime"
	end	
end

def get_primes number
	i = 0
	primes = []

	while i < number
		if (i % 2) == 0
			primes << (i)
		end
		i+=1
	end
	print primes
end
get_primes(50)
# Write another method called get_primes that will print all the Primes up to an arbitrary limit. For example, if you invoke your method with get_primes 100, it will print all the Prime numbers up to and including 100. This method can call on the previous check_prime? method.

# Hints/reminders/notes: A Prime number is a number that is not evenly divisible by another number except 1 and itself. To test whether a number is Prime, you only need to test as far as the square root of that number. This is advisable for optimization and testing large numbers.




#---------------------------------------------------------------------------------
#------------PART 2 HANGMAN GAME---------------

# Make a hangman ruby console game. You must have a Word class. You should also have a word_array containing a couple dozen words to randomly choose from. And then use loop for the main game logic with repeated guessing, and break when the game is over.