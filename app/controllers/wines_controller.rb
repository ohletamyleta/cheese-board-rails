class WinesController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index 
    @wines = Wine.all.order_alpha
  end

  def new 
    @wine = Wine.new
  end

  def create 
    wine = Wine.create(wine_params)
    redirect_to 

  end

  def show 
    @wine = Wine.find(params[:id])
  end


  private 

  def wine_params
    params.require(:wine).permit(:varietal, :region, cheese_ids: [], cheese_attributes: [:name])
  end

end
