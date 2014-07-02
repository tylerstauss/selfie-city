class Photo < ActiveRecord::Base
	belongs_to :city
	has_many :comments
	validates_uniqueness_of :instagram_id
	attr_accessible :url, :latitude, :longitude, :city, :instagram_id, :instagram_text, :city_name
end

