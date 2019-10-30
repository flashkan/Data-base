use vk;

-- Первое задание
SELECT * FROM `messages` where from_user_id = 1 or to_user_id = 1;
SELECT * FROM `friend_requests` where (initiator_user_id = 1 or target_user_id = 1) and status = 'approved';
 
select user_id, count(*) as count from (
    select from_user_id as user_id from (
		SELECT * FROM messages 
		where from_user_id in (
			SELECT target_user_id FROM friend_requests 
			where initiator_user_id = 1 and status = 'approved'
			union
			SELECT initiator_user_id FROM friend_requests 
			where target_user_id = 1 and status = 'approved')
		or to_user_id in (
			SELECT target_user_id FROM friend_requests 
			where initiator_user_id = 1 and status = 'approved'
			union
			SELECT initiator_user_id FROM friend_requests 
			where target_user_id = 1 and status = 'approved')
		having from_user_id = 1 or to_user_id = 1
	) as something 
	where from_user_id != 1
	union all
	select to_user_id as user_id from (
		SELECT * FROM messages 
		where from_user_id in (
			SELECT target_user_id FROM friend_requests 
			where initiator_user_id = 1 and status = 'approved'
			union
			SELECT initiator_user_id FROM friend_requests 
			where target_user_id = 1 and status = 'approved')
		or to_user_id in (
			SELECT target_user_id FROM friend_requests 
			where initiator_user_id = 1 and status = 'approved'
			union
			SELECT initiator_user_id FROM friend_requests 
			where target_user_id = 1 and status = 'approved')
		having from_user_id = 1 or to_user_id = 1
	) as user_id 
where to_user_id != 1) as id
group by user_id;


-- Второе задание
select count(*) as count from likes where media_id in(
	select id from media where user_id in(
		select user_id from profiles where timestampdiff(YEAR, birthday, now()) < 10
	)
);


-- Третье задание
select gender, count(*) from profiles where user_id in(
	select user_id from likes
) group by gender;