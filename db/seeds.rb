require 'date'

shows = Show.all
venues = Venue.all
show_performers = ShowPerformer.all
performers = Performer.all

show_performers.each do |show_performer|
  show_performer.destroy
end

performers.each do |performer|
  performer.destroy
end

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

# Tracks Show
dragnation = tracks.shows.create!(name: "Drag Nation Dynasty ft. Ra'Jah O'Hara", date: DateTime.new(2019,7,26,21,00,0), description: "The Nation's Best Drag Show with the Hottest Celebrity Drag Queens!", poster_url: "https://tracksdenver.com/wp-content/uploads/2019/06/07_26_DragNation_11x17-copy.jpg", event_url: "https://tracksdenver.com/event/drag-nation-2/")

# Charlie's Show
freshfish = charlies.shows.create!(name: "Fresh Fish Fridays", date: DateTime.new(2019,7,26,22,00,0), description: "Glow Fridays, free body painting, drag show in lounge at 11", poster_url: "https://www.charliesdenver.com/shared/images/weeklyspecial/659915/friday/", event_url: "https://www.charliesdenver.com/specials")

# X Bar Show
kailee_mykels_show = xbar.shows.create!(name: "The Kai Lee Mykels Show", date: DateTime.new(2019, 07, 28, 22, 30, 0), description: "Every Sunday, Kai Lee Mykels serves up a sickening sermon of love and light! It all goes down at 10:30 p.m. #queerchurch", poster_url: "https://images.squarespace-cdn.com/content/v1/53da8196e4b00a8492548e52/1540919322941-3DXX5O7GVD63Z513JVU8/ke17ZwdGBToddI8pDm48kHWJhM5OumnWkn-bJp56T597gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UcL9jD0a5X9v0pRv3bkEBlbMdRGmLpxxWT_kpX2tG1kWONPeA8knsC0EEyRnv-0ugw/TheKaiLeeMykelsShowUPDATED.jpg", event_url: "http://www.xbardenver.com/#upcomingevents-section")

# drag_decades_nov = hamburgermarys.shows.create!(name: "", date: DateTime.new(2019, 11, 01, 20, 00, 0), description: "", poster_url: "", event_url: "")

# Performers
rajah = Performer.create(name: "Ra'jah O'Hara", photo: "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fscontent-den4-1.cdninstagram.com%2Fvp%2F1065b081e02c32a6c872ed7c632d0ccf%2F5DB421A5%2Ft51.2885-19%2Fs320x320%2F50008879_389098221665686_2899073916590882816_n.jpg%3F_nc_ht%3Dscontent-den4-1.cdninstagram.com", bio: "Extra! Extra! Read all about it! Ra'Jah O'Hara's in the house and I hope you came to play.", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057dude", insta_url: "https://www.instagram.com/therajahoharashow/?hl=en", facebook_url: "https://www.facebook.com/benni.miller", twitter_url: "https://twitter.com/rajahohara?lang=en" )
shirley = Performer.create(name: "Shirley Delta Blow", photo: "http://nebula.wsimg.com/cd4ba632c1adeda59864a3d0d58d5772?AccessKeyId=F803A2C044539A51A1C8&disposition=0&alloworigin=1", bio: "Just a small town girl with big city dreams.", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057dudette", insta_url: "https://www.instagram.com/shirleydeltablow/", facebook_url:"https://www.facebook.com/shirleydeltablow/", twitter_url: "www.shedoesntblow.com")
evelyn = Performer.create(name: "Evelyn Evermore", photo: "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fscontent-den4-1.cdninstagram.com%2Fvp%2F26a8e91f2ab76bc0e7fe476871a27554%2F5DD35637%2Ft51.2885-19%2Fs320x320%2F53752717_1004203519782236_5857877595474886656_n.jpg%3F_nc_ht%3Dscontent-den4-1.cdninstagram.com", bio: "Denver's Comedic Entertainer of 2018. Ultimate Queen 2017. Host, performer, human meat snack.", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057evenlyn", insta_url: "https://www.instagram.com/evelynevermoore/", facebook_url:"https://www.facebook.com/evelynevermoore", twitter_url: "htts://twitter.com/evenlynevermore")
kailee = Performer.create(name: "Kai Lee Mykles", photo: "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fscontent-den4-1.cdninstagram.com%2Fvp%2F0612c2d7d62f61b3732b56050473eba7%2F5DE3AE7B%2Ft51.2885-19%2Fs320x320%2F51313343_2400661950179349_4238493037312868352_n.jpg%3F_nc_ht%3Dscontent-den4-1.cdninstagram.com", bio: "Working as a choir director by day, this experience has really taught her how to put on a show and expands her love for performance.", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057lady", insta_url: "https://www.instagram.com/kaileemykels/", facebook_url: "https://www.facebook.com/KaiLeeMykels", twitter_url: "https://twitter.com/kaileemykels")
electra = Performer.create(name: "Electra Dupri", photo: "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fscontent-den4-1.cdninstagram.com%2Fvp%2Ff7617803a85aec80da3966aac5f55fd9%2F5DDF96BB%2Ft51.2885-19%2Fs320x320%2F19625053_1878746409051904_883863540341932032_a.jpg%3F_nc_ht%3Dscontent-den4-1.cdninstagram.com", bio: "Miss SC Minnesota Pride. 2006 UQC All Star Winner '12", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057electra", insta_url: "https://www.instagram.com/theelectradupri/", facebook_url: "https://www.facebook.com/electradupri", twitter_url: "https://twitter.com/theelectradupri")
bella = Performer.create(name: "Bella Couture-Le Cher", photo: "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fscontent-den4-1.cdninstagram.com%2Fvp%2Fe63f08a8bcb4a278f507647cc00759e6%2F5DC961F0%2Ft51.2885-19%2Fs320x320%2F51989841_1055981194604677_8625362385655300096_n.jpg%3F_nc_ht%3Dscontent-den4-1.cdninstagram.com", bio: "#DragQueen #Drag #DenverDrag #MakeUp", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057bella", insta_url: "https://www.instagram.com/bellacouturelecher/", facebook_url: "https://www.facebook.com/bellaclecher", twitter_url: "https://twitter.com/bellaclecher")
andreastaxxx = Performer.create(name: "Andrea StaxXx", photo: "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fscontent-den4-1.cdninstagram.com%2Fvp%2F2d2c461b36411f81381bed89788b3349%2F5DD4AA48%2Ft51.2885-19%2Fs320x320%2F65301269_2193770574071048_7960207204320018432_n.jpg%3F_nc_ht%3Dscontent-den4-1.cdninstagram.com", bio: "Resident Queen at Charlie's", instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057andrea", insta_url: "https://www.instagram.com/andrea.staxx.x/", facebook_url: "https://www.facebook.com/andrea.staxx.x/", twitter_url: "https://twitter.com/andrea.staxx.x/")
felony = Performer.create(name: "Felony Misdemeanor", photo: "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fscontent-den4-1.cdninstagram.com%2Fvp%2Fe1aeff3dd9c9cf0e28d2a16795b4ad84%2F5DD33FFC%2Ft51.2885-19%2Fs320x320%2F56547445_366935667256248_3906614716713140224_n.jpg%3F_nc_ht%3Dscontent-den4-1.cdninstagram.com", bio: "Serving some delicious and raunchy realness during Sunday Funday brunch at Steuben's Uptown. Bring earmuffs for the kiddos cause these queens entertain at a rating well above PG-13!" , instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057bruh", insta_url: "https://www.instagram.com/felony_misdemeanor/?hl=en", facebook_url: "https://www.facebook.com/events/steubens-uptown/steubens-drag-brunch-with-felony-misdemeanor/2242784222600344/" , twitter_url: "https://twitter.com/felonym?lang=en")

# Show Performers
shirley_dd_aug = ShowPerformer.create(performer_id: shirley.id, show_id: drag_decades_aug.id)

shirley_dd_sep = ShowPerformer.create(performer_id: shirley.id, show_id: drag_decades_sep.id)

shirley_dd_oct = ShowPerformer.create(performer_id: shirley.id, show_id: drag_decades_oct.id)

shirley_dd_nov = ShowPerformer.create(performer_id: shirley.id, show_id: drag_decades_nov.id)

evenlyn_brunch = ShowPerformer.create(performer_id: evelyn.id, show_id: divas_brunch.id)

electra_femmebots = ShowPerformer.create(performer_id: electra.id, show_id: femmebots.id)

bella_bellas = ShowPerformer.create(performer_id: bella.id, show_id: bellas.id)

rajah_dragnation = ShowPerformer.create(performer_id: rajah.id, show_id: dragnation.id)

andrea_ff = ShowPerformer.create(performer_id: andreastaxxx.id, show_id: freshfish.id)

kai_kailee = ShowPerformer.create(performer_id: kailee.id, show_id: kailee_mykels_show.id)


# User
user = User.create(email: "Jacob@example.com", password_digest: "password", api_key: "fakekey" )
