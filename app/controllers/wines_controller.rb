class WinesController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index 
    @wines = Wine.all.order_alpha
  end



end
