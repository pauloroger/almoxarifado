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

    scenario "invalid - material has stock", js: true do

        user = create(:user)
        create(:material)
        create(:stock, :amount => 10, :action => false, :user_id => 1, :material_id => 1)

        login(user.login, user.password)

        visit materials_path

        click_link "Excluir"

        #Close alert pop-up
        confirm

        sleep 1

        expect(page).to have_content "Não é possível excluir o registro pois existem stocks dependentes"        
    

    end

end