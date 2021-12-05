### Rails Notes - Treehouse - Jay M.
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

### Setting up a `has_many` association between the Post and Comment models


### adding a comment model
`bin/rails generate model Comment content:text name:string`
`bin/rails db:migrate`

### adding foreign key to the comments table
### creates a generation file; :index to index it 
`bin/rails g migration AddPostToComments post_id:integer:index`
`bin/rails db:migrate`

### manually adding comments using console
`post = Post.first`
`comment = post.comments.build`
`comment.content = "It was good to see them together even briefly"`
`comment.name = "Michael Tadesse"`
`comment.save`

### to create and save right away 
`post.comments.create(content: "It was good to see them together even briefly", name: "Michael"`

### to view comments 
`pp Post.last.comments`
`pp Post.first.comments`
`pp Comment.all`

### connecting comments to posts
but a comment can have only one post - thus it belongs to ...
when setting up a `has_many` association from one model to another
make sure you setup also a `belongs_to` association from this model to the other

`belongs_to :post`

### rollback changes 
`bin/rails db:rollback`

### destroy a migration
`bin/rails destroy migration AddPostToComments`

### list out all migrations
`ls db/migrate`

### handling many-to-many relationships
`bin/rails g migration CreateJoinTableUsersForums users forums`
`has_and_belongs_to_many :forums` 

### appending forums to users
`user = User.find_by(name: "Michael")`
`user.forums << Forum.find_by(name: "Ruby")`

### has_many_through relationships 
user - subscription - magazine

`bin/rails g model Subscription months:integer subscriber_id:integer magazine_id:integer`
update subscription model
`belongs_to :subscriber`
`belongs_to :magazine`
update subscriber model
`has_many :subscriptions`
`has_many : magazine, through: :subscriptions`
update magazine model
`has_many :subscriptions`
`has_many :subscribers, through: :subscriptions`
