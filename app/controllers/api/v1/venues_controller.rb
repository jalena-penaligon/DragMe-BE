class Api::V1::VenuesController < ApplicationController

  def index
    render json: Venue.all
  end

  def show
    render json: Venue.find(params[:id])
  end

  def create
    venue = Venue.new(venue_params)
    if venue.save
      render json: venue
    else
      render status: 409,
      json: {
        status: "error",
        message: "A venue with that Google ID already exists."
      }
    end
  end

  def destroy
    venue = Venue.find(params["id"])
    if venue.destroy
      render status: 204,
      json: {
        status: "success",
      }
    end
  end

end

private

  def venue_params
    params.require(:venue).permit(:venue_name, :venue_google_id)
  end
