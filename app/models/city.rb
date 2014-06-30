class City < ActiveRecord::Base
	has_many :photos
	attr_accessible :name
	validates_uniqueness_of :name
end