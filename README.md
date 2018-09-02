# Rails Email API for Contact Section 

## A few things you should know:

1.Currently the project uses Postgresql for saving.

2.The email settings are configured for use with gmail, all you need to do is change the required fields

3.Even though there methods for other Http request, only the post option is used.

4.The Front-End is written using AngularJS.

5.The project is little rough around the edges and only minimal things for it to work are configured.

6.I may or may not add a few more things to the project, such as implementing other functions on the front-end.

## Installation and Configuration Process

You should have Ruby 2.5 and Postgresql installed

1.Go to the project root and run
`bundle install`
This downloads and installs the required project gems 

2.Create the database 
`rake db:create db:migrate`

3.Change the required fields in<br>
`/config/environments/*your desired environment* `<br>
`/config/application.yml`<br>
`/app/mailers/new_email_mailer.rb`

4.Serve the API
`rails s`

5.(optional)Test the API using the index.html file in the front-end folder
