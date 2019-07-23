require 'rails_helper'

describe "Users API" do
  xit "sends a list of shows" do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
    show_2 = venue_1.shows.create(name: "Show Name 2", date: 5.days.from_now, description: "It'll be really fun", poster_url: "URL", event_url: "URL")

    get '/api/v1/users'

    expect(response).to be_successful
    shows = JSON.parse(response.body)["data"]
    expect(shows.count).to eq(2)
  end

  xit "displays 1 user" do
    venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "a;lsdfljasdf")
    show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
    show_2 = venue_1.shows.create(name: "Show Name 2", date: 5.days.from_now, description: "It'll be really fun", poster_url: "URL", event_url: "URL")

    get "/api/v1/shows/#{show_1.id}"

    expect(response).to be_successful

    show = JSON.parse(response.body)["data"]["attributes"]
    expect(show["name"]).to eq(show_1.name)
    expect(show).to be_a(Hash)
  end

  it 'can delete a user' do
    user1 = User.create(email: "Jacob@example.com", password_digest: "password", api_key: "fakekey" )
    user2 = User.create(email: "Bridgett@example.com", password_digest: "secret", api_key: "secretboo")

    delete "/api/v1/users/#{user1.id}"

    expect(response).to be_successful
    expect(User.all.count).to eq(1)
  end

  it 'can create a user' do 
    body =  {user: {email: 'test@gmail.com', password: "password"}}
 
    post "/api/v1/users", params: body


    expect(User.last.email).to eq("test@gmail.com")
  end

end
