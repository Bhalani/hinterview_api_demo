# Hinterview

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



# Hinterview Integration REST API references

[Candidate](#candidates)
  - [Create Candidate](#create-candidate)
  - [List Candidates](#list-candidates)
  - [Get Candidate](#get-candidate)
  - [Delete Canididate](#delete-candidate)

[Video Session](#video-session)
  - [Create Video Session](#create-video-session)
  - [Show Video Session](#get-video-session)
  - [Delete Video Session](#delete-video-session)

####Supported format for all APIs
JSON


### Candidate APIs
    Here you have add candidates and interview them by Video tool.
<br/>
#### Create Candidate
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

<br/>
<br/>

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

<br/>
<br/>

#### Get Candidate
**GET /api/v1/candidates/:id**

    Example URL
```
    GET /api/v1/candidates/0b1370a6-7b35-4f8a-b585-6d06fe738533?include=video_sessions
```

###### Params
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

<br/>
<br/>

#### Delete Candidate
**DELETE /api/v1/candidates/:id**

    Example URL
```
    DELETE /api/v1/candidates/0b1370a6-7b35-4f8a-b585-6d06fe738533
```

###### Params
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

<br/>
<br/>
<br/>

###Video Session
<br/>

#### Create Video Session
**POST /api/v1/candidate/:candidate_id/video_sessions**

Example URL
```
  POST /api/v1/candidates/282dad45-7eaa-41b5-b4c5-24679cf91c65/video_sessions
```

Request Parameter
```
  data[attributes][max_bookmarks_count]=10&data[attributes][max_duration]=100
```


###### Params
|Param name|Description|
|----------|-----------|
|**candidate_id** <br/> optional|Candidate ID<br/>**Validations:**<br/>-Must be a String|
|**data**<br/>optional|**Validations:**<br/>-Must be a Hash|
|**data[attributes]**<br/>optional|**Validations:**<br/>-Must be a Hash|
|**data[attributes][max_duration]**<br/>optional|Maximum duration for a new video in seconds (0 > x >= 7200)<br/>**Validations:**<br/>-Must be a Integer|
|**data[attributes][max_bookmarks_count]**<br/>optional|Maximum quantity of bookmarks for a new video (x >= 0)<br/>**Validations:**<br/>Must be a Integer|


Response Example
```
  201
  {
    "data": {
      "id": "2",
      "type": "video_sessions",
      "attributes": {
        "archive_status": null,
        "name": "8h8wg95f",
        "created_at": "2017-10-09T09:36:51.830Z",
        "duration": null,
        "preview_image_url": "http://example.com/static/fallback/preview_image.png",
        "created_by_company": null,
        "slug": "8h8wg95f",
        "created_at_in_words": "less than a minute ago",
        "status": "not_recorded",
        "session_id": null,
        "max_duration": 100,
        "max_bookmarks_count": 10,
        "resource_url": null,
        "edit_resource_url": "http://example.com/embedded/video_session?token=eyJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7ImlkIjoyLCJyZWFkX29ubHkiOmZhbHNlfSwiZXhwIjoxNTA3NTQyNzExfQ.rbKu49RlCd3I0RlHEI1-f0nGBsdZzP_RScWWcxTn4bo",
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
|422|Video session parameters are not valid|

<br/>
<br/>

#### Get Video Session
**GET /api/v1/video_sessions/:id**

Example URL
```
  GET /api/v1/video_sessions/qvkjvqiu
```

###### Params
|Param name|Description|
|----------|-----------|
|**id** <br/> required|Video session ID<br/>**Validations:**<br/>-Must be a String|


Response Example

* 1
```
200
{
  "data": {
    "id": "4",
    "type": "video_sessions",
    "attributes": {
      "archive_status": "uploaded",
      "name": "qvkjvqiu",
      "created_at": "2017-10-09T09:36:52.096Z",
      "duration": 27.0,
      "preview_image_url": "http://example.com/static/fallback/preview_image.png",
      "created_by_company": null,
      "slug": "qvkjvqiu",
      "created_at_in_words": "less than a minute ago",
      "status": "processed",
      "session_id": "some_session",
      "max_duration": 100,
      "max_bookmarks_count": 10,
      "resource_url": "http://example.com/embedded/video_session?token=eyJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7ImlkIjo0LCJyZWFkX29ubHkiOnRydWV9LCJleHAiOjE1MDc1NDI3MTJ9.fC4jFr1c7ExJEyKwxA2isegOt01J1E2nnX1aTQ-1_FQ",
      "edit_resource_url": "http://example.com/embedded/video_session?token=eyJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7ImlkIjo0LCJyZWFkX29ubHkiOmZhbHNlfSwiZXhwIjoxNTA3NTQyNzEyfQ.6VtlUIOKcrn3uB6k304fdi2K2TWpgkcJJSO5NqBgiw0",
      "archive_started_at": "2017-10-09T09:33:52.093Z",
      "archive_stopped_at": "2017-10-09T09:35:52.094Z",
      "secure_video_url": "https://big_buck_bunny.webm.s3.amazonaws.com/?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIAN5FSR5TEJQLYOA%2F20171009%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20171009T093652Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=99eeddf65562582a86eb219414ebe9d5537a343fd4648de572b770fd5e9616d3",
      "has_video": true,
      "requires_opentok_update": false,
      "errors": [],
      "created_by_user": {
        "name": null
      }
    }
  }
}
```

* 2
```
200
{
  "data": {
    "id": "5",
    "type": "video_sessions",
    "attributes": {
      "archive_status": null,
      "name": "3z3iypw6",
      "created_at": "2017-10-09T09:36:52.263Z",
      "duration": null,
      "preview_image_url": "http://example.com/static/fallback/preview_image.png",
      "created_by_company": null,
      "slug": "3z3iypw6",
      "created_at_in_words": "less than a minute ago",
      "status": "not_recorded",
      "session_id": null,
      "max_duration": 100,
      "max_bookmarks_count": 10,
      "resource_url": null,
      "edit_resource_url": "http://example.com/embedded/video_session?token=eyJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7ImlkIjo1LCJyZWFkX29ubHkiOmZhbHNlfSwiZXhwIjoxNTA3NTQyNzEyfQ.o0oUbp8AD4oT-tFp7dVXs1r4Ksi7Jhf8rlBCpxJxbYs",
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

<br/>
<br/>

#### Delete Video Session
**DELETE /api/v1/video_sessions/:id**

Example URL
```
  DELETE /api/v1/video_sessions/qvkjvqiu
```

###### Params
|Param name|Description|
|----------|-----------|
|**id** <br/> required|Video session ID<br/>**Validations:**<br/>-Must be a String|


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


