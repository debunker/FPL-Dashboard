# FPL Dashboard
Fantasy Premier League is quite popular among football enthusiasts and lets you manage a group of player. Luckliy for some of us, there is plenty of data available related to manage these players. In this rep, I am retrieving data from the premier league FPL website (https://fantasy.premierleague.com) and building databases that can store this data for processing later.

Required
- Pentaho DI for ETL
- Postgres local DB (or Amazon Free Tier)
- Power BI for Data Visualization

Steps:
- Setup local postgres server with the databases: scripts/tables.sql
- Run DI job to update the data. (Not Automated)
- Build/ modify the Power BI dashboard 
- Update Manage Track players/teams
- WIN
