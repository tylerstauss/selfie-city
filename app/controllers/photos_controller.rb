class PhotosController < ApplicationController
	def index
		# client = Instagram::Client.new
  #   client.get_posts
		render json: Photo.order('created_at desc').limit(5000)
	end

	def show
		@comment = Comment.new
		@photo = Photo.find(params[:id])
		@comments = @photo.comments
	end

end
