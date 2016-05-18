class Stock < ActiveRecord::Base
  
  belongs_to :material
  belongs_to :user

  validates_numericality_of :amount, greater_than_or_equal_to: 0

  def totalAmount(materialId)
    
    entradas = Stock.where(:material_id => materialId, :action => false).sum(:amount)
    saidas = Stock.where(:material_id => materialId, :action => true).sum(:amount)
    return entradas - saidas

  end


end
