class HomeController < ApplicationController
  def index
  	@cities = City.order('count desc').limit(10)
  end
end
