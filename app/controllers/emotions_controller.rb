class EmotionsController < ApplicationController
	def emotion
		@emotion = Emotion.find_by(name: params[:name])
		@posts = @emotion.posts.order('created_at DESC').paginate(:page => params[:page])
	end
	def index
		@emotions = Emotion.all
	end

end
