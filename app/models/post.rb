class Post < ActiveRecord::Base
	belongs_to :user
	validates :category, :job_type, :title, :description, :location, :salary_offered, :required_experience, :required_profile, presence: true, on: :create
end
