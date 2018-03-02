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

Home page
!['Initial homepage'](https://github.com/subclinical/jungle-rails/blob/master/docs/Homepage.png?raw=true)

User registration
!['User registration'](https://github.com/subclinical/jungle-rails/blob/master/docs/Registration.png?raw=true)

Product details and user reviews/ratings
!['Product details and user reviews/ratings'](https://github.com/subclinical/jungle-rails/blob/master/docs/Product.png?raw=true)

Display products by category
!['Display products by category'](https://github.com/subclinical/jungle-rails/blob/master/docs/Display_by_category.png?raw=true)

Edit product selection as Admin
!['Edit products'](https://github.com/subclinical/jungle-rails/blob/master/docs/Admin_products.png?raw=true)

Introduce new products as Admin
!['New products'](https://github.com/subclinical/jungle-rails/blob/master/docs/New_product.png?raw=true)

View shopping cart
!['Shopping cart'](https://github.com/subclinical/jungle-rails/blob/master/docs/Cart.png?raw=true)

Order summary after checkout
!['Order summary'](https://github.com/subclinical/jungle-rails/blob/master/docs/Order_received.png?raw=true)