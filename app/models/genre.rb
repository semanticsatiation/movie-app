class Genre < ApplicationRecord

    before_save {category.downcase!}

    has_many :characterizations, dependent: :destroy
    has_many :movies, through: :characterizations

    validates :category, :image_file_name, presence: true
    validates :category, uniqueness: {
      case_sensitive: false,
      message: "already exists in genres!"
    }
    validates :image_file_name, format: {
      with: /\w+\.(gif|jpg|png)\z/i,
      message: "must reference a GIF, JPG, or PNG image"
    }


end
