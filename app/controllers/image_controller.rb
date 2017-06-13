class ImageController < ApplicationController

	def create
		response = {description: "", name: "", urlOrigin: "", pathFile: "", numberBeer: 0}
		response[:urlOrigin] = request[:urlImage].to_s.delete(' ')
		response[:pathFile] = request_save(request[:urlImage])
		render :json => response 
	end

	def request_save(image_data)
		require 'open-uri'
		size = image_data.length	
		extension = image_data[size-4...size]
		folderImage = 'images_request/' + rand_hash() + extension
		folderSave = 'public/' + folderImage
		loop do
			break if File.exists?(folderSave) != true
			folderImage = '/images_request/' + rand_hash() + extension	
		end
		begin
			open(folderSave, 'wb') do |file|
			  file << open(image_data).read
			end
		rescue OpenURI::HTTPError => ex
			folderImage = ""
			puts "ERROR REQUEST "+ex
		end
		folderImage
	end

	def rand_hash()
		Random.new_seed.to_s + (0...8).map { (65 + rand(26)).chr }.join
	end
end
