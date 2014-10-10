class EmployersController < ApplicationController
	layout "employer_home"
	def index
	end

	def new
		@employer=Employer.new
	end

	def create
	  @employer = current_user.build_employer(values_employ)
		if @employer.save
			redirect_to @employer
		else
			render 'new'
		end
	end

	def edit
		@employer = current_user.employer(params[:id])
	end

	def update
		@employer = current_user.employer(params[:id])
		if @employer.update(values_employ)
			redirect_to @employer
		else
			render 'edit'
		end
	end

	def show
		@employer=current_user.employer(params[:id])
	end

	def home
		@employer=current_user.employer(params[:id])
	end

	private

	def values_employ
		params.require(:employer).permit(:icon, :company_name, :company_type, :contact, :address, :doo, :country, :state, :city, :pincode, :total_employee)
	end
end
