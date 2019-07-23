class Api::V1::PerformersController < ApplicationController
    def index
      render json: Performer.all
    end

    def show
      render json: PerformerSerializer.new(Performer.find(params[:id]))
    end

    def create
      service = InstagramService.new(params[:performer][:instagram_token])
      user = service.get_user_data
      performer = Performer.new(instagram_token: params[:performer][:instagram_token].split('.')[0],
                                bio: user[:bio],
                                photo: user[:profile_picture],
                                name: user[:full_name],
                                insta_url: "https://www.instagram.com/#{user[:username]}/")
      if performer.save
        render json: performer
      else
        performer = Performer.find_by(instagram_token: params[:performer][:instagram_token])
        render json: performer
      end
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
