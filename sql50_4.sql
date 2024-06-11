/* Write your T-SQL query statement below */
--find invalid tweet_id with content string more than 15 characters
select tweet_id from Tweets nolock
where len(content) > 15