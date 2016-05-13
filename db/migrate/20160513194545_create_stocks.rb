class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :amount
      t.boolean :action
      t.references :material, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
