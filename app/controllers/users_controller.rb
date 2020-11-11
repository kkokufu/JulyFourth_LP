class UsersController < ApplicationController

  before_action :authenticate_user, {only: [:index]}
  
  def index
    @users = User.all
  end

  def login_form

  end  

  def login
    @user = User.find_by(name:params[:name], password:params[:password])

    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/posts/index")
    else
      @error_message = "アカウントまたはパスワードが間違っています"
      render("users/login_form")
    end    
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/events/index")
  end  
end
