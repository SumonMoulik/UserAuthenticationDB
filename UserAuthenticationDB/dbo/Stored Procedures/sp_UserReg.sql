
CREATE PROCEDURE [dbo].[sp_UserReg]  
(      
	 @UserId BIGINT =NULL
	,@UserName varchar(250) =NULL
	,@Email varchar(50) =NULL
	,@Password varchar(50)=NULL
)  

AS  
  BEGIN  
	IF NOT EXISTS (Select Email from tblUsers where Email=@Email)
		BEGIN
			INSERT INTO tblUsers
			  VALUES(@UserName,@Email,@Password)
		END
	ELSE
		BEGIN
			UPDATE tblUsers set UserName=@UserName,Password=@Password where UserId=@UserId
		END 
  END
