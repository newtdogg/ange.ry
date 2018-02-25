# Ang.ry
------------

Ang.ry is a website that allows users to leave only negative reviews of restaurants local to them. A user can create a profile with an avatar, and upload a restaurant to be berated.

![UEgif](https://github.com/GeorgeWhiting/ange.ry/blob/master/angry_gif.gif)

## Overview

The project was our first time using rails. Because of this we opted not to use scaffolding, instead got used to the nature of building a rails app. We decided to go with the idea of a negative review website, as it gave the project more personality than just recreating a yelp clone. HTML and CSS was used for the front end, with bootstrap as HTML scaffolding.

Rails was completely new to all four of us, and its difficult to get used to the rails 'magic'. In previous projects, there is more flexibility in how a project can be set up, tested etc. Using rails theres a very clear structure that has to be followed. We were also restricted by only having 5 days to create the app, which limited how many features could be added. This also prohibited improvements to design and UI.

## Set Up
```
bundle install       # Installs the dependencies
rails db:migrate     # To migrate the db 
rackup               # To run the server
```
Then navigate to localhost:9292


## Testing
```
bundle install                       # Install the dependencies
bin/rails db:migrate RAILS_ENV=test  # Migrate the test database
rspec                                # Run the tests
```

We opted to set up our own testing environment, rather than using the one given to us by rails. We looked into the rails testing framework but we felt more comfortable using one we have worked with before. Our choice of test suite was rspec with capybara for front end testing. Most of the testing was done on the user interface, with some backend tests covering model behaviour.

## User Stories



```
V1:

As a user
I can leave a review of a restaurant

As a restaurant owner
I can upload my restaurant to get berated by unhappy users

As a user
I can rate a restaurant between 1 & 5 stars

As an unhappy restaurant owner
I can delete or edit my failing restaurant

As a user
I can visit a page with all the restaurants and their average ratings on
```

```
V2:

As a user
I can sign up to use ange.ry

As a user
I can see that I am logged in

As a user
I have the option to log in

As a user
I have the option to log out

As a user
I have the option to edit my details

As a user
I want to see who is reviewing each restaurant

```

```
V3:

As a website
I want my users to be logged in before posting reviews

As a restaurant owner
I want to be the only one able to edit or delete my restaurant

As a restaurant owner
I only want one review per customer

As a user
I want to be able to edit or delete my review

```
