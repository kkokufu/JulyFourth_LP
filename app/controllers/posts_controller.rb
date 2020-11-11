class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id:params[:id])
  end  

  def new
  end  

  def create
    @post = Post.new(id:params[:id])
    @post.save
    
    if @post.save
      redirect_to("/posts/new")
      flash[:notice] = "参加申し込みありがとうございました"
    else
      redirect_to("/posts/new")
      flash[:notice] = "正しくアカウントを入力してください"
    end    
     
  end  
end
