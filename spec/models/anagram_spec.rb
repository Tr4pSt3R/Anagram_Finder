require 'spec_helper'
require 'anagram.rb'
# require 'ruby-debug'

describe Anagram do
	before(:each) do
		@anagram = Anagram.create
	end

	it "should find all possible word permutations" do 
		# all possible word combinations 
		
	end

	it "should find combinations up to the size of the given word" do 
		
		word = "gemfile"
		perms = @anagram.word_combos(word)
		assert_equal(word.length, perms.size)
	end

	# it "should correctly calculate the factorial of a given number" do
	# 	assert_equal(3628800, 10.(@anagram.factorial)) 
	# end

	it "should find at least one combination of a given word" do
		word = "gemfile"
		all_word_combos = @anagram.word_combos("me")
		true_perms		= @anagram.word_combos_to(all_word_combos)
		assert false if true_perms
	end
end