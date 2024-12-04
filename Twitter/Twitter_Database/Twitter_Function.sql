use TwitterDB

CREATE FUNCTION GetTweetCount
(
    @UserID INT
)
RETURNS INT
AS
BEGIN
    -- ??????????? ?? ?????????? ?? ????
    DECLARE @TweetCount INT;
    
    -- ??????????? ?? ???? ?? ????????? ?? ??????? UserID
    SELECT @TweetCount = COUNT(*)
    FROM Tweet
    WHERE UserID = @UserID;
    
    -- ??????? ?? ?????????
    RETURN @TweetCount;
END;

SELECT dbo.GetTweetCount(1) AS TweetCount;