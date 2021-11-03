class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.string :category
      t.string :image_file_name
      
      t.timestamps
    end
  end
end
