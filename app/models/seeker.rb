class Seeker < ActiveRecord::Base
	#attr_accessible :current_user.id
	belongs_to :user

	validates :firstname, :lastname, :contact, :current_location, :dob, :permanent_address, :nationality, :gender, presence: true
	validates :photo, presence: true, on: :create
	mount_uploader :photo, PictureUploader
end
