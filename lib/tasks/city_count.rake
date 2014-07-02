namespace :city do
  task :count => :environment do
  	cities = City.all
  	cities.each do |city|
  		city.count = city.photos.count
  		p city.count
  		city.save
  	end
  end
end