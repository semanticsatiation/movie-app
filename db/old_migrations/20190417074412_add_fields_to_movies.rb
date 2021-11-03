class AddFieldsToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :title, :string
    add_column :movies, :rating, :string
    add_column :movies, :total_gross, :decimal
    add_column :movies, :description, :text
    add_column :movies, :released_on, :date
    add_column :movies, :cast, :string
    add_column :movies, :director, :string
    add_column :movies, :duration, :string
    add_column :movies, :image_file_name, :string, default: ""
    add_column :movies, :trailer, :string
  end
end
