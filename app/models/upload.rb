# TODO: Is ftools required to be declared?
# require 'ftools'

class Upload < ActiveRecord::Base

	after_create :write_uploaded_file

	FILE_STORE = "./upload/dictionary_files/"
	# Aim: Reads a dictionary File
	# Params: path=file path of the file to be read, expecting a textfile
	# TODO: Remove default path
	def readfile(path=(FILE_STORE + 'dictionary.txt'))
		dictionary_entry = IO.readlines(path) if File::exists?(path)
		return dictionary_entry
	end

	def inputfile=(input)
		@file_contents = input
	end

	#
	def write_uploaded_file(data = nil)
		# 
		# contents = data || @file_contents.read

		path = File.join(Upload::FILE_STORE, self.filename)
		# write the file
		File.open(path, "wb") { |file| file.write() }
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
