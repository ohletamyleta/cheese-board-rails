class WinesController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index 
    @wines = Winee.all.order_alpha
  end



end
