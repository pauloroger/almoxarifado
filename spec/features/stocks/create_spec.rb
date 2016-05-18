require "rails_helper"

feature "Handle stock", js: true do

	background do
    user = create(:user)
    login(user.login, user.password) 
  end

  let(:material) {create(:material)}

  scenario "success", js: true do

    create(:stock, :amount => 10, :action => false, :user_id => 1, :material_id => 1)

  	visit stock_handle_path material

  	fill_in "stock[amount]", with: 10
  	click_button "Salvar"
    sleep 1

    expect(Stock.last.amount).to eq 10
    expect(page).to have_content "Salvo com sucesso"

  end

  scenario "invalid - Negative stock", js: true do

    create(:stock, :amount => 20, :action => true, :user_id => 1, :material_id => 1)

  	visit stock_handle_path material

  	fill_in "stock[amount]", with: 10
  	click_button "Salvar"
    sleep 1

    expect(page).to have_content "O estoque não pode ficar negativo!"

  end


end