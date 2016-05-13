class Stock < ActiveRecord::Base
  
  belongs_to :material
  belongs_to :user

  validates_numericality_of :amount, greater_than_or_equal_to: 0


end
