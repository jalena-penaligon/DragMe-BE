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

  #### GET http://dragme.us-east-2.elasticbeanstalk.com/api/v1/shows/1
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

  #### DELETE http://dragme.us-east-2.elasticbeanstalk.com/api/v1/shows/1
        Sample Response:
          Status: 204 No Content


## Schema
![Database Schema](schema.png)
