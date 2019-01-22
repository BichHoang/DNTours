class User < ApplicationRecord
	validates :name, :presence => true, :uniqueness => true #kiem tra ten da ton tai hay chua
	has_secure_password #ma hoa pass
end
