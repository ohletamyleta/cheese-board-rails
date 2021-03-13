module ReviewsHelper
  
  def display_header(review)
    if params[:cheese_id]
        content_tag(:h1, "Add a Review for #{review.cheese.name} -  #{review.cheese.style.name}")
    else
      content_tag(:h1, "Create a review")
    end
  end
end
