class PhotosController < ApplicationController
	def index
		render json: Photo.order('created_at desc')
	end

	def show
		render json: Photo.where(id: params[:id])
	end

end
