class PerformersController < ApplicationController

  def create
    service = InstagramService.new(params["code"])
    user = service.get_user_data
    performer = Performer.new(instagram_token: user[:access_token],
                              bio: user[:user][:bio],
                              photo: user[:user][:profile_picture],
                              name: user[:user][:full_name],
                              insta_url: "https://www.instagram.com/#{user[:user][:username]}/")
    if performer.save
      render json: performer
    else
      performer = Performer.find_by(instagram_token: user[:access_token])
      render json: performer
    end
  end

end
