if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_12_HinhThucVanBanAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_12_HinhThucVanBanAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_12_HinhThucVanBan] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_12_HinhThucVanBanAdd
    @p_TenHinhThuc nvarchar(50),
    @p_GhiChu nvarchar(250),
    @p_OrderID int,
    @p_MaHinhThuc_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_12_HinhThucVanBan]
        (
            [TenHinhThuc],
            [GhiChu]
        )
    VALUES
        (
             @p_TenHinhThuc,
             @p_GhiChu
        )

    SET @p_MaHinhThuc_out = SCOPE_IDENTITY()

    -- Call UPDATE for fields that have database defaults
    IF @p_OrderID IS NOT NULL
        UPDATE [dbo].[tTrafficSafety_12_HinhThucVanBan] SET [OrderID] = @p_OrderID WHERE [MaHinhThuc] = @p_MaHinhThuc_out

END

