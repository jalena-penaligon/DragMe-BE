require 'rails_helper'

describe "Shows API" do
  it "sends a list of shows" do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
    show_2 = venue_1.shows.create(name: "Show Name 2", date: 5.days.from_now, description: "It'll be really fun", poster_url: "URL", event_url: "URL")

    get '/api/v1/shows'

    expect(response).to be_successful
    shows = JSON.parse(response.body)["data"]
    expect(shows.count).to eq(2)
  end

  it "displays 1 show" do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
    show_2 = venue_1.shows.create(name: "Show Name 2", date: 5.days.from_now, description: "It'll be really fun", poster_url: "URL", event_url: "URL")

    get "/api/v1/shows/#{show_1.id}"

    expect(response).to be_successful
    show = JSON.parse(response.body)["show"]["data"]["attributes"]
    expect(show["name"]).to eq(show_1.name)
    expect(show).to be_a(Hash)
  end

  it 'can delete a show' do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
    show_2 = venue_1.shows.create(name: "Show Name 2", date: 5.days.from_now, description: "It'll be really fun", poster_url: "URL", event_url: "URL")

    delete "/api/v1/shows/#{show_1.id}"

    expect(response).to be_successful
    expect(Show.all.count).to eq(1)
  end

  it 'can create a show' do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    body =  {show: {name: 'Larry Catwalk', date: "2019-08-02T20:00:00.000Z", description: "Super great show! Super Fun!", poster_url: "URL", event_url: "URL" , venue_id: venue_1.id},
              venue_id: venue_1.id, performers: ["Bonquiqui"] }

    post "/api/v1/shows", params: body


    expect(Show.last.name).to eq("Larry Catwalk")
  end

  it 'can update a show' do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
    performer1 = Performer.create(name: "Vivacious", bio: "Best queen in town!", instagram_token: "15940466", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")
    show_performer = ShowPerformer.create(show_id: show_1.id, performer_id: performer1.id)

    body =  {show: {name: 'Larry Catwalk', date: "2019-08-02T20:00:00.000Z", description: "Super great show! Super Fun!", poster_url: "URL", event_url: "URL" , venue_id: venue_1.id},
              venue_id: venue_1.id, performers: [performer1.id, "Bonquiqui"] }

    put "/api/v1/shows/#{show_1.id}", params: body

    show = JSON.parse(response.body)
    expect(show["performers"].count).to eq(2)
    expect(show["performers"].last["name"]).to eq("Bonquiqui")
  end

end
