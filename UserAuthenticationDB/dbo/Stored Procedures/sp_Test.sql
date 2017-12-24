

CREATE PROCEDURE [dbo].[sp_Test]  
(   
	@UserId INT,
	@UserName nvarchar(max)
)  
--exec sp_Test 0,"Sumon"
AS  
  BEGIN
	  SET NOCOUNT ON
	  SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	-------------------For test this can be used for inserting XML data-----------------	
		/*
		  SET @user_menu_xml='<permission>
								<menu UserId="1" MenuId="11" UserPermission="True" />
							  </permission>' 
		*/
	------------------------------------------------------------------------------------	  

				  INSERT INTO tblTestUser(UserName)
					VALUES(@UserName)
					SELECT SCOPE_IDENTITY();
			 
  END

