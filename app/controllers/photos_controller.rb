class PhotosController < ApplicationController
	def index
		render json: Photo.all
	end

	def show
		render json: Photo.where(id: params[:id])
	end

end
