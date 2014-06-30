class PhotosController < ApplicationController
	def index
		client = Instagram::Client.new
		@results = client.get_posts
	end
end
