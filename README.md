# Bookmark Manager

User Stories
-----

```
As a user,
So that I can keep track of the websites I visit,
I want to see a list of them.
```

Domain Model
-----

<img width="530" alt="model" src="https://user-images.githubusercontent.com/10038681/136923423-33dd4c10-8929-4283-aa4f-1c045aae8980.png">


## DB Set up instructions


* Start PostgreSQL using command:
```
psql
```
* Create a database using the psql command:
```
CREATE DATABASE bookmark_manager;
```
* Connect to the database using the pqsl command
```
\c bookmark_manager;
```
* Run the query we have saved in the file 01_create_bookmarks_table.sql


