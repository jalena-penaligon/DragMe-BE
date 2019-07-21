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
    
  end

end
