class Tour < ApplicationRecord
  mount_uploader :image, ImageUploader
  #mount_uploaders :attachments, ImageUploader

  belongs_to :local
  has_many :bookings

  

  validates :image, file_size: { less_than: 1.megabytes }
end
