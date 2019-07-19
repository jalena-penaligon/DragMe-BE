class Api::V1::Venues::ShowsController < ApplicationController
  def index
    venue = Venue.find(params[:id])
    render status: 200,
    json: {
      venue: venue,
      shows: venue.shows
    }
  end
end
