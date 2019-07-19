venue = Venue.create(venue_name: "The Clocktower Cabaret", venue_google_id: "ChIJASbMldp4bIcRiFeLsW3CUf4")
show = venue.shows.create(name: "Drag Fest", date: 5.days.from_now, description: "The best drag show in town!", poster_url: "URL", event_url: "URL")
