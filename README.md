# Nmapr

A friendly Ruby DSL to [nmap](https://nmap.org/).

## Installation

    $ gem install nmapr

## Usage

Build a `nmap` scan command in friendly, readable way.

```ruby
Nmapr.scan :cmd do
  target '192.168.0.2'
  ports :common
  sequential
  detect :os
  verbose
end
# => "nmap 192.168.0.2 -p 1-1024 -r -O -v"
```

Run those commands.

```ruby
result = Nmapr.scan :run do
  targets 'localhost'
  ports 22, 24
  detect :version
end

# Check stdout, stderr and status of command.
result[:stdout]
result[:stderr]
result[:status]
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Nmapr project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/nmapr/blob/master/CODE_OF_CONDUCT.md).
