class InstagramService
  def initialize(code)
    @code = code
  end

  def get_user_data
   get_json("/oauth/access_token")
 end

 private

 def get_json(url)
   response = conn
   data = JSON.parse(response.body, symbolize_names: true)
 end

 def conn
   Faraday.new(url: "https://api.instagram.com/")
   .post('oauth/access_token', {client_id: "b3445eaff7de4e8e8c29a7071e84540c",
                                client_secret: "402247e52e1b4059acba7099fa34470a",
                                grant_type: "authorization_code",
                                redirect_uri: "http://dragme.us-east-2.elasticbeanstalk.com/auth/instagram/callback",
                                code: @code})
 end
end
