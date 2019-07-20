# Project: Drag Me Back End

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

  #### GET http://dragme.us-east-2.elasticbeanstalk.com/api/v1/venues/:id
      Sample Response:
        {
        id: 9,
        venue_name: "The Clocktower Cabaret",
        venue_google_id: "ChIJASbMldp4bIcRiFeLsW3CUf4",
        created_at: "2019-07-20T19:50:01.281Z",
        updated_at: "2019-07-20T19:50:01.281Z"
        }

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

  ### Performer OAuth:
  To create a performer with OAuth, the front-end will need to direct to the following URL:

      https://api.instagram.com/oauth/authorize/
      Params:
        { client_id: b3445eaff7de4e8e8c29a7071e84540c,
          redirect_uri: http://dragme.us-east-2.elasticbeanstalk.com/auth/instagram/callback,
          response_type: code
        }

  - If the performer does not exist, a performer is created and is returned as an object.
  - If the performer exists, the performer is located in the database and returned as an object.  

      Sample Response:
      {
        id: 1,
        name: "Jalena Taylor",
        bio: "If I had an instagram bio it would go here.",
        instagram_token: "15940466.b3445ea.f5eaa7f9acf243d7bb658a6ca057d0db",
        photo: "https://scontent.cdninstagram.com/vp/30bbcdc8dc17ab462a2fb783fff7b792/5DEB6FE6/t51.2885-19/s150x150/41260479_327121834723589_5167495760517791744_n.jpg?_nc_ht=scontent.cdninstagram.com",
        insta_url: "https://www.instagram.com/jalena.marie/",
        facebook_url: null,
        twitter_url: null,
        created_at: "2019-07-20T19:26:26.643Z",
        updated_at: "2019-07-20T19:26:26.643Z"
      }

## Schema
![Database Schema](schema.png)
