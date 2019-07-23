# Project: Drag Me Back End

# DragMe
#### By [Jalena Taylor](https://github.com/jalena-penaligon), [Bridgett Coyle](https://github.com/B-Coyle) & [Jacob Bogart](https://github.com/jacobogart), [Kristen Hallstrom](https://github.com/Klhalls89),

### [Front-End Respositry](https://github.com/dragmeturing/DragMe-FE)

## Production URL

This API is available in production at http://dragme.us-east-2.elasticbeanstalk.com/

## Instructions
  ### Available Endpoints:
  #### GET http://dragme.us-east-2.elasticbeanstalk.com/api/v1/shows
      Sample Response:
      { "data": [
      {
        "id": "1",
        "type": "show",
        "attributes": {
          "name": "Drag Decades with Shirley Delta Blow",
          "date": "2019-08-02T20:00:00.000Z",
          "description": "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!",
          "poster_url": "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg",
          "event_url": "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b",
          "venue": {
            "id": 1,
            "venue_name": "The Clocktower Cabaret",
            "venue_google_id": "ChIJASbMldp4bIcRiFeLsW3CUf4",
            "created_at": "2019-07-19T21:16:51.084Z",
            "updated_at": "2019-07-19T21:16:51.084Z"
          }
        }
        },
        {
          "id": "2",
          "type": "show",
          "attributes": {
            "name": "Drag Decades with Shirley Delta Blow",
            "date": "2019-09-06T20:00:00.000Z",
            "description": "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!",
            "poster_url": "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg",
            "event_url": "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b",
            "venue": {
              "id": 1,
              "venue_name": "The Clocktower Cabaret",
              "venue_google_id": "ChIJASbMldp4bIcRiFeLsW3CUf4",
              "created_at": "2019-07-19T21:16:51.084Z",
              "updated_at": "2019-07-19T21:16:51.084Z"
            }
          }
          }]}

  #### GET http://dragme.us-east-2.elasticbeanstalk.com/api/v1/shows/:id
      Sample Response:
      { "data":
        {
        "id": "1",
        "type": "show",
        "attributes": {
          "name": "Drag Decades with Shirley Delta Blow",
          "date": "2019-08-02T20:00:00.000Z",
          "description": "Shirley Delta Blow takes us on an epic journey back in time with her glitzy, glamorous show DRAG DECADES!",
          "poster_url": "https://apps.cdnini.com/service/images/showbills/dbc56f0df94555215777af6ff737bd13_750x600.jpg",
          "event_url": "http://www.clocktowercabaret.com/event/68c946c26fd78bb0b039389c2cc2486b",
          "venue": {
            "id": 1,
            "venue_name": "The Clocktower Cabaret",
            "venue_google_id": "ChIJASbMldp4bIcRiFeLsW3CUf4",
            "created_at": "2019-07-19T21:16:51.084Z",
            "updated_at": "2019-07-19T21:16:51.084Z"
            }
          }
        }
      }


  #### POST http://dragme.us-east-2.elasticbeanstalk.com/api/v1/shows
      Headers:
        Content-Type: application/json
        Accept: application/json

      Body:
      {
      	"name": "Veronica Taylor-Mykels presents: Poppertunities",
      	"date": "2019-08-02T19:00:00.000Z",
      	"description": "DTF Fridays are still burning up into the new year, with Veronica Taylor Mykels taking over the main floor EVERY 1st and 3rd Friday with her POP-up performances and dirty mouth.",
      	"poster_url": "https://scontent.fapa1-1.fna.fbcdn.jpg",
      	"event_url": "https://www.facebook.com/events/803488420043370/",
      	"venue_id": 6
      }

      Sample Response:
        Status: 201 Created
        {
          "data": {
              "id": "12",
              "type": "show",
              "attributes": {
                  "name": "Veronica Taylor-Mykels presents: Poppertunities",
                  "date": "2019-08-02T19:00:00.000Z",
                  "description": "DTF Fridays are still burning up into the new year, with Veronica Taylor Mykels taking over the main floor EVERY 1st and 3rd Friday with her POP-up performances and dirty mouth.",
                  "poster_url": "https://scontent.fapa1-1.fna.fbcdn.jpg",
                  "event_url": "https://www.facebook.com/events/803488420043370/",
                  "venue": {
                      "id": 6,
                      "venue_name": "X BAR",
                      "venue_google_id": "ChIJw4sroyx5bIcR5jU8EDoneGU",
                      "created_at": "2019-07-19T21:16:51.121Z",
                      "updated_at": "2019-07-19T21:16:51.121Z"
                  }
              }
          }
      }

  #### DELETE http://dragme.us-east-2.elasticbeanstalk.com/api/v1/shows/:id
        Sample Response:
          Status: 204 No Content

  #### GET http://dragme.us-east-2.elasticbeanstalk.com/api/v1/venues
      Sample Response:
        [{
        id: 9,
        venue_name: "The Clocktower Cabaret",
        venue_google_id: "ChIJASbMldp4bIcRiFeLsW3CUf4",
        created_at: "2019-07-20T19:50:01.281Z",
        updated_at: "2019-07-20T19:50:01.281Z"
        },
        {
        id: 10,
        venue_name: "Mile High Hamburger Mary's",
        venue_google_id: "ChIJL4ZMpzN5bIcRe_ttaF-7N3E",
        created_at: "2019-07-20T19:50:01.284Z",
        updated_at: "2019-07-20T19:50:01.284Z"
        }]

  #### POST http://dragme.us-east-2.elasticbeanstalk.com/api/v1/venues
      Headers:
        Content-Type: application/json
        Accept: application/json

      Body:
      {
        venue_name: "Mile High Hamburger Mary's",
        venue_google_id: "ChIJL4ZMpzN5bIcRe_ttaF-7N3E"
      }

      Sample Response:
        Status: 201 Created
        {
        id: 10,
        venue_name: "Mile High Hamburger Mary's",
        venue_google_id: "ChIJL4ZMpzN5bIcRe_ttaF-7N3E",
        created_at: "2019-07-20T19:50:01.284Z",
        updated_at: "2019-07-20T19:50:01.284Z"
        }

  #### DELETE http://dragme.us-east-2.elasticbeanstalk.com/api/v1/venues/:id
        Sample Response:
          Status: 204 No Content

  #### GET http://dragme.us-east-2.elasticbeanstalk.com/api/v1/venues/:id/shows
      Sample Response:
      { venue: {
          id: 10,
          venue_name: "Mile High Hamburger Mary's",
          venue_google_id: "ChIJL4ZMpzN5bIcRe_ttaF-7N3E",
          created_at: "2019-07-20T19:50:01.284Z",
          updated_at: "2019-07-20T19:50:01.284Z"
        },
        shows: [
          {
            id: 6,
            name: "Divas Brunch",
            date: "2019-07-27T10:00:00.000Z",
            description: "Every Saturday DIVAS Brunch hits the stage at 11am and 2pm.",
            event_url: "https://www.hamburgermarys.com/denver/events/event/saturday-mimosa-brunch/",
            poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2017/02/Good-Booty-Judy.jpg",
            venue_id: 10,
            created_at: "2019-07-20T19:50:01.336Z",
            updated_at: "2019-07-20T19:50:01.336Z"
          },
          {
            id: 7,
            name: "Femmebots with Electra Dupri",
            date: "2019-07-27T22:30:00.000Z",
            description: "Femmebots is Denver’s premier Saturday late night drag show! Hosted by community darling Electra Dupri this show is a Retro-futuristic with a comedic twist.",
            event_url: "https://www.hamburgermarys.com/denver/events/event/femmebots-with-electra-dupri/",
            poster_url: "https://www.hamburgermarys.com/denver/wp/wp-content/uploads/2019/02/femmebots_Cover.jpg",
            venue_id: 10,
            created_at: "2019-07-20T19:50:01.338Z",
            updated_at: "2019-07-20T19:50:01.338Z"
          }]
        }   

  #### GET http://dragme.us-east-2.elasticbeanstalk.com/api/v1/performers
      Sample Response:
      [{
        id: 2,
        name: "Jalena Taylor",
        bio: "",
        instagram_token: "15940466.b3445ea.b3e1d1e5",
        photo: "https://scontent.cdninstagram.com/vp/30bbcdc8dc17ab462a2fb783fff7b792/5DEB6FE6/t51.2885-19/s150x150/41260479_327121834723589_5167495760517791744_n.jpg?_nc_ht=scontent.cdninstagram.com",
        insta_url: "https://www.instagram.com/jalena.marie/",
        facebook_url: null,
        twitter_url: null,
        created_at: "2019-07-22T21:59:55.490Z",
        updated_at: "2019-07-22T21:59:55.490Z"
      },
      {
        id: 3,
        name: "Jacob Bogart",
        bio: "mainly dogs and woods",
        instagram_token: "5612235.b3445ea.9a4ccbe394",
        photo: "https://scontent.cdninstagram.com/vp/94c7ca1f5de715b6d8371b39d1ee61c2/5DE7FE01/t51.2885-19/s150x150/11417400_702333426577772_2015635595_a.jpg?_nc_ht=scontent.cdninstagram.com",
        insta_url: "https://www.instagram.com/jacobogart/",
        facebook_url: null,
        twitter_url: null,
        created_at: "2019-07-22T22:26:21.473Z",
        updated_at: "2019-07-22T22:26:21.473Z"
      }]

  #### GET http://dragme.us-east-2.elasticbeanstalk.com/api/v1/performers/:id
      Sample Response:
      {
        data: {
          id: "1",
          type: "performer",
          attributes: {
            name: "Vivacious",
            bio: "Best queen in town!",
            instagram_token: "15940466.b3445ea.f5eaa7f9acf243",
            photo: null,
            insta_url: "https://www.instagram.com/naomismalls/",
            facebook_url: "www.facebook.com",
            twitter_url: "www.twitter.com",
            shows: [
              {
                id: 9,
                name: "Drag Nation Dynasty ft. Ra'Jah O'Hara",
                date: "2019-07-26T21:00:00.000Z",
                description: "The Nation's Best Drag Show with the Hottest Celebrity Drag Queens!",
                event_url: "https://tracksdenver.com/event/drag-nation-2/",
                poster_url: "https://tracksdenver.com/wp-content/uploads/2019/06/07_26_DragNation_11x17-copy.jpg",
                venue_id: 3,
                created_at: "2019-07-23T17:16:15.621Z",
                updated_at: "2019-07-23T17:16:15.621Z"
              }
            ]
          }
        }
      }

  #### POST http://dragme.us-east-2.elasticbeanstalk.com/api/v1/performers/
        Headers:
          Content-Type: application/json
          Accept: application/json

        Body:
        {
          "instagram_token": "15940466.b3445ea.b3e1d1e6",
        }

        Sample Response:
          Status: 200
          Body:
            {
              "performer": {
                  "id": 1,
                  "name": "Jalena Taylor",
                  "bio": "Aspiring queen",
                  "instagram_token": "15940466.b3445ea.b3e1d1e6",
                  "photo": "https://scontent.cdninstagram.com/vp/30bbcdc8dc17ab462a2fb783fff7b792/5DEB6FE6/t51.2885-19/s150x150/41260479_327121834723589_5167495760517791744_n.jpg?_nc_ht=scontent.cdninstagram.com",
                  "insta_url": "https://www.instagram.com/jalena.marie/",
                  "facebook_url": "facebook.com",
                  "twitter_url": "twitter.com",
                  "created_at": "2019-07-23T17:16:15.641Z",
                  "updated_at": "2019-07-23T17:21:14.059Z"
              }
            }    

  #### PUT http://dragme.us-east-2.elasticbeanstalk.com/api/v1/performers/:id
        Headers:
          Content-Type: application/json
          Accept: application/json

        Body:
        {
        	"name": "Jalena Taylor",
            "bio": "Aspiring queen",
            "instagram_token": "15940466.b3445ea.b3e1d1e6",
            "photo": "https://scontent.cdninstagram.com/vp/30bbcdc8dc17ab462a2fb783fff7b792/5DEB6FE6/t51.2885-19/s150x150/41260479_327121834723589_5167495760517791744_n.jpg?_nc_ht=scontent.cdninstagram.com",
            "insta_url": "https://www.instagram.com/jalena.marie/",
            "facebook_url": "facebook.com",
            "twitter_url": "twitter.com"
        }

        Sample Response:
          Status: 200
          Body:
            {
              "performer": {
                  "id": 1,
                  "name": "Jalena Taylor",
                  "bio": "Aspiring queen",
                  "instagram_token": "15940466.b3445ea.b3e1d1e6",
                  "photo": "https://scontent.cdninstagram.com/vp/30bbcdc8dc17ab462a2fb783fff7b792/5DEB6FE6/t51.2885-19/s150x150/41260479_327121834723589_5167495760517791744_n.jpg?_nc_ht=scontent.cdninstagram.com",
                  "insta_url": "https://www.instagram.com/jalena.marie/",
                  "facebook_url": "facebook.com",
                  "twitter_url": "twitter.com",
                  "created_at": "2019-07-23T17:16:15.641Z",
                  "updated_at": "2019-07-23T17:21:14.059Z"
              }
            }

  #### DELETE http://dragme.us-east-2.elasticbeanstalk.com/api/v1/performers/:id
        Sample Response:
          Status: 204 No Content

## Schema
![Database Schema](schema.png)
