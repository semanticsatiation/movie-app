class User < ApplicationRecord

  has_many :reviews, dependent: :destroy

  has_many :favourites, dependent: :destroy

  has_many :favourite_movies, through: :favourites, source: :movie

  has_secure_password

  validates :username, presence: true, format: /\A[A-Z0-9]+\z/i, uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :email, presence: true,
                    format: /\A\S+@\S+\z/,
                    uniqueness: {case_sensitive: false}
  validates :password, length: { minimum: 8, allow_blank: true }

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user && user.authenticate(password)
  end
end
