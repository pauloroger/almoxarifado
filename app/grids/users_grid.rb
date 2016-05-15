class UsersGrid

	include Datagrid

	scope do
		User.order(:login)
	end

	column(:login, :header => "Usuários")
	column(:created_at, :header => "Data de Cadastro")

end