if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_32_menusDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_32_menusDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_32_menus] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_32_menusDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_32_menus]
    WHERE [id] = @pk_id
END

