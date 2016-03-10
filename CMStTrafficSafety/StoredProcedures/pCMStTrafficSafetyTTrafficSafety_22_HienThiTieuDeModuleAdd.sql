if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_22_HienThiTieuDeModuleAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_22_HienThiTieuDeModuleAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_22_HienThiTieuDeModule] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_22_HienThiTieuDeModuleAdd
    @p_KieuHienThi nvarchar(350),
    @p_GhiChu nvarchar(550),
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_22_HienThiTieuDeModule]
        (
            [KieuHienThi],
            [GhiChu]
        )
    VALUES
        (
             @p_KieuHienThi,
             @p_GhiChu
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

