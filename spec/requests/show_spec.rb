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

    show = JSON.parse(response.body)["data"]["attributes"]
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

end
