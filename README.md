# QuickeyRubySdk

A Passwordless Authentication Platform and Login Management System for Application

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'quickey_ruby_sdk'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install quickey_ruby_sdk

## Usage

```
require 'quickey_ruby_sdk'

quickey = QuickeyRubySdk::App.new(api_key: "YOUR API KEY")
```
### Get App Data
```
appData = quickey.getMetaData
puts appData
```
### Get Access Token
```
accessToken = quickey.getAccessToken(appData["app"]["email"])

or 

accessToken = quickey.getAccessToken("YOUR APP EMAIL")
puts accessToken
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/quickey_ruby_sdk. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/quickey_ruby_sdk/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the QuickeyRubySdk project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/quickey_ruby_sdk/blob/master/CODE_OF_CONDUCT.md).
