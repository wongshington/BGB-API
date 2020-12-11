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