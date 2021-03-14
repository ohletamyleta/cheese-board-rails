class AddStyleToCheeses < ActiveRecord::Migration[6.1]
  def change
    add_column :cheeses, :style, :string
  end
end
