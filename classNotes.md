### Rails Notes
The power of convention over configuration

### Model-View-Controller (MVC) arichitecture
Model: writes ruby objects to the database and reads them later
View: shows data to users, most often in HTML
Controller: respond to requests by users, cordinates with Model and View

`rails new appname` - creates new rails app


### Rails Resource 

Resource: a type of object that that you want users to be able to create instances of, read data for, update data for, and delete instances of when they don't want them anymore

#### CRUD operations  

Rails uses components called a model, a view and a controller to perform these CRUD operations

### Rails Scaffold
A Rails "scaffold" creates a model, view, and controller for a resource, all at once.

`bin/rails generate scaffold Post title:string`

Do the migration before doing localhost

`bin/rails db:migrate`

### How rails process a request
* Rails looks at the request to figure out which code should handle it
* request gets routed to action method on a controller
* the controller loads the resource in from the databse using a model class
* the controller rendes a view using the model data


### Rails console
`bin/rails console` - generate rails console 

`pet = Pet.new`
`pet.title = "Clara"`
`pet.save`

Use destroy and not delete 

`pet = Pet.find(3)` - assign the pet with id = 3 to pet

### Migration 

To update the model
`AddBodyToPosts` is a migration name
`bin/rails generate migration AddBodyToPosts body:text`
`bin/rails generate migration AddBreedToPets breed:string`

To Update the database after migration
`bin/rails db:migrate`

After this create an object - update the post - save it 

### Paritals
In the log, `Rendered posts/_form.html.erb` the underscore indicates it contains a partial 

### Strong parameters
app>controllers>post_controller.rb - adjust post_params method to include desired parameters

### Routes
how rails sends a particular request to the particular controller that can handle it 

`bin/rails routes` - check all the routes set up for the app

`Rails.application.routes.draw do
  get '/pets', to: 'pets#index'
end
`

### Creating a controller to handle request
`bin/rails generate controller Pages` - will add a pagescontroller.rb file 