class StocksController < ApplicationController

  def new
  	@stock = Stock.new
  end

  def create

    @stock = Stock.new stocks_params

    if ValidateTotal(@stock)

      if @stock.save
        gflash :success => "Salvo com sucesso"
        redirect_to materials_path
      else
        gflash :now, :error => @material.errors.full_messages.join('<br>')
        render 'new'
      end

    else
      gflash :now, :error => "O estoque não pode ficar negativo!"
      render 'new'
    end

  end

  def ValidateTotal(objStock)

    #Validate total stock
    if (objStock.totalAmount(@stock.material_id) - objStock.amount) < 0
      return false
    end

    return true
  end

  private
  def stocks_params
  	params.require(:stock).permit(
  		:amount,
      :action,
  		:user_id,
  		:material_id
  	)
  end

end
