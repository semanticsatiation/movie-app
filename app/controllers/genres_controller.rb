class GenresController < ApplicationController

  before_action :set_genre, only: [:show, :edit, :destroy]

  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]


  def index
    @genres = Genre.all.order(:category)
    @page = "all genres"
    @return_phrase = "Return to all movies"
    @return_link = root_path
  end

  def show
    if params[:sort]
      @page = "showing all #{params[:sort]} #{@genre.category.titleize} movies"
      case params[:sort]
        when "Default (alphabetical)"
          @movies = @genre.movies.default_order
          @page = "showing #{@movies.size} #{@genre.category} #{'movie'.pluralize(@movies.size)}"
        when "Recently Released"
          @movies = @genre.movies.recently_released
        when "Upcoming"
          @movies = @genre.movies.upcoming
        when "Best Rated"
          @movies = @genre.movies.best_rated
        when "Worst Rated"
          @movies = @genre.movies.worst_rated
      end
    elsif params[:search]
      @movies = @genre.movies.search(params[:search]).order(:title)
      @search_info = @genre.category.titleize
      @page = "showing #{@movies.size} #{@genre.category} #{'movie'.pluralize(@movies.size)}"
    else
      @movies = @genre.movies.default_order
      @search_info = @genre.category.titleize
      @page = "showing #{@movies.size} #{@genre.category} #{'movie'.pluralize(@movies.size)}"
    end
    @return_phrase = "Return to all genres"
    @return_link = movies_genres_path
  end

  def new
    @genre = Genre.new
    @page = "creating a new genre"
    @return_phrase = "Return to all genres"
    @return_link = movies_genres_path
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save ? (redirect_to movies_genres_path, notice: "#{@genre.category.titleize} has been added to genres!") : (render :new)
  end

  def edit
    @page = "updating the #{@genre.category} genre"
    @return_phrase = "Return to all genres"
    @return_link = movies_genres_path
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params) ? (redirect_to movies_genres_path, notice: "The #{@genre.category.titleize} genre has been updated!") : (render :edit)
  end

  def destroy
    @genre.destroy
    redirect_to movies_genres_path, alert: "\"The #{@genre.category.titleize} genre has been deleted!\""
  end

private
  def genre_params
    params.require(:genre).permit(:category, :image_file_name)
  end

  def set_genre
    @genre = Genre.find_by(category: params[:id])
  end


end
