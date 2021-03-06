class CheesesController < ApplicationController

  before_action :set_cheese, only:[:show, :edit, :update]
  before_action :redirect_if_not_logged_in

  def index 
    @cheeses = Cheese.order_alpha
  end 

  def new
    @cheese = Cheese.new
  end

  def create 
    @cheese = current_user.cheeses.build(cheese_params)
    if @cheese.save
      redirect_to cheese_path(@cheese)
    else
      render :new
    end
  end 

  def show 
    @reviews = @cheese.reviews 
  end 

  def edit 
  
  end 

  def update 
    if @cheese.update(cheese_params)
      redirect_to cheese_path(@cheese)
    else
    render :edit
    end 
  end 

private

  def cheese_params
    params.require(:cheese).permit(:name, :color, :texture, :notes, :style, :image)
  end

  def set_cheese
     @cheese = Cheese.find_by_id(params[:id])
    redirect_to cheese_path if !@cheese 
  end


end
