delimiter //

drop function if exists hello//
create function hello ()
returns text deterministic
begin
	set @time = hour(now());
	if(@time >= 6 and @time < 12) then
		return 'Доброе утро';
	elseif(@time >= 12 and @time < 18) then
		return 'Добрый день';
	elseif(@time >= 18 and @time < 24) then
		return 'Добрый вечер';
	else
		return 'Доброй ночи';
	end if;
end//

select hello()//