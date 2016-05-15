require "rails_helper"

feature "Session - Login" do

	scenario "success", js:true do
		user = create(:user)
		login(user.login, user.password)
		expect(current_path).to eq root_path
		expect(page).to have_content "Bem-vindo!" 
	end

	scenario "invalid", js:true do
		login("anyLogin", "1111")
		expect(page).to have_content "Usuário não encontrado" 
	end

end