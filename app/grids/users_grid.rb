class UsersGrid

	include Datagrid

	scope do
		User.order(:login)
	end

	column(:login, :header => "Usuários")
	column(:created_at, :header => "Data de Cadastro") do |model|
		format(model.created_at.strftime("%d/%m/%Y - %H:%m:%S"))
	end


end