require "rails_helper"

feature "Delete Material" do

	scenario "success", js: true do
		
		user = create :user

    create :material

    login(user.login, user.password)

    visit materials_path

    click_link "Excluir"

    #Close alert pop-up
    confirm

    sleep 1

    expect(Material.count).to be 0
    expect(page).to have_content "Removido com sucesso"

	end

end