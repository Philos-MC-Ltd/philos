class Internship < ApplicationRecord
  enum gender: [ :male, :female]
  has_one_attached :cv
  has_one_attached :id_card
  validates :first_name,
            :last_name,
            :phone,
            :gender,
            :cv,
            :id_card, presence: true
  validates :email,uniqueness:true, presence:true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
