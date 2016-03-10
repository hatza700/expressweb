if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_14_ChuyenNganhAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_14_ChuyenNganhAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_14_ChuyenNganh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_14_ChuyenNganhAdd
    @p_TenChuyenNganh nvarchar(100),
    @p_GhiChu nvarchar(250),
    @p_OrderID int,
    @p_MaChuyenNganh_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_14_ChuyenNganh]
        (
            [TenChuyenNganh],
            [GhiChu]
        )
    VALUES
        (
             @p_TenChuyenNganh,
             @p_GhiChu
        )

    SET @p_MaChuyenNganh_out = SCOPE_IDENTITY()

    -- Call UPDATE for fields that have database defaults
    IF @p_OrderID IS NOT NULL
        UPDATE [dbo].[tTrafficSafety_14_ChuyenNganh] SET [OrderID] = @p_OrderID WHERE [MaChuyenNganh] = @p_MaChuyenNganh_out

END

