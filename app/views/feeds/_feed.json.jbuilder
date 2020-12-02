json.extract! feed, :id, :username, :body, :likes_count, :reposts_count, :created_at, :updated_at
json.url feed_url(feed, format: :json)
