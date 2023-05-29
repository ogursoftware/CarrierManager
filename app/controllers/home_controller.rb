class HomeController < ApplicationController

  before_action :authorize_admin
  def index
   
  end
    
  def index2

  end

  def about

  end
  
  def login

  end

  def authorize_admin
    if current_user&.admin?
     
    end
  end  
  
    
end
