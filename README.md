# Introduction

## What is Hinterview?
You might be wondering what Hinterview is and what this all means for you. 

Essentially, Hinterview is a suite of video tools that will enable you to engage in a new and different way.

Video is the future of recruitment and Hinterview allows you to humanise every experience, work faster and deliver more to clients in the way they want.


## Getting Started
This is a Rails application to provide a demo of APIs produced by [Hinterview](https://hello.hinterview.com/).

To setup this application, you will need have ruby and rails installed on your system.
And it's also required some basic knowledge of Ruby on Rails Technology.

Clone the repo and follow steps given below
```
bundle install
rake db:migrate
rails s # to start rails server and hit `localhost:3000` in addressbar
```

Please Contact us here on [example@hinterview.com](mailto:example@hinterview.com) to register and get your accessibility of APIs.


## API references

[Candidate](#candidates)
  - [Create Candidate](#create_candidate)
  - [List Candidates](#list_candidates)
  - [Get Candidate](#get_candidate)
  - [Delete Canididate](#delete_candidate)

[Video Session](#video_session)
  - [Create Video Session](#create_vs)
  - [Show Video Session](#get_vs)
  - [Delete Video Session](#delete_vs)

####Supported format for all APIs
JSON


### Candidate APIs
    Here you have add candidates and interview them by Video tool.

#### Create Candidate API
    **POST /api/v1/candidates**

    Response Example
```
    201
    {
      "data": {
        "id": "9",
        "type": "candidates",
        "attributes": {
          "name": null,
          "first_name": null,
          "avatar_url": "http://www.example.com/assets/default_avatar.jpg",
          "created_at_in_words": "less than a minute",
          "recruiter_name": null,
          "new_created": true,
          "positions_count": 0,
          "slug": "2fb62272-c006-4976-b805-3f895c7f1669",
          "video_sessions_count": 0,
          "anonymous_cv_url": null,
          "cv_url": null,
          "type": "candidate"
        },
        "relationships": {
          "positions": {
            "data": []
          },
          "video_sessions": {
            "data": []
          },
          "video_sessions_created_by_recruiter": {
            "data": []
          },
          "video_sessions_answers": {
            "data": []
          }
        }
      }
    }
```

    ###### Headers
    |Header name|Description|
    |-----------|-----------|
    |**Authorization**<br/>required|Provide you access token Token token=\"testtoken\"|

    ###### Errors
    |Code|Description|
    |----|-----------|
    |401|Integration token is invalid|
    |400|Query parameter "include" is not allowed or has a restricted value|


#### List Candidate
    **GET /api/v1/candidates**

    Response Example
```
    200
    {
      "data": [
        {
          "id": "6",
          "type": "candidates",
          "attributes": {
            "name": "dave",
            "first_name": "dave",
            "avatar_url": "http://www.example.com/assets/default_avatar.jpg",
            "created_at_in_words": "less than a minute",
            "recruiter_name": null,
            "new_created": true,
            "positions_count": 0,
            "slug": "09c04951-f511-40bc-a54c-e40e2f6e8066",
            "video_sessions_count": 1,
            "anonymous_cv_url": null,
            "cv_url": null,
            "type": "candidate"
          },
          "relationships": {
            "positions": {
              "data": []
            },
            "video_sessions": {
              "data": [
                {
                  "id": "7",
                  "type": "video_sessions"
                }
              ]
            },
            "video_sessions_created_by_recruiter": {
              "data": []
            },
            "video_sessions_answers": {
              "data": []
            }
          }
        }
      ]
    }
```

    ###### Headers
    |Header name|Description|
    |-----------|-----------|
    |**Authorization**<br/>required|Provide you access token Token token=\"testtoken\"|

    ###### Errors
    |Code|Description|
    |----|-----------|
    |401|Integration token is invalid|
    |400|Query parameter "include" is not allowed or has a restricted value|


#### Get Candidate API
    **GET /api/v1/candidates/:id**

    Example URL
```
    GET /api/v1/candidates/0b1370a6-7b35-4f8a-b585-6d06fe738533?include=video_sessions
```
    Params
    |Param name|Description|
    |----------|-----------|
    |**id** <br/> required|Candidate ID<br/>**Validations:**<br/>-Must be a String|
    |include<br/>optional|JSON API key to include video sessions of candidate<br/>**Validations:**<br/>-Must be one of: video_sessions.|

    Response Example
```
    200
    {
      "data": {
        "id": "10",
        "type": "candidates",
        "attributes": {
          "name": "dave",
          "first_name": "dave",
          "avatar_url": "http://www.example.com/assets/default_avatar.jpg",
          "created_at_in_words": "less than a minute",
          "recruiter_name": null,
          "new_created": true,
          "positions_count": 0,
          "slug": "0b1370a6-7b35-4f8a-b585-6d06fe738533",
          "video_sessions_count": 1,
          "anonymous_cv_url": null,
          "cv_url": null,
          "type": "candidate"
        },
        "relationships": {
          "positions": {
            "data": []
          },
          "video_sessions": {
            "data": [
              {
                "id": "10",
                "type": "video_sessions"
              }
            ]
          },
          "video_sessions_created_by_recruiter": {
            "data": []
          },
          "video_sessions_answers": {
            "data": []
          }
        }
      },
      "included": [
        {
          "id": "10",
          "type": "video_sessions",
          "attributes": {
            "archive_status": null,
            "name": "klb9ddy9",
            "created_at": "2017-10-09T09:36:54.410Z",
            "duration": null,
            "preview_image_url": "http://example.com/static/fallback/preview_image.png",
            "created_by_company": null,
            "slug": "klb9ddy9",
            "created_at_in_words": "less than a minute ago",
            "status": "not_recorded",
            "session_id": null,
            "max_duration": 100,
            "max_bookmarks_count": 10,
            "resource_url": null,
            "edit_resource_url": "http://example.com/embedded/video_session?token=eyJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7ImlkIjoxMCwicmVhZF9vbmx5IjpmYWxzZX0sImV4cCI6MTUwNzU0MjcxNH0.owbyPt8JUXNBXzEl0BVykuVacW5pweETi11-9tfIugs",
            "archive_started_at": null,
            "archive_stopped_at": null,
            "secure_video_url": false,
            "has_video": false,
            "requires_opentok_update": null,
            "errors": [],
            "created_by_user": {
              "name": null
            }
          }
        }
      ]
    }
```

    ###### Headers
    |Header name|Description|
    |-----------|-----------|
    |**Authorization**<br/>required|Provide you access token Token token=\"testtoken\"|

    ###### Errors
    |Code|Description|
    |----|-----------|
    |401|Integration token is invalid|
    |400|Query parameter "include" is not allowed or has a restricted value|
    |404|Candidate was not found|



#### DELETE Candidate API
    **DELETE /api/v1/candidates/:id**

    Example URL
```
    DELETE /api/v1/candidates/0b1370a6-7b35-4f8a-b585-6d06fe738533
```
    Params
    |Param name|Description|
    |----------|-----------|
    |**id** <br/> required|Candidate ID<br/>**Validations:**<br/>-Must be a String|

    Response Example
```
    204
```

    ###### Headers
    |Header name|Description|
    |-----------|-----------|
    |**Authorization**<br/>required|Provide you access token Token token=\"testtoken\"|

    ###### Errors
    |Code|Description|
    |----|-----------|
    |401|Integration token is invalid|
    |400|Query parameter "include" is not allowed or has a restricted value|
    |404|Candidate was not found|
