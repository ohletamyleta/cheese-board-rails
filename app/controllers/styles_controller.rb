class StylesController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index 
    @styles = Style.all.order_alpha
  end


end
