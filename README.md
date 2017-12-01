## About the Application

Tripit List is an application to help users track trip ideas they have - a bucketlist specifically focused on travels! Users are able to upload images via the Filestack API and can search locations via the Google Maps API (embedded on the webpage). Users can view all trips they've added, including those completed or yet to be complete.

Link to application - https://rinathilm.github.io/trip-list-client/

Link to client repo - https://github.com/rinathiLM/trip-list-client

Deployed API (using Heroku) - https://trip-list.herokuapp.com/

## ERD

![Alt text](https://i.imgur.com/YE8odQd.jpg?2)

## API End-Points

**User resource:**

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | users#signup      |
| POST   | `/sign-in`             | users#signin      |
| PATCH  | `/change-password/:id` | users#changepw    |
| DELETE | `/sign-out/:id`        | users#signout     |

**Trip resource:**

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/trips`               | trips#index       |
| POST   | `/trips`               | trips#signin      |
| PATCH  | `/trips/:id`           | trips#update      |
| DELETE | `/trips/:id`           | trips#destroy     |

## Technology

- Ruby
- Ruby on Rails

## Installation

- Install with ```bundle install```
- Start server with ```bin/rails server```

## Development Process

Setting up the Rails API wasn't difficult, I knew that I did not want to make many resources nor have it be a complex one. I wanted to focus on integrating a 3rd party API. I was able to use two - Google and Filestack. Both have a large community so finding the documentation and tutorials wasn't difficult, understanding what the API needed and what my application had to provide was the harder part. I was able to get my project to do basic CRUD actions in two days, but the other half of my time was spent on getting the APIs to work.

I also attempted to work with Ember and Angular to create a sample application, but found it difficult to understand and organize. Knowing that the timeline for this project was quickly approaching, I decided to spend time working with an API versus a frontend framework.

## Issues & Future Enhancements
- Update 'done' status from a boolean value to a string. I would like to do this on the backend instaed of transforming the data in the frontend
