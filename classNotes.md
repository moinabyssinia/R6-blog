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

`bin/rails console`

`post = Post.new`
`post.title = "My Breakthrough"`
`post.save`

Use destroy and not delete 

To update the model
`bin/rails generate migration AddBodyToPosts body:text`
`bin/rails generate migration AddBreedToPets breed:string`

To Update the database
`bin/rails db:migrate`

After this create an object - update the post - save it 

### Paritals
In the log, `Rendered posts/_form.html.erb` the underscore indicates it contains a partial 