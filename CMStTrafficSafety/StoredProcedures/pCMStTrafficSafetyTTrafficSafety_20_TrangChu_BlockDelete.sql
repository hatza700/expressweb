if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_20_TrangChu_BlockDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_20_TrangChu_BlockDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_20_TrangChu_Block] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_20_TrangChu_BlockDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_20_TrangChu_Block]
    WHERE [id] = @pk_id
END

