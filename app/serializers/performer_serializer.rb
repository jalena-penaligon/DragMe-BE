class PerformerSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :bio, :instagram_token, :photo, :insta_url, :facebook_url, :twitter_url, :shows
  end
