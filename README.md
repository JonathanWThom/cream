# C.R.E.A.M.

Cache Rules Everything Around Me.

Simple in-memory Ruby cache. Inspired by [go-cache](https://github.com/patrickmn/go-cache).

This project is a WIP!

### Usage

```
# Create a new cache instance with item duration in seconds as the argument:
cache = Cache.new(10)

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
### TODO

* Make it into a gem!
* Another test case or two.

### License

MIT
