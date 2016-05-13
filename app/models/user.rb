class User < ActiveRecord::Base

	validates_presence_of :login
	has_secure_password

end
