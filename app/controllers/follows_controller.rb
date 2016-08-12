class FollowsController < ApplicationController

	def create
		Follow.create(followed_id: params[:folloed_id],
					  follower_id: current_user.id)
		redirect_to :back
	end

	def destroy
		Follow.find_by(followed_id: params[:id],
					   follower_id: current_user.id).destroy
		redirect_to :back
	end
end
