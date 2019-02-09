$redis = Redis::Namespace.new("sender:#{Rails.env}", redis: Redis.new)
