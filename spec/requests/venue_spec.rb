require 'rails_helper'

describe "Venues API" do
  it "sends a list of venues" do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    venue_2 = Venue.create(venue_name: "Venue Name 2", venue_google_id: "a;sdwejds80234
    ")
    get '/api/v1/venues'

    expect(response).to be_successful
    venues = JSON.parse(response.body)

    expect(venues.count).to eq(2)
  end

  it "displays 1 venue" do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    venue_2 = Venue.create(venue_name: "Venue Name 2", venue_google_id: "a;lsdfljasdf")
    get "/api/v1/venues/#{venue_1.id}"

    expect(response).to be_successful

    venue = JSON.parse(response.body)
    expect(venue["venue_name"]).to eq(venue_1.venue_name)
    expect(venue).to be_a(Hash)
  end

  it "displays all shows belonging to a venue" do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
    show_2 = venue_1.shows.create(name: "Show Name 2", date: 5.days.from_now, description: "It'll be really fun", poster_url: "URL", event_url: "URL")

    get "/api/v1/venues/#{venue_1.id}/shows"

    expect(response).to be_successful
    venue = JSON.parse(response.body)
  end
end
