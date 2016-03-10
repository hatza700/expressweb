if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_13_CoQuanBanHanhAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_13_CoQuanBanHanhAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_13_CoQuanBanHanh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_13_CoQuanBanHanhAdd
    @p_TenCQBH nvarchar(100),
    @p_GhiChu nvarchar(250),
    @p_OrderID int,
    @p_MaCQBH_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_13_CoQuanBanHanh]
        (
            [TenCQBH],
            [GhiChu]
        )
    VALUES
        (
             @p_TenCQBH,
             @p_GhiChu
        )

    SET @p_MaCQBH_out = SCOPE_IDENTITY()

    -- Call UPDATE for fields that have database defaults
    IF @p_OrderID IS NOT NULL
        UPDATE [dbo].[tTrafficSafety_13_CoQuanBanHanh] SET [OrderID] = @p_OrderID WHERE [MaCQBH] = @p_MaCQBH_out

END

