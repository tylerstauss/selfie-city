class HomeController < ApplicationController
  def index
  	@cities = City.order('count desc').limit(10)
  end

  def about
  end

  def contact
  end

  def terms
  end
end
