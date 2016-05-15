require 'rails_helper'

describe User do
	it "has a valid factory" do
		expect(create(:user)).to be_valid
	end

	context "validations" do

		it { should validate_presence_of :login }
		it { should validate_presence_of :password }
		it { should validate_uniqueness_of :login }
		it { should have_secure_password }

	end
	
	context "relations" do

		it { should have_many :stocks }

	end

end
