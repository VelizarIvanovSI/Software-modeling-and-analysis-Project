use TwitterDB

CREATE PROCEDURE AddUser
    @Username NVARCHAR(50),
    @Email NVARCHAR(50),
    @Name NVARCHAR(50),
    @Bio NVARCHAR(100),
    @Password NVARCHAR(50)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Users (Username, Email, Name, Bio, Password)
        VALUES (@Username, @Email, @Name, @Bio, @Password);
     
        PRINT 'User added successfully.';
    END TRY
    BEGIN CATCH
        PRINT 'Error: ' + ERROR_MESSAGE();
    END CATCH
END;

EXEC AddUser
    @Username = 'maria_petrova',
    @Email = 'maria@example.com',
    @Name = 'Maria Petrova',
    @Bio = 'Photographer and nature lover.',
    @Password = 'strongPassword123';