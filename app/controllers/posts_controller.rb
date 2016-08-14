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
		@post = Post.new
		@posts = Post.where(user: current_user).paginate(:page => params[:page])
	end

	def timeline
		@user = User.find(params[:id])
		@posts = Post.where(user: @user).paginate(:page => params[:page])
	end

	def newsfeed
		@posts = Post.paginate(:page => params[:page])
	end

private
	def post_params
		params.require(:post).permit(:title, :text, :emotion_id, :photo)
	end
end
