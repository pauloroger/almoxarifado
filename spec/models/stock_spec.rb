require 'rails_helper'

RSpec.describe Stock, type: :model do
  
	it "has a valid factory" do
		expect(create(:stock)).to be_valid
	end

	context "validations" do
		it {should validate_numericality_of(:amount).is_greater_than_or_equal_to(0)}
	end

	context "relations" do
		it { should belong_to :material }
		it { should belong_to :user }
	end

	context "invalid removal" do
		
	end

end
