
CREATE PROCEDURE [dbo].[sp_UserMenu]  
(   
	@user_menu_xml XML=NULL
)  
--exec sp_UserMenu
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
	  IF (@user_menu_xml IS NOT NULL)
	     BEGIN
		   DECLARE @UserId BIGINT, @MenuId BIGINT

		   SELECT @UserId= doc.c.value('@UserId','INT') FROM @user_menu_xml.nodes('/permission/menu')doc(c)
		   SELECT @MenuId= doc.c.value('@MenuId','INT') FROM @user_menu_xml.nodes('/permission/menu')doc(c)

		   IF NOT EXISTS (Select MenuId from tblPermission where UserId=@UserId and MenuId=@MenuId)
		      BEGIN
				  INSERT INTO tblPermission(UserId,MenuId,UserPermission,PermissionDate)
			      SELECT doc.c.value('@UserId','INT') UserId, doc.c.value('@MenuId','INT') MenuId, doc.c.value('@UserPermission','BIT') UserPermission, GETDATE() PermissionDate
				  FROM @user_menu_xml.nodes('/permission/menu')doc(c) 
			  END
		   ELSE
			  BEGIN
			      UPDATE tblPermission set UserPermission=doc.c.value('@UserPermission','BIT') FROM @user_menu_xml.nodes('/permission/menu')doc(c) where UserId=doc.c.value('@UserId','INT') AND MenuId= doc.c.value('@MenuId','INT')
			  END 
	     END
  END
