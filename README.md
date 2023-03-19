# README

# Phase-4-Week-One-Code-Challeng:Pizzas Restaurants

# Introduction

In this challenge, we'll be working on a Restaurant backend API using rails.

# Requirements 

This challenge has :
  * Rails API backend
  * Three Resources

# Challenge Setup

* Create a new Rails project

    Run `rails new pizza-pan --api --minimal` in the terminal to create a new rails api

* Generate the resources for three tables through the terminal:

    -`Restaurant` table that has many `Pizza's` through `RestaurantPizza` by running:
          `rails g resource Restaurant name location --no-test-framework`

    -`Pizza` has many `Restaurants` through `RestaurantPizza` by running:
          `rails g resource Pizza  name toppings:text --no-test-framework`

    -A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza` by running:
          `rails g resource RestaurantPizza  price restaurants:belongs_to pizzas:belongs_to --no-test-framework`

* Run the migrations to create the schema for our tables and seed the sample data to our tables
 
    Run `rails db:migrate db:seed`


