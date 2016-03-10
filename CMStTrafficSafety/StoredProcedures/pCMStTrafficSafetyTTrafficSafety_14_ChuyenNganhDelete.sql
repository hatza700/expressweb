if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_14_ChuyenNganhDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_14_ChuyenNganhDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_14_ChuyenNganh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_14_ChuyenNganhDelete
        @pk_MaChuyenNganh int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_14_ChuyenNganh]
    WHERE [MaChuyenNganh] = @pk_MaChuyenNganh
END

