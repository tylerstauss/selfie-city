class City < ActiveRecord::Base
	has_many :photos
	attr_accessible :name, :count, :country, :latitude, :longitude
	validates_uniqueness_of :name
end