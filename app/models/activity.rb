class Activity < ApplicationRecord
  belongs_to :weekly_report
  validates :from, presence: true
  validates :action, presence: true
  validates :site, presence: true
  validates :to, presence: true
end
