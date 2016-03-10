if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_17_TinhTrangGopYDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_17_TinhTrangGopYDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_17_TinhTrangGopY] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_17_TinhTrangGopYDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_17_TinhTrangGopY]
    WHERE [id] = @pk_id
END

