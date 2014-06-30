class PhotosController < ApplicationController
	def index
		# client = Instagram::Client.new
		# @results = client.get_posts
		render json: Photo.all
	end
end
