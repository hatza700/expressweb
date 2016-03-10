if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_22_HienThiTieuDeModuleDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_22_HienThiTieuDeModuleDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_22_HienThiTieuDeModule] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_22_HienThiTieuDeModuleDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_22_HienThiTieuDeModule]
    WHERE [id] = @pk_id
END

