require 'spec_helper'
# require 'ruby-debug'

describe Upload do 
	it "should read a dictionary file" do
		upload = Upload.new
		dictionary_entry = upload.readfile(Rails.root+'./upload/dictionary_files/dictionary.txt')
		
		if dictionary_entry
			assert true
		else
			assert fail
		end
	end
end