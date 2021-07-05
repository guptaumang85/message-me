class User < ApplicationRecord
	
	has_many :messages
	has_secure_password

	validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :username, presence: true, uniqueness: true, length: { maximum: 20 }	
end
