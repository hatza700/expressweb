if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_31_type_menuAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_31_type_menuAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_31_type_menu] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_31_type_menuAdd
    @p_TenKieuMenu nvarchar(300),
    @p_GhiChu nvarchar(550),
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_31_type_menu]
        (
            [TenKieuMenu],
            [GhiChu]
        )
    VALUES
        (
             @p_TenKieuMenu,
             @p_GhiChu
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

