# Sell It (Rails App)

Application for buying and selling products created to learn rails 7 using Aprendev youtube channel tutorial, with some modifications to run in production and dockerized.

## What can we do in the app?
* Register, Login, Logout.
* Post, view, edit and delete products.
* Filter products by name, price or category.
* Sort products by price or publication date.
* Admin users can create, edit and delete categories.
* Users can add or remove favorite products.

## The cool things
* Infinite scrolling: it does not show all available products, but they are loaded as you scroll.
* Real-time product updates: when a user updates a product, other users viewing the same product detail will see the change reflected thanks to websocket.
* Email sending: when a user registers a welcome message will be sended to the e-mail inbox.
* Background jobs: using Sidekiq we can queue tasks to run in the background such as sending emails.
* Language (English and Spanish only): detects the language configured in the browser to know which language to use in the application.

### Things to improve
Mainly the styles -> coming soon!

## Requirements
* Docker
* Rails (only to generate the master key)
* A Sendgrid account ready to send messages

## How to run it
* Remove the .example from the .env.example file name so that only .env remains.
* In the contents of the .env file replace the values between <> with your values.
    * POSTGRES_DB: What you want the database to be called.
    * POSTGRES_USER: The user you will use to login to the database.
    * POSTGRES_PASS: The password you will use to login to the database.
    * RAILS_MASTER_KEY: to generate the master key you will need to execute the following command:
       ```
       rails credentials:edit
       ``` 
       this will generate a master.key file in the config folder, copy the value inside and use it for this environment variable.
    * SENDGRID_DOMAIN: your domain, for example yourdomain.com
    * SENDGRID_FROM: This has to be the email address you set up in Sendgrid as sender.
    * SENDGRID_API_KEY: Your apikey generated in sendgrid.
* Finally in the root folder run the command:
    ````
    docker-compose up --build
    ````