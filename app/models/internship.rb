class Internship < ApplicationRecord
  enum gender: [ :male, :female]
  has_one_attached :cv
end
