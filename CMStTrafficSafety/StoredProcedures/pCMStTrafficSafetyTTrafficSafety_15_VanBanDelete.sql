if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_15_VanBanDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_15_VanBanDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_15_VanBan] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_15_VanBanDelete
        @pk_VanBanID int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_15_VanBan]
    WHERE [VanBanID] = @pk_VanBanID
END

