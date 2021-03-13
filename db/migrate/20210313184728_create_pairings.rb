class CreatePairings < ActiveRecord::Migration[6.1]
  def change
    create_table :pairings do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :cheese, null: false, foreign_key: true

      t.timestamps
    end
  end
end
