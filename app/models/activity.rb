class Activity < ApplicationRecord
  belongs_to :weekly_report
  validates :from, :to, presence: true
  validates :action, presence:true
end
