class Local < ApplicationRecord
	has_many :tours
	validates :local_name, presence: true
end
