-- IPL Mini Project
use ipl;
show tables;
-- Checking table data
select * from ipl_user;
select * from IPL_Stadium;
select * from IPL_Team;
select * from IPL_Player;
select * from IPL_Team_players;
select * from IPL_Tournament;
select * from IPL_Match;
select * from IPL_Match_Schedule;
select * from IPL_Bidder_Details;
select * from IPL_Bidding_Details;
select * from IPL_Bidder_Points;
select * from IPL_Team_Standings;

# 1] Show the percentage of wins of each bidder in the order of highest to lowest percentage.

select t1.bidder_id, t1.wins, t1.total_bids, round((t1.wins/t1.total_bids *100),2) as 'Wins'
from
(select ibd.bidder_id, count(ibd.bid_status) as 'wins', sum(ibp.NO_OF_BIDS) as 'total_bids'
from IPL_Bidding_Details ibd, IPL_Bidder_Points ibp
where bid_status ='Won' and ibd.bidder_id=ibp.bidder_id
group by ibd.bidder_id) as t1
order by (t1.wins/t1.total_bids *100) desc;
 

# 2] Display the number of matches conducted at each stadium with stadium name, city from the database.
select m2.stadium_id ,m2.stadium_name, m2.city,m1.`no of matches` from
(select stadium_id ,count(STADIUM_ID) as `no of matches` from ipl_match_schedule
group by stadium_id) as m1
join ipl_stadium m2
on m2.stadium_id=m1.stadium_id;

# 3]	In a given stadium, what is the percentage of wins by a team which has won the toss?
(select s.STADIUM_NAME, im.team_id1 as 'Winner_team_id',it.TEAM_NAME  ,count(im.TOSS_WINNER), count(im.MATCH_WINNER), ( count(im.MATCH_WINNER) /count(im.TOSS_WINNER) * 100) as '% toss(win) is match(win)'
from ipl_match im , IPL_MATCH_SCHEDULE ms, IPL_STADIUM s, IPL_TEAM it
where im.match_id=ms.match_id and s.stadium_id=ms.stadium_id and it.team_id=im.team_id1 and toss_winner=1
group by ms.stadium_id,im.team_id1)
Union
(select s.STADIUM_NAME, im.team_id2, it.TEAM_NAME ,count(im.TOSS_WINNER), count(im.MATCH_WINNER), ( count(im.MATCH_WINNER) /count(im.TOSS_WINNER) * 100) as '% toss(win) is match(win)'
from ipl_match im , IPL_MATCH_SCHEDULE ms, IPL_STADIUM s, IPL_TEAM it
where im.match_id=ms.match_id and s.stadium_id=ms.stadium_id and it.team_id=im.team_id2 and toss_winner=2
 group by ms.stadium_id,im.team_id1);

# 4]	Show the total bids along with bid team and team name.
select bid_team, sum(no_of_bids) , team_name
from ipl_bidding_details  join ipl_bidder_points using(bidder_id)
join IPL_TEAM_STANDINGS using (TOURNMT_ID)
join IPL_TEAM using (team_id) group by bid_team, team_name ;


# 5.	Show the team id who won the match as per the win details.
SELECT MATCH_ID, TEAM_ID, WIN_DETAILS, IF(MATCH_WINNER = 1, TEAM_ID1, TEAM_ID2) AS WINNING_TEAM
FROM ipl_match AS IM JOIN ipl_team AS IT
ON IM.TEAM_ID1 = IT.TEAM_ID;

# 6.	Display total matches played, total matches won and total matches lost by team along with its team name.
SELECT TEAM_NAME, COUNT(MATCH_ID) AS TOTAL_MATCHES, 
SUM(CASE WHEN TEAM_ID1 = MATCH_WINNER THEN 1 ELSE 0 END) AS MATCHES_WON, 
SUM(CASE WHEN TEAM_ID1 != MATCH_WINNER THEN 1 ELSE 0 END) AS MATCHES_LOST
FROM ipl_match AS IM JOIN ipl_team AS IT
ON IM.TEAM_ID1 = IT.TEAM_ID
GROUP BY TEAM_NAME;

# 7]	Display the bowlers for Mumbai Indians team.
select*from ipl_team_players ;

select itp.team_id,itp.player_id,ip.player_name,itp.player_role,team_name from ipl_team_players itp
inner join ipl_player ip on ip.player_id=itp.player_id
inner join ipl_team it on it.team_id=itp.team_id
where it.team_name='Mumbai Indians' and itp.player_role='bowler';

#    Also Tried using Sub-Queries
Select  team_id, player_id,player_role from ipl_team_players 
where player_role='Bowler' 
and team_id = (select team_id from ipl_team where team_name='mumbai indians');

# 8]	How many all-rounders are there in each team, Display the teams with more than 4 
# all-rounder in descending order.
Select PLAYER_ROLE,REMARKS,count(PLAYER_ROLE) as all_rounders
from ipl_team_players
where PLAYER_ROLE='All-Rounder'
group by REMARKS
order by  count(PLAYER_ROLE)  desc
limit 5,2 
;
