# SQL

Pie-in-the-Sky
IPL Match Bidding App

Pie-in-the-Sky, is a mobile app that is used for bidding for IPL matches legally. Any registered user can bid for any of the IPL matches listed in it. New users or the bidders need to register themselves into the app by providing their mobile phone number, email id and a password. Admin will maintain the match roster and keep updating other details in the system.
The app shows the match details which includes the playing team, the venue of the match and current standing of the teams on the points table. It will display the winner at the end of the match and update the team standings in the tournament and bidder points table. System will send updates to the bidders whenever required. It will also generate the bidders' leader board.
App functionalities:
•	Predict Winner
The app allows the user to predict the winner of the match before toss happens for the match on which the user is predicting. This is dynamic as the matches can have different start time. Start time will also be influenced by disruptions like rains and other unforeseen circumstances. User will not be able to see what others users have predicted. Users can change the team bids only till the toss happens. Once the toss happens everything freezes for that match.
•	Point System
For every win, users get points. There are no negative points, meaning if the user loses the bid, he or she does not lose his/her points. Point system is very dynamic. 
At the start of the tournament when every team is at zero points, every user who wins the prediction, wins 2 points.
If the difference in the points between two teams playing, is <= 6, but > 0, then the person who predicts: 
-	Team with higher points will win, gets 2 points 
-	Team with lower points will win, gets 3 points
If the difference in the points between two teams playing is > 6 , then the person who predicts: 
-	Team with higher points will win, gets 2 points 
-	Team with lower points will win, gets 5 points

•	Leader Board
At every time the user will be able to see his/her points and his/her position in the overall user standings. He/she will also be able to see top 3 leader positions

A bidder can do following things using this app:
•	can see all the match schedules (teams, date & time of the match, location). 
•	bid on a team for a match before the start of the match 
•	can predict the match winner only till its toss occurs (Note that match start time might change due to weather conditions)
•	can bid for any number of matches
•	after bidding on a team, (s)he would be able to change his/her team before the match starts
•	bidding cannot be changed once the respective match starts
•	can cancel the bid on a match; will not lose any points
•	at any time, bidder will be able to see his/her points and his/her position in the overall bidder standings. 
•	can see top 3 leader positions
•	can see team standings anytime (i.e. their points tally)
•	cannot see any details of other bidders

Admin can do following activities:
•	manage tournament (tournament id, duration, description)
•	manage teams (description of players and team)
•	schedule and reschedule matches. Each team will play only once with remaining teams
•	edit details of match and stadium
•	update match statistics (date and match result of all the earlier matches)
•	declare the result of the match along with their scores
•	declare winner and loser along with their points
•	update team statistics (team and player performance)
•	update overview at the end of the match
•	view all the bidders bidding on a particular team and the %age of users supporting a team



ER Diagram

 

 
List of Tables


1.	Table: IPL_User

Column name	Data type	Comments
UserId	VARCHAR	Primary key
Password	VARCHAR	Not null, encrypted format
User_type	VARCHAR	Admin or Bidder. Not null
Remarks	VARCHAR	


2.	Table: IPL_Stadium

Column name	Data type	Comments
StadiumId	NUMBER	Primary key
Stadium_name	VARCHAR	Unique, Not null
City	VARCHAR	
Capacity	NUMBER	
Address	VARCHAR	
Contact_no	NUMBER	

3.	Table: IPL_Team

Column name	Data type	Comments
TeamId	NUMBER	Primary key
Team_name	VARCHAR	Unique, Not null
Team_city	VARCHAR	Origin city of the team
Remarks	VARCHAR	

4.	Table: IPL_Player

Column name	Data type	Comments
PlayerId	NUMBER	Primary key
Player_name	VARCHAR	Unique, Not null
Performance	VARCHAR	Performance details
Remarks	VARCHAR	

5.	Table: IPL_Team_players

Column name	Data type	Comments
TeamId	NUMBER	Composite Primary key
PlayerId	NUMBER	Composite Primary key
Player_role	VARCHAR	Captain, Batsman, Bowler, WK, etc.
Remarks	VARCHAR	


6.	Table: IPL_Tournament

Column name	Data type	Comments
TournamentId	NUMBER	Primary key
Tournament_name	VARCHAR	Not null
From_date	DATE	
To_date	DATE	
Team_count	NUMBER	
Total_matches	NUMBER	
Remarks	VARCHAR	

7.	Table: IPL_Match

Column name	Data type	Comments
MatchId	NUMBER	Primary key
TeamId1	NUMBER	FK from Team table. Not null
TeamId2	NUMBER	FK from Team table. Not null
TossWinner	NUMBER	Team no. 1 or 2
MatchWinner	NUMBER	Team no. 1 or 2
WinDetails	VARCHAR	Team 1 or 2 Won by XX runs or X wickets, Match tied.
Remarks	VARCHAR	E.g. Match canceled due to rain.
	

8.	Table: IPL_Match_Schedule

Column name	Data type	Comments
ScheduleId	NUMBER	Primary key
TournamentId	NUMBER	FK from Tournament table. 
MatchId	NUMBER	FK from Match table. 
Match_type	VARCHAR	League, Knock out, Final, etc.
Match_date	DATE	This date should be within the from and to dates of the tournament.
Start_time	TIME	
StadiumId	NUMBER	FK from Stadium table
Status	VARCHAR	Scheduled, Completed, Cancelled, etc.
Remarks	VARCHAR	

9.	Table: IPL_Bidder_Details

Column name	Data type	Comments
BidderId	NUMBER	Primary key
UserId	NUMBER	FK from User table.
Bidder_name	VARCHAR	Not null
Contact_no	NUMBER	Not null
Emailid	VARCHAR	
Remarks	VARCHAR	

10.	Table: IPL_Bidding_Details

Column name	Data type	Comments
BidderId	NUMBER	FK from Bidder table. Composite Primary key
ScheduleId*	VARCHAR	FK from Match_Schedule table. Composite Primary key.
BidTeam	NUMBER	One of the team ids of the match (1 or 2). Composite primary key.
BidDate	DATETIME	Exact date & time of placing the bid. Update this column if a bidder re-bids on the same team for the same match. Composite Primary key.
BidStatus	VARCHAR	Bid, Cancelled, Won, Lost
* FK from Match_Schedule to bid for only matches that are ‘scheduled’.
 
11.	Table: IPL_Bidder_Points

Column name	Data type	Comments
BidderId	NUMBER	FK from Bidder table. Primary key
TournamentId	NUMBER	FK from Tournament table. 
No_of_bids	NUMBER	Total no. of bids placed by a bidder. Updated after completion of the match on which s/he placed the bid.
No_of_matches	NUMBER	Total no. of matches on which s/he placed the bid. Updated as above.
Total_points	NUMBER	Not null. Default 0

12.	Table: IPL_Team_Standings

Column name	Data type	Comments
TeamId	NUMBER	FK from Team table. Primary key
TournamentId	NUMBER	FK from Tournament table. 
Matches_played	NUMBER	Not null. Default 0
Matches_won	NUMBER	Not null. Default 0
Matches_lost	NUMBER	Not null. Default 0
Matches_tied	NUMBER	Default 0
No_result	NUMBER	Default 0
Points	NUMBER	Not null. Default 0
Remarks	VARCHAR	

 
Instructions:

1.	Create these tables in the database by running the database script provided
2.	The script also has statements to insert appropriate data into all these tables
3.	Test the successful execution of the script by selecting some rows from few tables
4.	Clearly understand the structure of each table and relationships among them
5.	Insert / update appropriate rows into relevant tables if you need to get more rows in the output to verify your answers

Questions – Write SQL queries to get data for following requirements:

1.	Show the percentage of wins of each bidder in the order of highest to lowest percentage.
2.	Display the number of matches conducted at each stadium with stadium name, city from the database.
3.	In a given stadium, what is the percentage of wins by a team which has won the toss?
4.	Show the total bids along with bid team and team name.
5.	Show the team id who won the match as per the win details.
6.	Display total matches played, total matches won and total matches lost by team along with its team name.
7.	Display the bowlers for Mumbai Indians team.
8.	How many all-rounders are there in each team, Display the teams with more than 4 
all-rounder in descending order.
