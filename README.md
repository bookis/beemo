# Beemo

This is a terrible wrapper for the Vimeo API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'beemo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install beemo

## Usage

Configure
--------

```ruby
Beemo.configuration[:access_token] = ENV["VIMEO_ACCESS_TOKEN"]
```
Use
-----

```ruby
Beemo::User.search("search_term") # => A list of users
Beemo::User.user_info("uid") # => A specific user
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/beemo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
