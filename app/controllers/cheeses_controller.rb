class CheesesController < ApplicationController

  before_action :set_cheese, only:[:show, :edit, :update]
  before_action :redirect_if_not_logged_in


  def new
    @cheese = Cheese.new
    @cheese.build_style
  
  end

  def create 
    @cheese = Cheese.new(cheese_params)
    @cheese.user_id = session[:user_id]
    @cheese.build_style if !@cheese.style
    if @cheese.save 
      redirect_to cheese_path(@cheese)
    else
    render :new
    end 
  end 

  def show 
    @cheese = Cheese.find_by_id(params[:id])
  end 

  def edit 
  end 

  def update 
    
  end 

private

  def cheese_params
    params.require(:cheese).permit(:name, :color, :texture, :notes, :style_id, style_attributes: [:name, :details])
  end

  def set_cheese
    @cheese = Cheese.find_by(params[:id])
    redirect_to cheese_path if !@cheese 
  end


end
