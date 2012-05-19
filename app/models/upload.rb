class Upload < ActiveRecord::Base
	def readfile(path)
		dictionary_entry = IO.readlines(path)
		return dictionary_entry
	end
end
