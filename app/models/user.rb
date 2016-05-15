class User < ActiveRecord::Base

	validates_presence_of :login
	validates_presence_of :password
	has_secure_password

	validates :login, :uniqueness => true

	has_many :stocks

end
