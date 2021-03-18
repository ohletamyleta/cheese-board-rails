class ReviewsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    if @cheese = Cheese.find_by_id(params[:cheese_id])
      @review = @cheese.reviews.build
    else
      @review = Review.new
    end 
  end

  def create 
    @review = current_user.reviews.build(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end 
  end

  def show 
    @review = Review.find_by_id(params[:id])
  end 

  def index 
    if @cheese = Cheese.find_by_id(params[:cheese_id])
      @reviews = @cheese.reviews 
    else 
      @reviews = Review.all
    end 
  end

  def top_cheeses
    @reviews = Review.top_cheeses
    render :index
  end 
    
  private 

  def review_params
    params.require(:review).permit(:cheese_id, :title, :blocks, :content)
  end  


end
