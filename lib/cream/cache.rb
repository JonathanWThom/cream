require "cream/cache_item"

module Cream
  class Cache
    attr_reader :duration_seconds, :items

    def initialize(duration_seconds)
      @duration_seconds = duration_seconds
      @items = {}
    end

    def set(key, value)
      expires_at = Time.now + duration_seconds
      item = Cream::CacheItem.new(value, expires_at)
      items.merge!(Hash[key, item])
    end

    def get(key)
      item = items[key]

      if item&.expired?
        items.delete(key)
        return nil
      end

      item&.value
    end
  end
end
