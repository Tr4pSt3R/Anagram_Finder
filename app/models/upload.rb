class Upload < ActiveRecord::Base

	# after_create :write_uploaded_file
	# @file_contents

	FILE_STORE = "./upload/dictionary_files/"
	# Aim: Reads a dictionary File
	# Params: path=file path of the file to be read, expecting a textfile
	# TODO: Remove default path
	def readfile(path=(FILE_STORE + 'dictionary.txt'))
		dictionary_entry = IO.readlines(path) if File::exists?(path)
		return dictionary_entry
	end

	# def uploaded_file=(input)
	# 	@file_contents = input.content_type
	# 	self.filename = input.original_filename
	# end

	# def uploaded_file
	# 	self.filename
	# end

	# def contents
	# 	File.open(File.join(self.filepath, self.filename))
	# end

	#
	def write_uploaded_file(uploaded_file, data)
		# contents = @file_contents.read
		#define file storage path
		filename = data['filename']
		path = File.join(Upload::FILE_STORE, filename)
		# write the file
		File.open(path, "wb") { |file| file.write(uploaded_file.read) }
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
