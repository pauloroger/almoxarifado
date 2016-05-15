require "rails_helper"

feature 'Session - Logout', js: true do
	scenario 'success' do
		user = create(:user)
		login(user.login, user.password)
		logout()
		expect(page).to have_content "Até logo"
	end
end