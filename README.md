# README

# Phase-4-Week-One-Code-Challeng:Pizzas Restaurants

# Introduction

In this challenge, we'll be working on a Restaurant backend API using rails.

# Requirements 

This challenge has :
  * Rails API backend
  * Three Resources

# Challenge Setup

* To download the dependencies for the backend, run:

bundle install

There is some starter code in the db/seeds.rb file so that once you've generated the models, you'll be able to create data to test your application.

You can run your Rails API on localhost:3000 by running:

rails s


Run the Rails server and using Postman to make requests

# Models
Our tables has following relationships:

A `Restaurant` has many `Pizzas` through `RestaurantPizza`
A `Pizza` has many `Restaurants` through `RestaurantPizza`
A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`
Start by creating the models and migrations for the following database tables:
![Screenshot from 2023-03-20 04-03-02](https://user-images.githubusercontent.com/117839936/226223100-4359f4ed-e536-449d-b943-1ca322761d11.png)



Then, run the migrations and seed file:

`rails db:migrate db:seed`

If you aren't able to get the provided seed file working, you are welcome to generate your own seed data to test the application.

# Validations
Add validations to the RestaurantPizza model:

must have a `price` between 1 and 30


# Routes
Set up the following routes. Make sure to return JSON data in the format specified along with the appropriate HTTP verb.

`GET /restaurants`
Return JSON data in the format below:

`[
  {
    "id": 1,
    "name": "Sottocasa NYC",
    "address": "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    "id": 2,
    "name": "PizzArte",
    "address": "69 W 55th St, New York, NY 10019"
  }
]`


[Screencast from 21-03-2023  9:39:59 WB.webm](https://user-images.githubusercontent.com/117839936/226717516-3982f6fd-5145-48e1-8c5a-93e285357011.webm)



`GET /restaurants/:id`
If the Restaurant exists, return JSON data in the format below:

`{
  "id": 1,
  "name": "Sottocasa NYC",
  "address": "298 Atlantic Ave, Brooklyn, NY 11201",
  "pizzas": [
    {
      "id": 1,
      "name": "Cheese",
      "ingredients": "Dough, Tomato Sauce, Cheese"
    },
    {
      "id": 2,
      "name": "Pepperoni",
      "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
    }
  ]
}`

[Screencast from 21-03-2023 10:25:33 WB.webm](https://user-images.githubusercontent.com/117839936/226720059-8eb81d6d-2da1-40f3-89ab-10d78648fc37.webm)


If the Restaurant does not exist, return the following JSON data, along with the appropriate HTTP status code:

`{
  "error": "Restaurant not found"
}`

[Screencast from 21-03-2023 10:29:30 WB.webm](https://user-images.githubusercontent.com/117839936/226721747-243e3c1f-19a1-479e-ae08-2ac10601f174.webm)


`DELETE /restaurants/:id`
If the Restaurant exists, it should be removed from the database, along with any `RestaurantPizzas` that are associated with it (a `RestaurantPizza` belongs to a `Restaurant`, so you need to delete the `RestaurantPizzas` before the `Restaurant` can be deleted).

After deleting the Restaurant, return an empty response body, along with the appropriate HTTP status code.

If the `Restaurant` does not exist, return the following JSON data, along with the appropriate HTTP status code:

`{
  "error": "Restaurant not found"
}`

[Screencast from 21-03-2023 10:44:12 WB.webm](https://user-images.githubusercontent.com/117839936/226723724-3c561017-5ae5-48c0-ae14-85890ed627ff.webm)



`GET /pizzas`
Return JSON data in the format below:

`[
  {
    "id": 1,
    "name": "Cheese",
    "ingredients": "Dough, Tomato Sauce, Cheese"
  },
  {
    "id": 2,
    "name": "Pepperoni",
    "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
  }
]`

[Screencast from 21-03-2023 10:45:57 WB.webm](https://user-images.githubusercontent.com/117839936/226724288-a4c7d4de-4c9f-423b-9b39-6420c967ce2b.webm)


`POST /restaurant_pizzas`
This route should create a new `RestaurantPizza` that is associated with an existing `Pizza` and `Restaurant`. It should accept an object with the following properties in the body of the request:

`{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 3
}`

[Screencast from 21-03-2023 10:48:59 WB.webm](https://user-images.githubusercontent.com/117839936/226724881-b5e8405b-12f2-4af2-9e7c-afc727b010c9.webm)


If the `RestaurantPizza` is created successfully, send back a response with the data related to the Pizza:

`{
  "id": 1,
  "name": "Cheese",
  "ingredients": "Dough, Tomato Sauce, Cheese"
}`
[Screencast from 21-03-2023 10:52:18 WB.webm](https://user-images.githubusercontent.com/117839936/226726397-2183faa8-3145-465d-94dd-7eb4bd2705d5.webm)


If the `RestaurantPizza` is not created successfully, return the following JSON data, along with the appropriate HTTP status code:

`{
  "errors": ["validation errors"]
}`

[Screencast from 21-03-2023 11:03:38 WB.webm](https://user-images.githubusercontent.com/117839936/226728148-731013db-f028-421b-bdbb-d7130fa3afcd.webm)


