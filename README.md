# Sparta-SDET project

In this project I created a website using sinatra(ERB) to call the NASA api, and display relevant information appropriately onto my website. My website performs CRUD( Create, Read, Update, Destroy) actions.

My app is fully automated Unit, API and front end tested as part of the product.

## Installing

In the terminal you will need to do:

```
bundle install

```

And also install Capybara, Selenium, Cucumber as these gems are used in the unit integration testing

To seed the database, you will need to have PostgreSQL installed, the gem is installed with "bundle install"

In the terminal

```
psql -d YourDatabase -a -f seed.sql
```
with "YourDatabase" being the database you created, You would also need to change the ruby file in the models folder to match your database name.

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

cucumber
```
rspec will do the unit testing for the website, and cucumber will do the unit integration testing for the website.
