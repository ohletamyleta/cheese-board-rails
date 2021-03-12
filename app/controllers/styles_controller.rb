class StylesController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index 
    @styles = Style.alpha
  end
  

end
