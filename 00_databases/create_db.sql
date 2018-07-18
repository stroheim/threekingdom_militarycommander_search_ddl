-- DB�̍쐬
use master;
go

create database threekingdom
on
(
NAME = threekingdom,
FILENAME='D:\Programs\MSSQL_2012\threekingdom.mdf',
SIZE=8MB,
FILEGROWTH=64MB
)
LOG ON
(
NAME = threekingdom_log,
FILENAME='D:\Programs\MSSQL_2012\threekingdom_log.ldf',
SIZE=8MB,
FILEGROWTH=64MB
)
go
