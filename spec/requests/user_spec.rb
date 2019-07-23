require 'rails_helper'

describe "Users API" do
  it "sends a list of users" do
    user1 = User.create(email: "Jacob@example.com", password_digest: "password", api_key: "fakekey" )
    user2 = User.create(email: "Bridgett@example.com", password_digest: "secret", api_key: "secretboo")

    get '/api/v1/users'

    expect(response).to be_successful
    users = JSON.parse(response.body)["data"]
    expect(users.count).to eq(2)
  end

  it "displays 1 user" do
    user1 = User.create(email: "Jacob@example.com", password_digest: "password", api_key: "fakekey" )

    get "/api/v1/users/#{user1.id}"

    expect(response).to be_successful

    user = JSON.parse(response.body)["data"]["attributes"]
    expect(user["email"]).to eq(user1.email)
    expect(user).to be_a(Hash)
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
