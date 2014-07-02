class CityController < ApplicationController
	def index
		@cities = City.order('name asc')
	end

	def show
		@city = City.find(params[:id])
		@photos = @city.photos.order('created_at desc')
	end

end