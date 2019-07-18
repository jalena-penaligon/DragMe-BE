require 'rails_helper'

describe "Venues API" do
  it "sends a list of venues" do
    venue_1 = Venue.create(name: "Venue Name 1", google_id: "a;lsdfljasdf")
    venue_2 = Venue.create(name: "Venue Name 2", google_id: "a;lsdfljasdf")
    get '/api/v1/venues'

    expect(response).to be_successful

    venues = JSON.parse(response.body)

    expect(venues.count).to eq(2)
  end

  it "displays 1 venue" do
    venue_1 = Venue.create(name: "Venue Name 1", google_id: "a;lsdfljasdf")
    venue_2 = Venue.create(name: "Venue Name 2", google_id: "a;lsdfljasdf")
    get "/api/v1/venues/#{venue_1.id}"

    expect(response).to be_successful

    venue = JSON.parse(response.body)
    expect(venue["name"]).to eq(venue_1.name)
    expect(venue).to be_a(Hash)
  end
end
