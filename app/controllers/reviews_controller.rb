class ReviewsController < ApplicationController

  before_action :require_signin

  before_action :set_movie

  def index
    @reviews = @movie.reviews
    @page = "#{@reviews.size} #{'review'.pluralize(@reviews.size)} for \"#{@movie.title}\""
    @return_phrase = "Return to #{@movie.title}"
    @return_link = movie_path(@movie)
  end

  def new
    @review = @movie.reviews.new
    @page = "new review for \"#{@movie.title}\""
    @return_phrase = "Return to all #{@movie.title} reviews"
    @return_link = movie_reviews_path(@movie)
  end

  def create
    @review = @movie.reviews.new(review_params)
    @review.user = current_user
    @review.save ? (redirect_to movie_reviews_path(@movie), notice: "Thanks for your review!") : (render :new)
  end

  def edit
    @review = @movie.reviews.find(params[:id])
    @page = "updating review for \"#{@movie.title}\""
    @return_phrase = "Return to all #{@movie.title} reviews"
    @return_link = movie_reviews_path(@movie)
  end

  def update
    @review = @movie.reviews.find(params[:id])
    @review.update(review_params) ? (redirect_to movie_reviews_path, notice: "Your review has been updated successfully!") : (render :edit)
  end

  def destroy
    @movie.reviews.find(params[:id]).destroy
    redirect_to movie_reviews_path, alert: "Your comment for #{@movie.title} has been deleted!"
  end


private
  def review_params
    params.require(:review).permit(:stars, :comment)
  end

  def set_movie
    @movie = Movie.find_by!(slug: params[:movie_id])
  end

end
