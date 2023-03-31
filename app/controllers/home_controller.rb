class HomeController < ApplicationController
  def index
    
  end
    
  def index2

  end

  def about

  end
  
  def login

  end

  def search
    if params[:search].blank?
      redirect_to carriers_path and return
    else
      @parameter =params[:search].downcase
      @carrier_results = Carrier.where('name LIKE?',"%#{parameter}%")
      @kadere_results = Kaderes.all.where('name LIKE?',"%#{parameter}%")
    
    end
  end 
  
    
end
