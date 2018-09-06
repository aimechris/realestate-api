class Listimage < ApplicationRecord
  # Association
  belongs_to :listing
  # validation
  validates_presence_of :image
  # image mount
  mount_uploader :image, FileUploader
end
