if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa01_UserDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa01_UserDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tSa01_User] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa01_UserDelete
        @pk_ID int
AS
BEGIN
    DELETE [dbo].[tSa01_User]
    WHERE [ID] = @pk_ID
END

