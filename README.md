#### Getting Started

Install ElasticSearch, for Homebrew use: 
```
$ brew install elasticsearch
$ elasticsearch
```

if you get into an error while running `elasticsearch` run:
```
$ ps aux | grep 'elastic'
$ kill -9 <PID>
$ elasticsearch
```

On the App root run:
```ruby
$ rake db:create db:migrate db:seed
```

On the console, add data to the search index:
```ruby
$ rails c
$ Product.reindex 
```
Query:
```ruby
Product.search("Table")
```

#### Gems to have
```
gem "httparty"
gem "searchkick"
```
also make sure to have the following set to the model in which you need search to happen
```
searchkick
```