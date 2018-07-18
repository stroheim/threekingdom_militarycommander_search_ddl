threekingdom_militarycommander_search_ddl
====
三國志武将検索用DDL   

## requirement
* Sql Server

## create database
`sqlcmd -E -S localhost\sqlexpress -i 00_databases\create_db.sql`

## create tables
`sqlcmd -E -S localhost\sqlexpress -d threekingdom -i "01_tables\01_lookup\L0010.sql"`
`sqlcmd -E -S localhost\sqlexpress -d threekingdom -i "01_tables\02_master\M0010.sql"`
