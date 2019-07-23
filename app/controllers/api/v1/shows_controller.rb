class Api::V1::ShowsController < ApplicationController

  def index
    render json: ShowSerializer.new(Show.all)
  end

  def show
    show = Show.find(params[:id])
    render status: 200,
    json: {
      show: ShowSerializer.new(show),
      performers: show.performers
    }
  end

  def create
    if params["venue_id"] == nil
      venue = Venue.create(venue_name: params["venue_name"], venue_google_id: params["venue_google_id"])
    else
      venue = Venue.find(params["venue_id"])
    end
    show = venue.shows.create(show_params)
    if show.save
      ShowPerformer.add_performers(params[:performers], show.id)
      render json: ShowSerializer.new(show)
      
    else
      render status: 409,
      json: {
        status: "error",
        message: "Something went wrong."
      }
    end
  end

  def update 
    show = Show.find(params[:id])
    show.update(show_params)
    ShowPerformer.update_performers(params[:performers], show)
    render status: 200,
    json: {
      show: ShowSerializer.new(show),
      performers: show.performers
    }
  end

  def destroy
    show = Show.find(params["id"])
    if show.destroy
      render status: 204,
      json: {
        status: "success",
      }
    end
  end

end

private

  def show_params
    params.require(:show).permit(:name, :date, :description, :poster_url, :event_url)
  end
