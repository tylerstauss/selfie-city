class City < ActiveRecord::Base
	has_many :photos
	attr_accessible :name, :count
	validates_uniqueness_of :name
end