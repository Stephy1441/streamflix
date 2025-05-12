use streamflix;


create TABLE Movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    year INT,
    genre VARCHAR(50),
    language VARCHAR(50)
);
CREATE TABLE Users (
    user_id VARCHAR(10) PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    country VARCHAR(50),
    subscription_status VARCHAR(20),
    total_watch_time INT,
    device VARCHAR(20)
);
CREATE TABLE Ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(10),
    movie_id INT,
    rating DECIMAL(2,1),
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) ON DELETE CASCADE
);
alter table movies
 add column country varchar(20);

