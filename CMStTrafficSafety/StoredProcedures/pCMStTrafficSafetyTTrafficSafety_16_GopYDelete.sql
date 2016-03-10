if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_16_GopYDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_16_GopYDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_16_GopY] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_16_GopYDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_16_GopY]
    WHERE [id] = @pk_id
END

