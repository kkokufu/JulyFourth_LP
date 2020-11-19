class AmbassadorsController < ApplicationController
  def show
    @ambassador = Event.find_by(id:params[:id])
  end

  def show2
    @ambassador = Event.find_by(id:params[:id])
  end

end
