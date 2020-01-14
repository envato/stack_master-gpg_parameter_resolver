# StackMaster::GpgParameterResolver

[![Build Status](https://travis-ci.org/envato/stack_master-gpg_parameter_resolver.svg?branch=master)](https://travis-ci.org/envato/stack_master-gpg_parameter_resolver)

Resolve [StackMaster] parameters from within GPG encrypted YAML files.

[StackMaster]: https://github.com/envato/stack_master

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stack_master-gpg_parameter_resolver'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stack_master-gpg_parameter_resolver

## Usage

The secret parameters resolver expects a `secret_file` to be defined in the
stack definition which is a GPG encrypted YAML file. Once decrypted and parsed,
the value provided to the secret resolver is used to lookup the associated key
in the secret file. A common use case for this is to store database passwords.

stack_master.yml:

```yaml
stacks:
  us-east-1:
    my_app:
      template: my_app.json
      secret_file: production.yml.gpg
```

secrets/production.yml.gpg, when decrypted:

```yaml
db_password: my-password
```

parameters/my_app.yml:

```yaml
db_password:
  secret: db_password
```

## Development

After checking out the repo, run `script/setup` to install dependencies. You can also run `script/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/envato/stack_master-gpg_parameter_resolver.
