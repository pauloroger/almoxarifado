class MaterialsGrid

	include Datagrid

	scope do
		Material.order(:name)
	end

	# column(:name, :header => "Materiais")
	# column(:actions, :html => true, :header => "Ações") do |record|
 #      render "datagrid_actions", :object => record  
 #  end

end