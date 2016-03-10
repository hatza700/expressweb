if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_10_BinhLuanDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_10_BinhLuanDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_10_BinhLuan] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_10_BinhLuanDelete
        @pk_id bigint
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_10_BinhLuan]
    WHERE [id] = @pk_id
END

