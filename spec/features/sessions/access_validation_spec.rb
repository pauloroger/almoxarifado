require "rails_helper"

feature 'Access validation' do
	scenario 'Redirect to login when access Materials path when not logged' do
		visit materials_path
		expect(current_path).to eql new_session_path
	end
end