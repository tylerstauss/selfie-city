class Photo < ActiveRecord::Base
	validates_uniqueness_of :instagram_id
end

