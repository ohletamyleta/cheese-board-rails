class CreateCheeses < ActiveRecord::Migration[6.1]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.string :color
      t.string :texture
      t.text :notes

      t.timestamps
    end
  end
end
