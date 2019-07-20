require 'date'

shows = Show.all
venues = Venue.all

shows.each do |show|
  show.destroy
end

venues.each do |venue|
  venue.destroy
end

clocktower = Venue.create!(venue_name: "The Clocktower Cabaret", venue_google_id: "ChIJASbMldp4bIcRiFeLsW3CUf4")
hamburgermarys = Venue.create!(venue_name: "Mile High Hamburger Mary's", venue_google_id: "ChIJL4ZMpzN5bIcRe_ttaF-7N3E")
tracks = Venue.create!(venue_name: "Tracks", venue_google_id: "ChIJU0l3jxp5bIcRcOzzQKHMBcM")
charlies = Venue.create!(venue_name: "Charlie's Nightclub Denver", venue_google_id: "ChIJydsjLC15bIcRcnnY3EIbTgs")
blush = Venue.create!(venue_name: "Blush & Blu", venue_google_id: "ChIJ445gusx-bIcRDpB_himzcuY")
xbar = Venue.create!(venue_name: "X BAR", venue_google_id: "ChIJw4sroyx5bIcR5jU8EDoneGU")
pride = Venue.create!(venue_name: "Pride and Swagger", venue_google_id: "ChIJCR82wSt5bIcRsu6dJbKpoX8")
gladys = Venue.create!(venue_name: "Gladys", venue_google_id: "ChIJR9gq2Tp_bIcRrtd8dA47as8")
vybe = Venue.create!(venue_name: "#VYBE", venue_google_id: "ChIJs4T9jil_bIcRCcy9CMKwJAA")

drag_decades_aug = clocktower.shows.create!(name: "Drag Decades with Shirley Delta Blow", date: DateTime.new(2019,8,2,20,00,0), description: "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!", poster_url: "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg", event_url: "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b")
drag_decades_sep = clocktower.shows.create!(name: "Drag Decades with Shirley Delta Blow", date: DateTime.new(2019,9,6,20,00,0), description: "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!", poster_url: "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg", event_url: "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b")
drag_decades_oct = clocktower.shows.create!(name: "Drag Decades with Shirley Delta Blow", date: DateTime.new(2019,10,04,20,00,0), description: "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!", poster_url: "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg", event_url: "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b")
drag_decades_nov = clocktower.shows.create!(name: "Drag Decades with Shirley Delta Blow", date: DateTime.new(2019,11,01,20,00,0), description: "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!", poster_url: "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg", event_url: "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b")

divas_brunch = hamburgermarys.shows.create!(name: "Divas Brunch", date: DateTime.new(2019,7,27,10,00,0), description: "Every Saturday DIVAS Brunch hits the stage at 11am and 2pm.", poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2017/02/Good-Booty-Judy.jpg", event_url: "https://www.hamburgermarys.com/denver/events/event/saturday-mimosa-brunch/")
femmebots = hamburgermarys.shows.create!(name: "Femmebots with Electra Dupri", date: DateTime.new(2019,07,27,22,30,0), description: "Femmebots is Denver’s premier Saturday late night drag show! Hosted by community darling Electra Dupri this show is a Retro-futuristic with a comedic twist.", poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2019/02/femmebots_Cover.jpg", event_url: "https://www.hamburgermarys.com/denver/events/event/femmebots-with-electra-dupri/")
bellas = hamburgermarys.shows.create!(name: "Bella’s Cooter Catwalk", date: DateTime.new(2019,7,28,20,00,0), description: "Cooter Cat Walk! An all new high-fashion high energy Drag event. Hosted by Bella Couture-Le Cher with a rotating cast throwing high-fashion looks!", poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2019/02/cooterSunday-1024x576.jpeg", event_url: "https://www.hamburgermarys.com/denver/events/event/bellas-cooter-catwalk/")
maryoke = hamburgermarys.shows.create!(name: "Mary-OKE!", date: DateTime.new(2019,8,1,21,00,0), description: "Join your host Allison Young every Thursday night to sing your heart out!  Over 250,000 songs to choose from with great food and cocktails to keep you going.", poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2018/01/MaryOke.jpg", event_url: "https://www.hamburgermarys.com/denver/events/event/mary-oke/")

dragnation = tracks.shows.create!(name: "Drag Nation Dynasty ft. Ra'Jah O'Hara", date: DateTime.new(2019,7,26,21,00,0), description: "The Nation's Best Drag Show with the Hottest Celebrity Drag Queens!", poster_url: "https://tracksdenver.com/wp-content/uploads/2019/06/07_26_DragNation_11x17-copy.jpg", event_url: "https://tracksdenver.com/event/drag-nation-2/")

freshfish = charlies.shows.create!(name: "Fresh Fish Fridays", date: DateTime.new(2019,7,26,22,00,0), description: "Glow Fridays, free body painting, drag show in lounge at 11", poster_url: "https://www.charliesdenver.com/shared/images/weeklyspecial/659915/friday/", event_url: "https://www.charliesdenver.com/specials")

drag_decades_nov = blush.shows.create!(name: "", date: DateTime.new(2019,8,14,20,00,0), description: "A fresh and unique monthly local charity benefit show with ALL LIVE performances with drag entertainers, musicians, vocalists, boylesque, belly dancers, stand up comedy, and much more!", poster_url: "https://scontent.fapa1-1.fna.fbcdn.net/v/t1.0-9/53434989_347181116129823_1954368088577146880_o.jpg?_nc_cat=101&_nc_oc=AQkFGKxHMxovLHaTnswgCBHhTt1beP-WXai7uVPsvJbHkXnLFfsDELrKIfD6PG2RFSLYeSJDEd2k9mJRYjmg1PwD&_nc_ht=scontent.fapa1-1.fna&oh=a20ebc389f367c0213a282a74ca5e72a&oe=5DBDB8B3", event_url: "https://www.facebook.com/events/562486420885991/")

# drag_decades_nov = hamburgermarys.shows.create!(name: "", date: DateTime.new(2019, 11, 01, 20, 00, 0), description: "", poster_url: "", event_url: "")
