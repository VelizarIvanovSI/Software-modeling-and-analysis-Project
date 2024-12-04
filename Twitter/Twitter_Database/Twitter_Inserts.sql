USE TwitterDB

INSERT INTO Users (Username, Email, Name, Bio, Password)
VALUES 
('john_doe', 'john@example.com', 'John Doe', 'Love coding and coffee.', 'password123'),
('jane_smith', 'jane@example.com', 'Jane Smith', 'Travel enthusiast and foodie.', 'pass456'),
('sam_brown', 'sam@example.com', 'Sam Brown', 'Tech geek and gamer.', 'securePass789');

INSERT INTO Tweet (UserID, Content, Media)
VALUES 
(1, 'Hello, Twitter world! This is my first tweet.', NULL),
(2, 'Just tried this amazing new coffee shop!', NULL),
(3, 'Excited to share my latest gaming achievements!', 'game_screenshot.png');

INSERT INTO Hashtag (Text)
VALUES 
('#FirstTweet'),
('#CoffeeLove'),
('#Gaming');

INSERT INTO Mention (UserID, TweetID)
VALUES 
(2, 1), 
(3, 2); 

INSERT INTO Reply (UserID, TweetID, Content, Media)
VALUES 
(2, 1, 'Welcome to Twitter, John!', NULL), 
(3, 2, 'What coffee shop? Sounds great!', NULL); 