class Anagram < ActiveRecord::Base
	# Aim: Given a word return all possible combinations
	# param: word
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
		true_perms = []
		print all_word_combos.size
		print all_word_combos[0].size
		print all_word_combos[0][0].size

		for i in 0..all_word_combos.size
			for j in 0..(all_word_combos[i][j].size)
				# print all_word_combos[i][j]
				# true_perms << all_word_combos[i][j]
			end
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

	# Aim: Find anagrams
	# param: dictionary = An array of words provided by a dictionary file
	def find(dictionary)

	end
end