# C.R.E.A.M.

Cache Rules Everything Around Me.

Simple in-memory Ruby cache. Inspired by [go-cache](https://github.com/patrickmn/go-cache).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "cream"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cream


## Usage

```
# Create a new cache instance with item duration in seconds as the argument:
cache = Cream::Cache.new(10)

# Set a cache value:
cache.set(:test, "result")

# Get a cache value:
cache.get(:test)
=> "result"

# After some time as has passed, the item will expire:
cache.get(:test)
=> nil

# Reset a key. Time to expiration will reset.
cache.set(:test, "original")
cache.set(:test, "reset")
cache.get(:test)
=> "reset"

# Cache#items and Cache#duration_seconds are both publicly readable for debugging.
cache.items
=> {:test=>#<CacheItem:0x00007ffac103f4d0 @value="result", @expires_at=2019-02-07 08:24:57 -0800>}

cache.duration_seconds
=> 10

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JonathanWThom/cream.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
