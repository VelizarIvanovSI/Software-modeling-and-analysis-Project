use TwitterDB

CREATE TRIGGER trg_AfterInsertTweet
ON Tweet
AFTER INSERT
AS
BEGIN
    -- ????????? ?? ?????????? ?? ??????????? ????
    DECLARE @UserID INT, @Content VARCHAR(500), @PostDate DATETIME;

    SELECT 
        @UserID = UserID, 
        @Content = Content, 
        @PostDate = PostDate
    FROM Inserted;

    PRINT 'A new tweet has been added:';
    PRINT 'UserID: ' + CAST(@UserID AS NVARCHAR);
    PRINT 'Content: ' + @Content;
    PRINT 'PostDate: ' + CAST(@PostDate AS NVARCHAR);
END;

INSERT INTO Tweet (UserID, Content, Media)
VALUES (2, 'Testing !', NULL);