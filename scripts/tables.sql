CREATE TABLE public.fact_team (
team_code int,
team_id int,
team_name varchar(50),
team_played int,
team_draw int,
team_loss int,
team_win int,
team_points int,
team_position int,
team_short_name varchar(10),
team_strength int,
team_strength_overall_home int,
team_strength_overall_away int
);

create table public.fact_gw(
gw_id int,
gw_name varchar (50),
finished boolean);

create table public.fact_player(
gw_stamp int,
player_code int,
element_type int,
event_points int,
first_name varchar(50),
form numeric,
id int,
now_cost numeric,
points_per_game int, 
second_name varchar(50),
selected_by_percent numeric,
status varchar(10),
team int,
team_code int,
total_points int,
value_form numeric,
value_season numeric,
web_name varchar(50),
minutes int,
goals_scored int,
assists int,
clean_sheets int,
goals_conceded int,
bonus int,
bps int,
ict_index numeric
);


insert into public.lu_player (id, code, first_name, last_name, team_name, team_code, player_type)
select id, player_code, first_name, second_name, t.team_name, p.team_code, element_type
from public.fact_player p
left join public.fact_team t on t.team_code = p.team_code


insert into public.lu_playertype (type_id, type_name) values
(1,'GK'),
(2,'DEF'),
(3,'MID'),
(4,'FWD');