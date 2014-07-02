class Comment < ActiveRecord::Base
	validates_presence_of :name, :content
	belongs_to :photo
	attr_accessible :name, :content, :photo_id
end