class AmbassadorsController < ApplicationController
  def show
    @ambassador = Event.find_by(id:params[:id])
  end

  def show2
    @ambassador = Event.find_by(id:params[:id])
  end

  def edit
    @ambassador =Event.find_by(id:params[:id])
  end
  
  def edit2
    @ambassador =Event.find_by(id:params[:id])
  end

  def update
    @ambassador = Event.find_by(id: params[:id])

    if params[:amb_content1]
      @ambassador.amb_content1 = params[:amb_content1]
    elsif params[:amb_content2]
      @ambassador.amb_content2 = params[:amb_content2]
    end
    
    if params[:amb_img1]
      @ambassador.amb_img1 = "#{@ambassador.id}.jpg"
      image1 = params[:amb_img1]
      File.binwrite("public/amb_images/#{@ambassador.amb_img1}", image1.read)
    elsif params[:amb_img2]
      @ambassador.amb_img2 = "#{@ambassador.id}.jpg"
      image2 = params[:amb_img2]
      File.binwrite("public/amb_images/#{@ambassador.amb_img2}", image2.read)
    end
    
    if @ambassador.save
      flash[:notice] = "画像と紹介文章を追加しました"
      redirect_to("/events/index")
    else
      flash[:notice] = “正しく入力してください”
    end
  end
end
