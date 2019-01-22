class News < ApplicationRecord
	mount_uploader :image, ImageUploader
  validates :new_name, presence: true
  validates :url, presence: true

  validates :image, file_size: { less_than: 1.megabytes }
end
