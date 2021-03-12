class CheesesController < ApplicationController

  def new
    @cheese = Cheese.new
    @cheese.build_style
  
  end

  def create 

  end 

  def show 
  
  end 

  def edit 
  end 

  def update 
  end 



end
