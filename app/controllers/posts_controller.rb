class PostsController < ApplicationController

  before_action :authenticate_user, {only: [:index]}
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id:params[:id])
  end  

  def new
  end  

  def create
    @post = Post.new(account:params[:account])
    @post.save
    
    if @post.save
      redirect_to("/posts/flash")
      
    else
      redirect_to("/posts/flash2")
      
    end    
     
  end 
  
  def flash
     
  end  

  def flash2
  end  
end
