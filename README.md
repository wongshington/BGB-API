1) Travis CI badge [![Build Status](https://travis-ci.com/jkiyasu/BGB-API.svg?branch=main)](https://travis-ci.com/jkiyasu/BGB-API)
2) Coverage badge <a href="https://codeclimate.com/github/jkiyasu/BGB-API/maintainability"><img src="https://api.codeclimate.com/v1/badges/0e78432125b90930ce25/maintainability" /></a>
3) CodeClimate Maintainability badge <a href="https://codeclimate.com/github/rails/rails/test_coverage"><img src="https://api.codeclimate.com/v1/badges/0e78432125b90930ce25/test_coverage" /></a>


4) Bluejay badge [![Bluejay Dashboard](https://img.shields.io/badge/Bluejay-Dashboard_4-blue.svg)](http://dashboard.bluejay.governify.io/dashboard/script/dashboardLoader.js?dashboardURL=https://reporter.bluejay.governify.io/api/v4/dashboards/tpa-CS169L-GH-jkiyasu_BGB-API/main)
5) Pivotal Tracker: https://www.pivotaltracker.com/n/projects/2487652

# BGB-API
The back-end service for the BGB app.

# SQLite
try '$ bundle exec rake...' if '$ rails...' doesn't work
### $ rails db:migrate 
### $ rails db:reset 
(includes drop etc...)
### $rails db:seed
(if just changing seeds.rb, instead of rails db:reset)
### $ rails db
to access the SQLite command line. Commands take the form of SQL queries. Don't forget the semicolon;
### $^D 
to quit the SQL command line

## Resources
- id: integer 
- description: string
- distance: float
- hours: string
- phone: string
- resource: string
## Topics
- id: integer 
- Topic: string 

Each topic object can be referenced by underscore separated variable name. 
Since there is so few, I seeded them this way to access them easily.

EX: to access the topic for "Immediate Danger", use immediate_danger.

## Connectors
- resource_id: integer
- topic_id: integer

Can mainly ignore, just the work around for the many-to-many relation. 
Can create a connector using Connector.create(...) to add a new resource-topic connection using foreign keys resource_id and topic_id.

OR (easy) assign resouce_var_name.topics to list of topics or topic_var_name.resources etc.

# Endpoints

## User

- Sign-Up
  - `POST to: /api/v1/users`
    - required information: `name`, `email`, `date_of_birth`, `password`
    - currently a "confirmation email" is sent to the email used to sign up


## Session
- Sign In
  - `Post to: /api/v1/sign_in`
    - required information: `email`, `password`
    - upon signing in, the response includes a `uid`, `access-token`, `client`, and `expiry` that must be passed back and forth on EACH request to the API
    
