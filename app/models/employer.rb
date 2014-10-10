class Employer < ActiveRecord::Base
	belongs_to :user
	validates :company_name, :company_type, :contact, :address, :doo, :country, :state, :city, :pincode, :total_employee, presence: true
	validates :icon, presence: true, on: :create
	mount_uploader :icon, PictureUploader
end
