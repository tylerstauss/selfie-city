class CommentsController < ApplicationController
	def create
		comment = Comment.new(name: params[:comment][:name], content: params[:comment][:content], photo_id: params[:comment][:photo_id])
		if comment.save
			render nothing: true
		else
			"Please make sure you have a name and comment"
		end
	end
end