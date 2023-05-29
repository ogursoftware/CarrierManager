class UsersController < ApplicationController
  before_action :set_user, :authorize_admin,only: %i[ show edit update destroy ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(load_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @users =User.all
  end

  def show
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
  
    
    params.require(:user).permit(:email, :password, :encrypted_password, :reset_password_token,:role)
    end

    def check_admin
      if current_user&.admin?
       
      end
    end 
  
   
end
