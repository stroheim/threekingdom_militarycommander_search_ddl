threekingdom_militarycommander_search_ddl
====
三國志武将検索用DDL   

## requirement
* Sql Server

## create database
`sqlcmd -E -S localhost\sqlexpress -i 00_databases\create_db.sql`
* 「D:\Programs\MSSQL_2012」は環境に合わせて修正してください

## create tables
`sqlcmd -E -S localhost\sqlexpress -d threekingdom -i "01_tables\01_lookup\L0010.sql"`
`sqlcmd -E -S localhost\sqlexpress -d threekingdom -i "01_tables\02_master\M0010.sql"`

## insert initial data
* initialdata.sqlの中身をSSMS等で流してください
* データは[三國志13攻略wiki](http://sangokushi13wiki.wiki.fc2.com/)からの引用です。
    * 具体的には名前、読み、性別、生年、没年、統率、武力、知力、政治を引用しています。

