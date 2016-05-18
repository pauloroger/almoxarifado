class MaterialsController < ApplicationController

  def index

    stockObj = Stock.new

    #List Materials and Total Stock
    @grid = MaterialsGrid.new(params[:materials_grid])    
    
    @grid.scope { |scope|
      scope.joins('LEFT OUTER JOIN stocks ON stocks.material_id = materials.id').group(:material_id).page(params[:page])
    }

    @grid.column(:name, :header => "Materiais")

    @grid.column(:amount, :header => "Quantidade") do |obj|
      stockObj.totalAmount(obj)
    end

    @grid.column(:actions, :html => true, :header => "Ações") do |record|
        render "datagrid_actions", :object => record
    end
	
  end

  def new
  	@material = Material.new
  end

  def create

  	@material = Material.new materials_params

  	if @material.save
      gflash :success => "Salvo com sucesso"
      redirect_to materials_path
    else
      gflash :now, :error => @material.errors.full_messages.join('<br>')
      render 'new'
    end

  end

  def edit
    
    @material = Material.find params[:id]
    
    #List Material Log
    @grid = StocksGrid.new(params[:stocks_grid])
    
    @grid.scope { |scope|
      scope.where(:material_id => params[:id]).order(:created_at).page(params[:page])
    }

    @grid.column(:material_id, :header => "Material") do
      if self.material
        self.material.name
      end
    end

    @grid.column(:user_id, :header => "Usuário") do
      if self.user
        self.user.login
      end
    end

    @grid.column(:amount, :header => "Quantidade")

    @grid.column(:action, :header => "Ação") do
        if self.action = 0
          "Entrada"
        else
          "Retirada"
        end
    end

    @grid.column(:created_at, :header => "Data") do |model|
      format(model.created_at.strftime("%d/%m/%Y - %H:%m:%S"))
    end

  end

  def update

    @material = Material.find params[:id]

    if @material.update materials_params
      gflash :success
      redirect_to materials_path
    else
      gflash :now, :error => @material.errors.full_messages.join('<br>')
      render :edit
    end

  end

  def destroy

    @material = Material.find params[:id]

    if @material.destroy
      gflash :success
      redirect_to materials_path
    else
      gflash :now, :error => @material.errors.full_messages.join('<br>')
      redirect_to materials_path
    end


  end


  private
  def materials_params
  	params.require(:material).permit(:name)
  end

end
