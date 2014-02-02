Railscast sm-rc223 and 228 and 240
===================================


git clone
```

```
database setup
```
rake db:create
rake db:migrate
rails g bootstrap:install
rails g simple_form:install
rake db:seed
```
scaffold
```
#todo
rake db:migrate
rails g bootstrap:themed orders -f
````
Making chart for too many data
```
Morris.js (a light weight javascript and independent)
download compressed version from - http://www.oesmith.co.uk/morris.js/
Morris depend upon Raphael - download compressed version form - http://raphaeljs.com/
add morris.js and raphael.js in javascripts
```
changes in application.js
```
//= require raphael
//= require morris
```

Railscast 228
------------------
sortable columns
```
sorting on any column
```
see sortable method in helper.rb for order
uses helper_method defined in ordercontroller in helper.rb
```

Railscast 240
-------------------
Now if want to have sort, search and pagination at same time
```
Run Rails server
But till this point nothing is persistence as search will lost as soon as we sort
```
When search is clicked it loses sort_column and direction
```
so need to pass sort_column and direction as hidden field
```
Now through ajax
```
```
see application.js
ajaxify pagination and column_name
created index.js.erb
````
    
    
