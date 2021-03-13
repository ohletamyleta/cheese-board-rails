class WinesController < ApplicationController
  before_action :redirect_if_not_logged_in
  before_action :set_wine, only:[:show, :edit, :update]

  def index 
    @wines = Wine.all.order_alpha
  end

  def new 
    @wine = Wine.new
  end

  def create 
    @wine = Wine.create(wine_params)
    if @wine.save
    redirect_to wine_path(@wine)
    else
    render :new
    end 
  end

  def show 
    @wine = Wine.find(params[:id])
  end

  def edit 
  end 

  def update 

  end 

  private 

  def wine_params
    params.require(:wine).permit(:varietal, :region, cheese_ids: [], cheese_attributes: [:name])
  end

  def set_wine 
    @wine = Wine.find_by_id(params[:id])
    redirect_to wine_path if !@wine
  end
end
