class User < ActiveRecord::Base

	validates_presence_of :login
	has_secure_password

	validates :login, :uniqueness => true

	has_many :stocks

end
