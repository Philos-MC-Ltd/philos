class Service < ApplicationRecord
  mount_uploader :image, PictureUploader
end
