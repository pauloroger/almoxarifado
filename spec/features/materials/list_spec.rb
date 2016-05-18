feature "List Materials" do

	scenario "success" do
		user = create :user
    create_list :material, 5
    login(user.login, user.password)

    visit materials_path
    expect(page).to have_link "Movimentar" 
    expect(page).to have_link "Editar" 
    expect(page).to have_link "Excluir"
	end

end