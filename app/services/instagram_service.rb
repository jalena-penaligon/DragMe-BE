class InstagramService
  def initialize(access_token)
    @access_token = access_token
  end

  def get_user_data
   get_json("v1/users/self/")
 end

 private

 def get_json(url)
   response = conn.get(url)
   data = JSON.parse(response.body, symbolize_names: true)[:data]
 end

 def conn
    Faraday.new(url: "https://api.instagram.com/") do |f|
      f.params['access_token'] = @access_token
      f.adapter Faraday.default_adapter
    end
  end
end
