# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of learning Rails by example.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Email Testing

Email previews of the last order submitted can be viewed from:
http://localhost:3000/rails/mailers/confirmation_mailer/confirmation_email
<img src='https://github.com/MattWillcox/jungle-rails/blob/master/app/assets/images/Screenshot1.png' width='800'></a>

## Screenshots

<img src='https://github.com/MattWillcox/jungle-rails/blob/master/app/assets/images/Screenshot2.png' width='500' alt='home'>
<img src='https://github.com/MattWillcox/jungle-rails/blob/master/app/assets/images/Screenshot3.png' width='500' alt='addprod'>
<img src='https://github.com/MattWillcox/jungle-rails/blob/master/app/assets/images/Screenshot4.png' width='500' alt='prodshow'>
<img src='https://github.com/MattWillcox/jungle-rails/blob/master/app/assets/images/Screenshot5.png' width='500' alt='cart'>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
