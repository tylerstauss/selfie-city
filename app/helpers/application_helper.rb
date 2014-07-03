module ApplicationHelper
	def total_selfies
		Photo.count
	end
end
