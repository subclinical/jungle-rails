# Jungle

An Amazon-clone made with Ruby on Rails offering popular E-commerce features.

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Run `bin/rake db:reset` to create, load and seed db
4. Create .env file based on .env.example
5. Sign up for a Stripe account
6. Put Stripe (test) keys into appropriate .env vars
7. Run `bin/rails s -b 0.0.0.0` to start the server
8. Go to `http://localhost:3000` to start shopping!

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots

