# Sparta-SDET project

In this project I created a website using sinatra(ERB) to call the NASA api, and display relevant information appropriately onto my website. My website performs CRUD( Create, Read, Update, Destroy) actions.

My app is fully automated Unit and front end tested as part of the product.

## Installing

To clone the repo into your Mac computer, in the terminal

```
git@github.com:Narullah7/sparta-sdet-project.git
```
once you go into the folder, in the terminal you will need to do:

```
gem install capybara
```
```
gem install cucumber
```
```
bundle install

```

To seed the database, you will need to have PostgreSQL installed, and to create a database in PostgreSQL
```
psql
```
Then in the PostgreSQL interactive terminal
```
CREATE DATABASE blog;
\quit
```
Then to seeq the database run:
```
psql -d blog -a -f seed.sql
```


To get the app running, in the terminal

```
rackup
```
then in your web browser, in the URL
```
localhost:9292
```
## Running the tests

To run the tests you will need to be in the root directory and in the terminal do:
```
rspec
```

This will run the unit tests for the website
```
cucumber
```
This will run the unit integration testing for the website
