
# IMDb Analysis Project

## Overview

This repository contains an SQL-based analysis of movie-related data, focusing on actors, directors, genres, movies, and roles. The dataset explores various aspects of the movie industry, providing insights into trends, director-actor relationships, movie popularity, and genre distribution.

## Database Schema

The project uses the following tables to store and manage the data:

- **actors**: Information about the actors (first name, last name, gender).
- **directors**: Details about directors (first name, last name).
- **directors_genres**: Link between directors and movie genres they have worked in.
- **movies**: Information about movies (name, year, rank score, etc.).
- **movies_directors**: Association between movies and directors.
- **movies_genres**: Genre associations for movies.
- **roles**: Roles played by actors in movies.

## SQL Queries

The queries provided in this repository are designed to extract meaningful insights from the dataset. Below are the key SQL operations performed:

### 1. Actors and Directors

- **List all actors**: Query to retrieve the first name, last name, and gender of all actors.
- **Directors and their movies**: Identifying how many movies each director has worked on.
- **Gender distribution**: Counting the number of male and female actors.

### 2. Movie Insights

- **Movies released after 2000**: Retrieving movies that were released after the year 2000.
- **Top 5 movies by rank**: Displaying the top 5 movies with the highest rank score.
- **Movies by director**: Finding movies directed by specific directors (e.g., Anthony Abrams).
- **Movies and genres**: Listing the genres associated with a specific movie ID.

### 3. Advanced Queries

- **Actors in specific roles**: Searching for actors who have played certain roles (e.g., 'Demon').
- **Genres and director involvement**: Analyzing which genres have the highest number of directors working in them.
- **Actors in multiple movies**: Identifying actors who have appeared in more than 5 movies.
- **Directors with multiple genres**: Finding directors who have worked across multiple genres.

### 4. Performance Metrics

- **Average rank score by director**: Ranking directors based on the average rank score of their movies.
- **Genre distribution of directors**: Counting the number of directors who have worked in each genre.

## How to Use

To run the queries in this repository, you will need a MySQL or similar SQL-compatible database system. Simply import the database schema and execute the SQL statements to view the results.

### Installation Steps:

1. **Clone this repository:**
   ```bash
   git clone https://github.com/haneesha-thasni/imdb-analysis.git
   cd imdb-analysis
   ```

2. **Set up the Database:**
   Import the SQL schema and data into your database using:
   ```sql
   CREATE DATABASE imdbanalysis;
   USE imdbanalysis;
   -- Import your data here
   ```

3. **Execute Queries:**
   Run the queries provided in the `queries.sql` file using your SQL client.

## Contributing

Feel free to fork this project, create an issue, or submit a pull request if you have suggestions for improving the analysis or adding new queries.


---

By providing clear sections for setup, queries, and analysis, this README makes it easy for others to understand the project and contribute to it.
