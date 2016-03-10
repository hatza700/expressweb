if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_11_LinhVucAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_11_LinhVucAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_11_LinhVuc] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_11_LinhVucAdd
    @p_TenLinhVuc nvarchar(100),
    @p_GhiChu nvarchar(250),
    @p_OrderID int,
    @p_MaLinhVuc_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_11_LinhVuc]
        (
            [TenLinhVuc],
            [GhiChu]
        )
    VALUES
        (
             @p_TenLinhVuc,
             @p_GhiChu
        )

    SET @p_MaLinhVuc_out = SCOPE_IDENTITY()

    -- Call UPDATE for fields that have database defaults
    IF @p_OrderID IS NOT NULL
        UPDATE [dbo].[tTrafficSafety_11_LinhVuc] SET [OrderID] = @p_OrderID WHERE [MaLinhVuc] = @p_MaLinhVuc_out

END

