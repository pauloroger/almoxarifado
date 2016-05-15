require 'rails_helper'

RSpec.describe Material, type: :model do
  
	it "has a valid factory" do
		expect(create(:material)).to be_valid
	end
	
	context "validations" do
		it { should validate_presence_of :name }
		it { should validate_uniqueness_of :name }
	end

	context "relations" do
		it { should have_many :stocks }
	end

end
