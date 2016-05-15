class Material < ActiveRecord::Base

	validates :name, :uniqueness => true
	validates_presence_of :name
	has_many :stocks



end
