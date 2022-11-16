class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.string :text
      t.references :restaurant, foreign_key: true, null: false

      t.timestamps
    end
  end
end
