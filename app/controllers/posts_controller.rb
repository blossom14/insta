class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user = current_user
		@post.save
		redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.all
	end

	def timeline
		@user = User.find(params[:id])
		@posts = Post.where(user: @user)
	end


private
	def post_params
		params.require(:post).permit(:title, :text, :emotion_id, :photo)
	end
end
