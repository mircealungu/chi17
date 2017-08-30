SELECT rss_feed_registration.rss_feed_id, rss_feed.title, count(rss_feed_registration.rss_feed_id)
FROM rss_feed_registration JOIN rss_feed ON rss_feed_registration.rss_feed_id = rss_feed.id
WHERE rss_feed.language_id = 'fr'
GROUP BY rss_feed_registration.rss_feed_id;