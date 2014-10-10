class ResumesController < ApplicationController
  layout "seeker_home"
  def new
    @resume=Resume.new
  end

  def index
     @resumes = current_user.resumes
  end
  
  def create
    @resume = current_user.resumes.new(detail_params)
    if @resume.save
      redirect_to @resume
    else
      render 'new'
    end
  end

  def edit
    @resume = current_user.resumes.find(params[:id])
  end

  def update
    @resume = current_user.resumes.find(params[:id])
    if @resume.update(update_params)
      redirect_to @resume
    else
      render 'edit'
    end
  end

  def show
    @resume = current_user.resumes.find(params[:id])
  end

  def destroy
    @resume = current_user.resumes.find(params[:id])
    @resume.destroy
    redirect_to resumes_path

  end

  private
  def detail_params
    params.require(:resume).permit(:resume_heading, :functional_area, :current_company, :position, :key_skills, :total_experience, :attach_resume, :expected_salary, :highest_qualification)
  end

  private
  def update_params
    params.require(:resume).permit(:resume_heading, :functional_area, :current_company, :position, :key_skills, :total_experience, :attach_resume, :expected_salary, :highest_qualification, :active)
  end
end
