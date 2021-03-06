class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

  enum gender: [ :male, :female]
  mount_uploader :picture, PictureUploader
  has_many :weekly_reports, dependent: :destroy
end
