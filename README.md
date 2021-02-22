1) Travis CI badge [![Build Status](https://travis-ci.com/jkiyasu/BGB-API.svg?branch=master)](https://travis-ci.com/jkiyasu/BGB-API)
2) Coverage badge <a href="https://codeclimate.com/github/jkiyasu/BGB-API/test_coverage"><img src="https://api.codeclimate.com/v1/badges/8293d6d409c621772253/test_coverage" /></a>
3) CodeClimate Maintainability badge <a href="https://codeclimate.com/github/jkiyasu/BGB-API/maintainability"><img 
src="https://api.codeclimate.com/v1/badges/8293d6d409c621772253/maintainability" /></a>

5) Bluejay badge
6) Pivotal Tracker: https://www.pivotaltracker.com/n/projects/2487652

# BGB-API
The back-end service for the BGB app.


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
