class Upload < ActiveRecord::Base
	# Aim: Reads a dictionary File
	# Params: path=file path of the file to be read, expecting a textfile
	def readfile(path)
		dictionary_entry = IO.readlines(path) if File::exists?(path)
		return dictionary_entry
	end

	# def self.save(upload)
	# 	name = upload['datafile'].original_filename
	# 	directory = "upload/dictionary_files"

	# 	# create the filepath
	# 	path = File.join(directory, name)

	# 	# write the file
	# 	File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
	# end
end
