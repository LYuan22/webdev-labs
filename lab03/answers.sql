-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name 
FROM users
ORDER BY last_name;



-- Exercise 4
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26;


-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26 or user_id = 12;



-- Exercise 6
select count(*)
From posts;



-- Exercise 7
select user_id, count(*) as cnt
from comments
group by user_id
order by cnt desc;



-- Exercise 8
select posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name
from users inner join posts on users.id = posts.user_id
WHERE user_id = 26 or user_id = 12;




-- Exercise 9
select posts.id, posts.pub_date, following.id
from following inner join posts on posts.user_id = following.following_id
where following_id = 26;



-- Exercise 10




-- Exercise 11
INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES(26, 219, now());
INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES(26, 220, now());
INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES(26, 221, now());


-- Test code
/*
select user_id, post_id
from bookmarks
where user_id = 26;
*/
-- Exercise 12
delete from bookmarks
where user_id = 26 and post_id = 219;
delete from bookmarks
where user_id = 26 and post_id = 220;
delete from bookmarks
where user_id = 26 and post_id = 221;



-- Exercise 13
update users
set email = 'knick2022@gmail.com'
where id = 26;

/*
select id, email
from users
where id = 26;
*/

-- Exercise 14
