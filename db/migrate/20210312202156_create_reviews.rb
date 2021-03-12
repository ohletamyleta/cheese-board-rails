class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :blocks
      t.string :title
      t.text :content
      t.belongs_to, :user
      t.belongs_to :cheese, null: false, foreign_key: true

      t.timestamps
    end
  end
end
