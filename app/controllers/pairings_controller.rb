class PairingsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index 
    @Pairings = Pairing.all.order_alpha
  end


end
