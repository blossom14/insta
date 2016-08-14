class EmotionsController < ApplicationController
	def emotion
		@emotion = Emotion.find_by(name: params[:name])
		@posts = @emotion.posts
	end
	def index
		@emotions = Emotion.find_by(user: current_user)
	end

end
