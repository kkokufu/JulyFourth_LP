class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def login_form

  end  

  def login
    @user = User.find_by(name:params[:name], password:params[:password])

    if @user
      flash[:notice] = "ログインしました"
      redirect_to("/posts/index")
    else
      @error_message = "アカウントまたはパスワードが間違っています"
      render("users/login_form")
    end    
  end  
end
