class InfluencersController < ApplicationController
  def new
    @influencer = Influencer.new
  end  
  def create
    Influencer.create(influencer_parameter)
    redirect_to("/events/index")
  end

  private

  def influencer_parameter
    params.require(:influencer).permit(:event_name, :account, :category)
  end
end
