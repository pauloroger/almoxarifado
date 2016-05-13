require 'rails_helper'

describe User do
	it "has a valid factory" do
		expect(create(:user)).to be_valid
	end

	it { should validate_presence_of :login }
	it { should have_secure_password }

end
