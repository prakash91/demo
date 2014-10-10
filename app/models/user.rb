class User < ActiveRecord::Base
  has_one :seeker, dependent: :destroy
  has_one :employer, dependent: :destroy
  has_many :resumes, dependent: :destroy
  has_many :posts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
