if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_29_Album_anhDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_29_Album_anhDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_29_Album_anh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_29_Album_anhDelete
        @pk_albumid int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_29_Album_anh]
    WHERE [albumid] = @pk_albumid
END

