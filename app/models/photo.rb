class Photo < ActiveRecord::Base
	validates_uniqueness_of :instagram_id
	attr_accessible :url, :latitude, :longitude, :city, :instagram_id, :instagram_text
end

