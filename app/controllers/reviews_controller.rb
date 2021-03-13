class ReviewsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
  end

  def create 
  end

  def show 
    @review = Review.find_by_id(params[:id])
  end 

  def index 
  end


  private 

  def review_params
    params.require(:review).permit(:cheese_id, :title, :blocks, :content)
  end  


end
