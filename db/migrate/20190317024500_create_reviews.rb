class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :movie, foreign_key: true

      t.string :name
      t.integer :stars
      t.text :comment

      t.timestamps
    end
  end
end
