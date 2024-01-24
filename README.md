# UserText

`UserText` is a gem to format the input by user.

## Installation

Install the gem and add to the application's Gemfile by executing:

```
$ bundle add user_text
``` 

If bundler is not being used to manage dependencies, install the gem by executing:

```
$ gem install user_text
```

## Usage

```ruby
text = <<EOS
Hello, World!

My email address is user@example.com

https://example.com/path/to/page
EOS
UserText.format(text)
# => "Hello, World!<br><br>My email address is <a href=\"mailto:user@example.com\">user@example.com</a><br><br><a href=\"https://example.com/path/to/page\" target=\"_blank\">https://example.com/path/to/page</a><br>"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/i2bskn/user_text.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
