class MoviesController < ApplicationController

  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    if params[:sort]
      case params[:sort]
        when "Default (alphabetical)"
          @movies = Movie.default_order
          @page = "now showing #{@movies.count} #{'movie'.pluralize(@movies.count)}"
        when "Recently Released"
          @movies = Movie.recently_released
          @page = "now showing #{params[:sort]} movies"
        when "Upcoming"
          @movies = Movie.upcoming
          @page = "now showing #{params[:sort]} movies"
        when "Best Rated"
          @movies = Movie.best_rated
          @page = "now showing #{params[:sort]} movies"
        when "Worst Rated"
          @movies = Movie.worst_rated
          @page = "now showing #{params[:sort]} movies"
      end
    elsif params[:search]
      @movies = Movie.search(params[:search]).order("id")
      @page = "now showing #{@movies.count} #{'movie'.pluralize(@movies.count)}"
    else
      @movies = Movie.default_order
      @page = "now showing #{@movies.count} #{'movie'.pluralize(@movies.count)}"
    end
  end

  def show
    @genres = @movie.genres
    @page = "showing \"#{@movie.title}\""
    @fans = @movie.fans

    if current_user
      @current_favourite = current_user.favourites.find_by(movie_id: @movie.id)
    end

    @return_phrase = "Return to all movies"
    @return_link = root_path
  end

  def edit
    @page = "updating \"#{@movie.title}\""
  end

  def update
    @movie.update(movie_params) ? (redirect_to movie_path(@movie), notice: "\"#{@movie.title}\" was successfully updated!") : (render :edit)
  end

  def new
    @movie = Movie.new
    @page = "adding a new movie"
    @return_phrase = "Return to all movies"
    @return_link = root_path
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save ? (redirect_to movie_path(@movie), notice: "\"#{@movie.title}\" has been successfully created!") : (render :new)
  end

  def destroy
    @movie.destroy
    redirect_to root_path, alert: "\"#{@movie.title}\" has been deleted!"
  end

private

  def set_movie
    @movie = Movie.find_by!(slug: params[:id])
  end

  def movie_params
    params.require(:movie).
           permit(:title, :rating, :description, :released_on, :total_gross,
             :director, :cast, :duration, :image_file_name, :trailer, genre_ids: [])
  end

end

# case params[:scope]
#   when "hits" then @movies = Movie.best_rated
#   when "flops" then @movies = Movie.worst_rated
#   when "upcoming" then @movies = Movie.upcoming
#   when "recent" then @movies = Movie.recent(2)
#   else
#     @movies = Movie.released
# end
