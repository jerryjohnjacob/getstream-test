require 'stream_rails'

StreamRails.configure do |config|
  config.api_key     = "acndvmkyr93t"
  config.api_secret  = "up66guf4h6m7zn5u5sm3kv2zghx5e5vg3apbvs7k2qmgrmw8bsku5c3ktfmdv8bs"
  config.timeout     = 30                # Optional, defaults to 3
  config.location    = 'us-east'         # Optional, defaults to 'us-east'
  # If you use custom feed names, e.g.: timeline_flat, timeline_aggregated,
  # use this, otherwise omit:
  config.news_feeds = { flat: "flatfeed", aggregated: "aggregatedfeed" }
  # Point to the notifications feed group providing the name, omit if you don't
  # have a notifications feed
  config.notification_feed = "notificationfeed"
end
