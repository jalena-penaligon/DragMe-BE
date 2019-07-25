require 'rails_helper'

describe "Performers API" do
  it "sends a list of performers" do
    performer1 = Performer.create(name: "Vivacious", bio: "Best queen in town!", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057d0db", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")
    performer2 = Performer.create(name: "Bootylicous", bio: "Best queen in town!", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057dude", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")

    get '/api/v1/performers'

    expect(response).to be_successful
    performers = JSON.parse(response.body)
    expect(performers.count).to eq(2)
  end

  it "displays 1 performer" do
    performer1 = Performer.create(name: "Vivacious", bio: "Best queen in town!", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057d0db", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")
    tracks = Venue.create(venue_name: "Tracks", venue_google_id: "ChIJU0l3jxp5bIcRcOzzQKHMBcM")
    dragnation = tracks.shows.create(name: "Drag Nation Dynasty ft. Ra'Jah O'Hara", date: DateTime.new(2019,7,26,21,00,0), description: "The Nation's Best Drag Show with the Hottest Celebrity Drag Queens!", poster_url: "https://tracksdenver.com/wp-content/uploads/2019/06/07_26_DragNation_11x17-copy.jpg", event_url: "https://tracksdenver.com/event/drag-nation-2/")
    performer_show = ShowPerformer.create(performer_id: performer1.id, show_id: dragnation.id)

    get "/api/v1/performers/#{performer1.id}"

    expect(response).to be_successful

    performer = JSON.parse(response.body)["data"]["attributes"]
    expect(performer["name"]).to eq(performer1.name)
    expect(performer["shows"].count).to eq(1)
  end

  it 'can delete a performer' do
    performer1 = Performer.create(name: "Vivacious", bio: "Best queen in town!", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057d0db", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")
    performer2 = Performer.create(name: "Bootylicious", bio: "Best queen in town!", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057dude", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")

    delete "/api/v1/performers/#{performer1.id}"

    expect(response).to be_successful
    expect(Performer.all.count).to eq(1)
  end

  it 'can create a performer by instagram token' do
    body = {performer: {
      instagram_token: "15940466.b3445ea.b3e1d1e5e3fa4c76968cfcf6cdb3a6c3"
    }}
    post "/api/v1/performers/", params: body

    expect(response).to be_successful
    performer = JSON.parse(response.body)
    expect(performer["instagram_token"]).to eq("15940466")
  end

  it 'can return a performer by instagram token' do
    performer1 = Performer.create(name: "Vivacious", bio: "Best queen in town!", instagram_token: "15940466", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")

    body = {performer: {
      instagram_token: "15940466.b3445ea.b3e1d1e5e3fa4c76968cfcf6cdb3a6c3"
    }}
    post "/api/v1/performers/", params: body

    expect(response).to be_successful
    performer = JSON.parse(response.body)
    expect(performer["instagram_token"]).to eq("15940466")
    expect(performer["name"]).to eq("Vivacious")
  end

  it 'can udpdate a performer' do
    performer1 = Performer.create(name: "Vivacious", bio: "Best queen in town!", instagram_token: "15940466", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")

    body = {performer: {
            name: "Jalena Taylor",
            bio: "Bio",
            instagram_token: "15940466",
            photo: "https://scontent.cdninstagram.com/vp/30bbcdc8dc17ab462a2fb783fff7b792/5DEB6FE6/t51.2885-19/s150x150/41260479_327121834723589_5167495760517791744_n.jpg?_nc_ht=scontent.cdninstagram.com",
            insta_url: "https://www.instagram.com/jalena.marie/",
            facebook_url: "facebook.com",
            twitter_url: "twitter.com"
        }}
    put "/api/v1/performers/#{performer1.id}", params: body
    performer1.reload
    
    expect(response).to be_successful
    expect(performer1.name).to eq("Jalena Taylor")
  end

end
