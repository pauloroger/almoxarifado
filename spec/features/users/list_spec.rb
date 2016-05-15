require 'rails_helper'

feature 'List users' do
	scenario 'succesfully list users' do
		user_main = create(:user)
		create_list :user, 3
		login(user_main.login, user_main.password)
		visit users_path
	end
end