class HomeController < ApplicationController
  def index
  	@count = Photo.count
  	@cities = City.order('count desc').limit(12)
  end

  def about
  end

  def contact
  end

  def terms
  end
end
