# Create a database that stores movie, game, and book backlogs
  # movie has id, name, length, release, completed 
  # game has id, name, length, release, completed
  # book has id, name, author, pages, completed

# bring in the sqlite3 gem and faker gem 
require 'sqlite3'
require 'faker'

# create the database 
backlogs = SQLite3:: Database.new("backlogs.db")

# create the tables that we will be using assigned to variables

# create movie table 
create_movie_table = <<-SQL
  CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    length INT,
    release_year INT,
    completed BOOLEAN
  )
SQL

backlogs.execute(create_movie_table)

