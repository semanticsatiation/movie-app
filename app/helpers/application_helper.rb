module ApplicationHelper
  def genre_prev_page
    Genre.pluck(:category).any?{|x| return x if url_for(:back).include?(x)}
  end

  def page_title
    if content_for?(:title)
      "Movie Studios - #{content_for(:title)}"
    else
      "Movie Studios"
    end
  end
end
