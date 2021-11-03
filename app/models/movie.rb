class Movie < ApplicationRecord

  has_many :characterizations, dependent: :destroy
  has_many :genres, through: :characterizations

  has_many :reviews, dependent: :destroy

  has_many :favourites, dependent: :destroy
  has_many :fans, through: :favourites, source: :user



  SORT = ["Default (alphabetical)", "Recently Released", "Upcoming", "Best Rated", "Worst Rated"]

  RATINGS = %w(NR G PG PG-13 R NC-17)

  before_validation :generate_slug

  validates :title, presence: true, uniqueness: true

  validates :slug, uniqueness: true

  validates :trailer, :released_on, :duration, :director, :cast, :image_file_name, presence: true

  validates :description, length: {minimum: 25}

  validates :total_gross, numericality: {greater_than_or_equal_to: 0}

  validates :image_file_name, allow_blank: true, format: {
    with:    /\w+\.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
  }

  validates :rating, inclusion: {in: RATINGS}


  scope :released, -> { where("released_on < ?", Date.today).order("released_on DESC ") }

  scope :rated, -> (rated) { released.where(rating: rated) }

  scope :upcoming, -> { where("released_on > ?", Date.today).order("released_on") }

  scope :recently_released, -> { where("released_on BETWEEN ? AND ?", Date.today.prev_month, Date.today).order("released_on desc") } #monthly

  scope :best_rated, -> { joins(:reviews).merge(group('movies.id').having('AVG(reviews.stars) >= 4')).order('AVG(reviews.stars) DESC') }

  scope :worst_rated, -> { joins(:reviews).merge(group('movies.id').having('AVG(reviews.stars) <= 2')).order('AVG(reviews.stars)') }

  scope :recent, -> (max = 5 ){ released.limit(max) }


  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end

  def flop?
    reviews.average(:stars) < 3
  end

  def self.default_order
    order(:title)
  end

  def average_stars
    reviews.average(:stars)
  end

  def recent_reviews
    reviews.order("created_at desc").limit(2)
  end

  def any_reviews?
    recent_reviews.any?
  end

  def no_reviews?
    average_stars.nil?
  end

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= title.parameterize if title
  end

end
