require 'stream_rails'

StreamRails.configure do |config|
  config.api_key      = "vzb32nsdn73r"
  config.api_secret   = "y73934u7xru4mc2hbu4698vnea6h48vkcejnh8t9swutjup9yxze8tkurj9z76bk"
  config.timeout      = 30                  # Optional, defaults to 3
  config.location     = 'us-east'           # Optional, defaults to 'us-east'
  config.api_hostname = 'stream-io-api.com' # Optional, defaults to 'stream-io-api.com'
  # If you use custom feed names, e.g.: timeline_flat, timeline_aggregated,
  # use this, otherwise omit:
  config.news_feeds = { flat: "timeline_flat", aggregated: "timeline_aggregated" }
  # Point to the notifications feed group providing the name, omit if you don't
  # have a notifications feed
  config.notification_feed = "notification"
end
