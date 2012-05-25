class Anagram < ActiveRecord::Base
	has_one :upload, :dependent => :destroy

	# FIXME:  => #<Anagram not initialized> in rails console
	# def initialize
	# 	@time_taken = 0
	# end

	# Aim: Given a word return all possible combinations
	# param: word
	# TODO: Rename vars and class appropriately
	def word_combos(word)
		word = word.chars.to_a
		all_permutations = []
		i = 1
		while i <= word.size
			all_permutations << word.permutation(i).to_a
			i+=1
		end
		return all_permutations
	end

	# Aim: Size of the 
	def permutation_size(word)
		n=word.size
		r=0
		while r<=n
			n.factorial/(n-r).factorial
			r+=1
		end
	end

	# Aim: Calculate the factorial of a given number
	# param(s): n = the number whose factorial is to be calculated
	# returns: n! = factorial of n
	# note: refactor factorial function. Put into a mathematical model
	def factorial
		(1..self).reduce(:*)
	end

	# Aim: Convert all word combos to strings. 
	# params: perms = is an array of arrays where 
	# 		  the first element contains all one-letter "words", 
	# 			the second element contains all two-letter "words", 
	# 			and so on and so forth
	# returns: true_perms
	# return type: Array
	def word_combos_to(all_word_combos)
		true_perms = all_word_combos.flatten(1)

		for i in 0..true_perms.size
			true_perms[i].join
		end

		return true_perms #.join

		# i,j=0,0
		# while i < all_permutations.size
		# 	while j < all_permutations[i].size
		# 		['a','b'].join
		# 		# prints "i =" + i.to_s +"and j = " +j.to_s
		# 		# true_perms << (all_permutations[i])[j].join
		# 	j+=1
		# 	end
		# j=0 # reset j
		# i+=1
		# end
		# return true_perms
	end

	def find_all_anagrams(all_word_combos, dictionary)
		anagrams = []
		start=Time.now
			anagrams = all_word_combos & dictionary
		stop=Time.now
		@time_taken = stop - start
		return anagrams
	end

	# Aim: Find anagrams
	# param: dictionary = An array of words provided by a dictionary file
	def find(dictionary)

	end
end