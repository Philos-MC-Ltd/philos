class WeeklyReport < ApplicationRecord
  has_many :activities, dependent: :destroy
  belongs_to :user
  validates :done_at, presence: true
  accepts_nested_attributes_for :activities, reject_if: :all_blank,:allow_destroy => true
end
