module Cream
  class CacheItem
    attr_reader :value, :expires_at

    def initialize(value, expires_at)
      @value = value
      @expires_at = expires_at
    end

    def expired?
      Time.now > expires_at
    end
  end
end
