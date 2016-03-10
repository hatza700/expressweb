if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa02_RoleDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa02_RoleDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tSa02_Role] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa02_RoleDelete
        @pk_ID int
AS
BEGIN
    DELETE [dbo].[tSa02_Role]
    WHERE [ID] = @pk_ID
END

