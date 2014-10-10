class PostsController < ApplicationController
	layout "employer_home"

	def new
		@post = Post.new
	end

	def create
		@post = current_user.posts.new(detail_params)
		if @post.save
			redirect_to home_employers_path
		else
			render 'new'
		end
	end
	
	protected
	def detail_params
		params.require(:post).permit(:category, :job_type, :title, :description, :location, :salary_offered, :required_experience, :required_profile)
	end
end
