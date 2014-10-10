class Resume < ActiveRecord::Base
	belongs_to :user
	mount_uploader :attach_resume, PictureUploader

	validates :resume_heading, :functional_area, :current_company, :position, :key_skills, :total_experience, :expected_salary, :highest_qualification, :attach_resume, presence: true, on: :create
end
