class ImageController < ApplicationController
	def index
		response = {description: "", name: ""}
		render :json => response 
	end
end
