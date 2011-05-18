# basecamp.rss

Basecamp uses HTTP authentication on RSS feeds, but some readers don't support it. This acts as a proxy.

Simply prepend the RSS URL with the app and token:

    http://localhost:4567/[token]/https://...basecamphq.com/feed/recent_items_rss

