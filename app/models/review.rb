class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  RANGE = [1, 2, 3, 4, 5]

  STARS = {
    1 => "⭐",
    2 => "⭐ ⭐",
    3 => "⭐ ⭐ ⭐",
    4 => "⭐ ⭐ ⭐ ⭐",
    5 => "⭐ ⭐ ⭐ ⭐ ⭐"
  }

  validates :comment, length: { minimum: 4 }

  validates :stars, inclusion: {
    in: RANGE,
    message: "must be between 1 and 5"
  }

end
