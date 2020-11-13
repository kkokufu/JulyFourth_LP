class InfluencersController < ApplicationController
  def create
    @influencer = influencer..new(event_name:params[: event_name], account:params[: account], category:params[: category])
    @influencer.save
  end
end
