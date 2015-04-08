class UsersController < ApplicationController
	before_filter :authorize_admin
	before_action :set_user, only: [:show, :edit, :update]
	
	def index
		@users = User.all
	end
	
	def new
	  @user = User.new
	end

	def create
	  @user = User.new(user_params)
	  if @user.save
	    # session[:user_id] = @user.id
	    redirect_to root_url, notice: @user.full_name + " was successfully registered"
	  else
	    render "new"
	  end
	end

	private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :admin, :phone)
  end
end
