Rails Cheat Sheet
=================

### Start the rails server

`rails s`


###Access the sqlite3 database

`sqlite3 db/development.sqlite3`


###Create a new model (e.g. User)

Generate the model class file and the database migration script. 
`rails generate model User name:string email:string ...`

Run the database migration to add the table and fields to your database schema
`rake db:migrate`

Add any methods, fields, etc to the class file at `/app/models/User.rb`

### Create a new controller (page on the site e.g. User profile page)

Controllers are classes that contain groups of pages usually pertaining to a model.
For example the User controller would be for pages having to do with a user. Actions
are each individual page, so like the profile page or settings page.

Generate the controller, view, etc files and add a default route with
`rails generate controller <controller> <actions>` or 
`rails generate controller User profile settings ...` in our case.

Update the routes file if you need a specific URL to point to one of your actions. 
The routes file is at `/config/routes.rb`.

Modify the controller logic and view logic at `/app/controllers/user_controller.rb` and 
`/app/views/users/profile.rb` respectively. Each function in the controller file 
corresponds to a view file.

### Add changes to github

`git add <filename>` or `git add .` if you want to add everything.

`git commit -m "<your commit message>"` to commit the added changes to your branch.

`git push origin master` to push your branch commits to your master branch on github.
