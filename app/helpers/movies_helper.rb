module MoviesHelper

  def format_gross(movie)
    return "N/A" if movie.total_gross.zero?
    number_to_currency(movie.total_gross)
  end

  def updated_genres
    Genre.pluck(:category).zip(Genre.pluck(:id)).to_h.sort_by{|genre, id| genre}
  end

  def format_average_stars(movie)
    return "<span id='no_reviews_helper'>There seems to be no reviews for #{movie.title}!</span>".html_safe if movie.average_stars.zero?
    if movie.flop?
      "<span id='reviews_bad_helper'>FLOP!</span>".html_safe
    else
      "<span id='reviews_good_helper'>#{movie.average_stars.round(1)}</span> #{'star'.pluralize(movie.average_stars.round(1))}".html_safe
    end
  end

  def image_for(obj)
    # if obj.image_file_name.blank?
    #   image_tag("placeholder.png", :size => '260x180')
    # else
      image_tag(obj.image_file_name, :size => '300x400') #300x400 original size
    # end
  end

  def released?(movie)
    Date.today >= movie.released_on
  end

  def review_restriction(movie)
    if released?(movie)
      "<p>
        #{link_to("Be the first to review #{movie.title}!", new_movie_review_path(movie))}
      </p>".html_safe
    else
      "<h4 id='restriction_description'>
        This movie has not been released and will be reviewable in <span id='days_left'>#{(movie.released_on - Date.today).to_i}</span> days.
      </h4>".html_safe
    end
  end

  def review_restriction_movie_index(movie)
    if released?(movie)
      link_to("Review it first!", new_movie_review_path(movie))
    else
      "<span id='restriction_description_2'>reviewable in <span id='days_left'>#{(movie.released_on - Date.today).to_i}</span> days.</span>".html_safe
    end
  end

end
