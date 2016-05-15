require "rails_helper"

feature "Create User", js: true do

	background do
    user = create :user
    login user.login, user.password
  end

  scenario "success", js: true do
    login = Faker::Internet.user_name
    pass = Faker::Internet.password

  	visit new_user_path

  	fill_in "user[login]", with: login
    fill_in "user[password]", with: pass

    click_button "Salvar"
    sleep 1

    expect(User.last.login).to eq login

    expect(page).to have_content "Salvo com sucesso"

  end

  scenario 'invalid', js: true do
    visit new_user_path
  
    click_button "Salvar"
    expect(page).to have_content "Login não pode ficar em branco" 
    expect(page).to have_content "Senha não pode ficar em branco" 

    fill_in "user[login]", with: "asd"
    expect(page).to have_content "Senha não pode ficar em branco" 

    fill_in "user[password]", with: "asd"
    expect(page).to have_content "Login não pode ficar em branco" 

  end

end