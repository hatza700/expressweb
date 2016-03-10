if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_30_Album_anh_anh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhDelete
        @pk_anhid int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_30_Album_anh_anh]
    WHERE [anhid] = @pk_anhid
END

