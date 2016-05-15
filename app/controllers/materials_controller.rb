class MaterialsController < ApplicationController

  def index
  	@grid = MaterialsGrid.new(params[:materials_grid]) do |scope|
			scope.page params[:page]
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

  	Material.destroy params[:id]
  	gflash :success
  	redirect_to materials_path

  end

  private
  def materials_params
  	params.require(:material).permit(:name)
  end

end
