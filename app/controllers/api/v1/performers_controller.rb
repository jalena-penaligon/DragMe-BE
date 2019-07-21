class Api::V1::PerformersController < ApplicationController
    def index
      performer = Performer.all
      render status: 200,
      json: {
        performer: performer,
      }
    end

    def update
      performer = Performer.find(params[:id])
      performer.update(performer_params)
      render status: 200,
      json:{
        performer: performer
      }
    end

    def destroy 
      performer = Performer.find(params[:id])
      performer.destroy
      render status: 204,
      json: {
        status: "Performer deleted",
      }
    end 

    private

  def performer_params
    params.require(:performer).permit(:name, :bio, :instagram_token, :photo, :insta_url, :facebook_url, :twitter_url)
  end


end 