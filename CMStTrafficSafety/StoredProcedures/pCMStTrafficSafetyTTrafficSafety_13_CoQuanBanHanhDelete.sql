if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_13_CoQuanBanHanhDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_13_CoQuanBanHanhDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_13_CoQuanBanHanh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_13_CoQuanBanHanhDelete
        @pk_MaCQBH int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_13_CoQuanBanHanh]
    WHERE [MaCQBH] = @pk_MaCQBH
END

