if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_09_VideosDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_09_VideosDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_09_Videos] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_09_VideosDelete
        @pk_Id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_09_Videos]
    WHERE [Id] = @pk_Id
END

