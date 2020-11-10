class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    Event.create(blog_parameter)
    redirect_to blogs_path
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
    params.require(:event).permit(:event_name, :category, :start_time)
  end

end
end
