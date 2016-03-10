if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa03_UserRoleDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa03_UserRoleDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tSa03_UserRole] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa03_UserRoleDelete
        @pk_ID int
AS
BEGIN
    DELETE [dbo].[tSa03_UserRole]
    WHERE [ID] = @pk_ID
END

