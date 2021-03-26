class Support < ApplicationRecord
  validates :caller, :format => { :with => /\A(\+25)?[0-9]{10}\z/, :message => "Not a valid 10-digit telephone number" }
end
