require "rails_helper"

feature "Create Material", js: true do

	background do
    user = create :user
    login(user.login, user.password) 
  end

  scenario "success", js: true do
    name = Faker::Commerce.product_name

  	visit new_material_path

  	fill_in "material[name]", with: name

    click_button "Salvar"
    sleep 1

    expect(Material.last.name).to eq name
    expect(page).to have_content "Salvo com sucesso"

  end

  scenario 'invalid', js: true do

    visit new_material_path
   
    click_button "Salvar"

    expect(page).to have_content "Nome não pode ficar em branco" 
  end


end