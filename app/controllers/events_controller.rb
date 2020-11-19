class EventsController < ApplicationController
  def index
    @events = Event.all
    @coming_events = Event.where("start_time>?", Date.today).order("start_time").limit(5)
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    Event.create(event_parameter)
    redirect_to("/events/index")
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to blogs_path, notice:"削除しました"
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(blog_parameter)
      redirect_to blogs_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def event_parameter
    params.require(:event).permit(:amb_name1, :amb_img1, :amb_content1, :amb_name2, :amb_img2, :amb_content2, :category, :start_time)
  end
  
end

