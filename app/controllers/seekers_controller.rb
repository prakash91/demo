class SeekersController < ApplicationController
	layout "seeker_home"
	def new
		@seeker=Seeker.new
	end

	def index
		@users = User.where.not(id: current_user.id)
	end

	def create
		@seeker = current_user.build_seeker(detail_params)
		if @seeker.save
			redirect_to @seeker
		else
			render :action => 'new'
		end
	end

	def edit
		@seeker= current_user.seeker(params[:id])
	end

	def update
		@seeker= current_user.seeker(params[:id])
		if @seeker.update(detail_params)
			redirect_to @seeker
		else
			render 'edit'
		end
	end

	def show
		@seeker= current_user.seeker(params[:id])
	end
	def home
		@seeker= current_user.seeker(params[:id])
    end
	private
    def detail_params
      params.require(:seeker).permit(:photo, :firstname, :lastname, :contact, :current_location, :dob, :permanent_address, :nationality, :gender)
    end
end
