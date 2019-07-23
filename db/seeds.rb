require 'date'

shows = Show.all
venues = Venue.all

shows.each do |show|
  show.destroy
end

venues.each do |venue|
  venue.destroy
end

# Venue
clocktower = Venue.create!(venue_name: "The Clocktower Cabaret", venue_google_id: "ChIJASbMldp4bIcRiFeLsW3CUf4")
hamburgermarys = Venue.create!(venue_name: "Mile High Hamburger Mary's", venue_google_id: "ChIJL4ZMpzN5bIcRe_ttaF-7N3E")
tracks = Venue.create!(venue_name: "Tracks", venue_google_id: "ChIJU0l3jxp5bIcRcOzzQKHMBcM")
charlies = Venue.create!(venue_name: "Charlie's Nightclub Denver", venue_google_id: "ChIJydsjLC15bIcRcnnY3EIbTgs")
blush = Venue.create!(venue_name: "Blush & Blu", venue_google_id: "ChIJ445gusx-bIcRDpB_himzcuY")
xbar = Venue.create!(venue_name: "X BAR", venue_google_id: "ChIJw4sroyx5bIcR5jU8EDoneGU")
pride = Venue.create!(venue_name: "Pride and Swagger", venue_google_id: "ChIJCR82wSt5bIcRsu6dJbKpoX8")
gladys = Venue.create!(venue_name: "Gladys", venue_google_id: "ChIJR9gq2Tp_bIcRrtd8dA47as8")
vybe = Venue.create!(venue_name: "#VYBE", venue_google_id: "ChIJs4T9jil_bIcRCcy9CMKwJAA")

# Drag Decades Re-occuring
drag_decades_aug = clocktower.shows.create!(name: "Drag Decades with Shirley Delta Blow", date: DateTime.new(2019,8,2,20,00,0), description: "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!", poster_url: "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg", event_url: "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b")
drag_decades_sep = clocktower.shows.create!(name: "Drag Decades with Shirley Delta Blow", date: DateTime.new(2019,9,6,20,00,0), description: "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!", poster_url: "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg", event_url: "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b")
drag_decades_oct = clocktower.shows.create!(name: "Drag Decades with Shirley Delta Blow", date: DateTime.new(2019,10,04,20,00,0), description: "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!", poster_url: "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg", event_url: "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b")
drag_decades_nov = clocktower.shows.create!(name: "Drag Decades with Shirley Delta Blow", date: DateTime.new(2019,11,01,20,00,0), description: "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!", poster_url: "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg", event_url: "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b")

# Hamburger Mary's Re-occuring
divas_brunch = hamburgermarys.shows.create!(name: "Divas Brunch", date: DateTime.new(2019,7,27,10,00,0), description: "Every Saturday DIVAS Brunch hits the stage at 11am and 2pm.", poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2017/02/Good-Booty-Judy.jpg", event_url: "https://www.hamburgermarys.com/denver/events/event/saturday-mimosa-brunch/")
femmebots = hamburgermarys.shows.create!(name: "Femmebots with Electra Dupri", date: DateTime.new(2019,07,27,22,30,0), description: "Femmebots is Denver’s premier Saturday late night drag show! Hosted by community darling Electra Dupri this show is a Retro-futuristic with a comedic twist.", poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2019/02/femmebots_Cover.jpg", event_url: "https://www.hamburgermarys.com/denver/events/event/femmebots-with-electra-dupri/")
bellas = hamburgermarys.shows.create!(name: "Bella’s Cooter Catwalk", date: DateTime.new(2019,7,28,20,00,0), description: "Cooter Cat Walk! An all new high-fashion high energy Drag event. Hosted by Bella Couture-Le Cher with a rotating cast throwing high-fashion looks!", poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2019/02/cooterSunday-1024x576.jpeg", event_url: "https://www.hamburgermarys.com/denver/events/event/bellas-cooter-catwalk/")
maryoke = hamburgermarys.shows.create!(name: "Mary-OKE!", date: DateTime.new(2019,8,1,21,00,0), description: "Join your host Allison Young every Thursday night to sing your heart out!  Over 250,000 songs to choose from with great food and cocktails to keep you going.", poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2018/01/MaryOke.jpg", event_url: "https://www.hamburgermarys.com/denver/events/event/mary-oke/")

# Tracks Show
dragnation = tracks.shows.create!(name: "Drag Nation Dynasty ft. Ra'Jah O'Hara", date: DateTime.new(2019,7,26,21,00,0), description: "The Nation's Best Drag Show with the Hottest Celebrity Drag Queens!", poster_url: "https://tracksdenver.com/wp-content/uploads/2019/06/07_26_DragNation_11x17-copy.jpg", event_url: "https://tracksdenver.com/event/drag-nation-2/")

# Charlie's Show
freshfish = charlies.shows.create!(name: "Fresh Fish Fridays", date: DateTime.new(2019,7,26,22,00,0), description: "Glow Fridays, free body painting, drag show in lounge at 11", poster_url: "https://www.charliesdenver.com/shared/images/weeklyspecial/659915/friday/", event_url: "https://www.charliesdenver.com/specials")
# drag_decades_nov = hamburgermarys.shows.create!(name: "", date: DateTime.new(2019, 11, 01, 20, 00, 0), description: "", poster_url: "", event_url: "")

# Default Performer
performer = Performer.create(name: "Vivacious", bio: "Best queen in town!", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057d0db", insta_url: "https://www.instagram.com/naomismalls/", facebook_url: "www.facebook.com", twitter_url: "www.twitter.com")

# Extra Performers
performer_1 = Performer.create(name: "Ra'jah O'Hara", bio: "Extra! Extra! Read all about it! Ra'Jah O'Hara's in the house and I hope you came to play.", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057dude", insta_url: "https://www.instagram.com/therajahoharashow/?hl=en", facebook_url: "https://www.facebook.com/benni.miller", twitter_url: "https://twitter.com/rajahohara?lang=en" )
performer_2 = Performer.create(name: "Shirley Delta Blow", bio: "Just a small town girl with big city dreams.", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057dudette", insta_url: "http://www.shirleydeltablow.com/?fbclid=IwAR2EblwpM5pgc_QOPYnmxJQzkGT6KwoanoZI5HWzlyZ_jbxPdxUPsfZ5LjA", facebook_url:"https://www.facebook.com/shirleydeltablow/", twitter_url: "www.shedoesntblow.com")
performer_3 = Performer.create(name: "Kai Lee Mykles", bio: "Working as a choir director by day, this experience has really taught her how to put on a show and expands her love for performance.", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057lady", insta_url: "https://www.instagram.com/kaileemykels/", facebook_url: "https://www.facebook.com/KaiLeeMykels", twitter_url: "https://twitter.com/kaileemykels")
performer_4 = Performer.create(name: "Felony Misdemeanor", bio: "Serving some delicious and raunchy realness during Sunday Funday brunch at Steuben's Uptown. Bring earmuffs for the kiddos cause these queens entertain at a rating well above PG-13!" , instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057bruh", insta_url: "https://www.instagram.com/felony_misdemeanor/?hl=en", facebook_url: "https://www.facebook.com/events/steubens-uptown/steubens-drag-brunch-with-felony-misdemeanor/2242784222600344/" , twitter_url: "https://twitter.com/felonym?lang=en")

performer_show = ShowPerformer.create(performer_id: performer.id, show_id: dragnation.id)

# User
user = User.create(email: "Jacob@example.com", password_digest: "password", api_key: "fakekey" )