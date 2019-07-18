require 'rails_helper'

describe "Shows API" do
  it "sends a list of shows" do
    venue_1 = Venue.create(name: "Venue Name 1", google_id: "a;lsdfljasdf")
    show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
    show_2 = venue_1.shows.create(name: "Show Name 2", date: 5.days.from_now, description: "It'll be really fun", poster_url: "URL", event_url: "URL")

    get '/api/v1/shows'

    expect(response).to be_successful

    shows = JSON.parse(response.body)

    expect(shows.count).to eq(2)
  end

  it "displays 1 show" do
    venue_1 = Venue.create(name: "Venue Name 1", google_id: "a;lsdfljasdf")
    show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
    show_2 = venue_1.shows.create(name: "Show Name 2", date: 5.days.from_now, description: "It'll be really fun", poster_url: "URL", event_url: "URL")

    get "/api/v1/shows/#{show_1.id}"

    expect(response).to be_successful

    show = JSON.parse(response.body)
    expect(show["name"]).to eq(show_1.name)
    expect(show).to be_a(Hash)
  end
end
