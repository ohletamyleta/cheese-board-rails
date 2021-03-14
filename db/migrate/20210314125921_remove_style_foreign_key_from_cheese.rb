class RemoveStyleForeignKeyFromCheese < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :cheeses, :styles
  end
end
