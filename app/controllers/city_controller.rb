class CityController < ApplicationController
	def index
		@cities = City.order('name asc')
	end

	def show
		@city = City.find(params[:id])
		@photos = @city.photos.order('created_at desc')
		@photos_json = @photos.to_json
		p @photos_json
	end

	def getphotos
		p params
		@city = City.find(params[:id])
		render json: @city.photos
	end

end