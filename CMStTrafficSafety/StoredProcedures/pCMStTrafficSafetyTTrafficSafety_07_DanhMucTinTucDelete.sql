if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_07_DanhMucTinTuc] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_07_DanhMucTinTuc]
    WHERE [id] = @pk_id
END

