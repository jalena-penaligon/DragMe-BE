require 'rails_helper'

RSpec.describe ShowPerformer, type: :model do

  describe 'relationships' do
    it { should belong_to :show }
    it { should belong_to :performer }
  end

  describe 'class methods' do
    it 'add_performers' do
      venue_1 = Venue.create!(venue_name: "Venue Name 1", venue_google_id: "12345678")
      show_1 = venue_1.shows.create!(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
      performers = ["Amazing Drag Queen"]
      ShowPerformer.add_performers(performers, show_1.id)

      expect(ShowPerformer.last.show_id).to eq(show_1.id)
      expect(show_1.performers.count).to eq(1)
    end

    it 'update_performers' do
      venue_1 = Venue.create(venue_name: "Venue Name 1", venue_google_id: "12345678999")
      show_1 = venue_1.shows.create(name: "Show Name 1", date: 5.days.from_now, description: "It'll be fun", poster_url: "URL", event_url: "URL")
      performer1 = Performer.create(name: "Vivacious", bio: "Best queen in town!", instagram_token: "15940466", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")
      show_performer = ShowPerformer.create(show_id: show_1.id, performer_id: performer1.id)

      performers = [performer1.id, "Bonquiqui"]
      ShowPerformer.update_performers(performers, show_1)

      expect(ShowPerformer.last.show_id).to eq(show_1.id)
      expect(show_1.performers.count).to eq(2)
    end
  end
end
