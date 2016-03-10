if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_24_ViTriQuangCaoAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_24_ViTriQuangCaoAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_24_ViTriQuangCao] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_24_ViTriQuangCaoAdd
    @p_ViTri nvarchar(550),
    @p_Id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_24_ViTriQuangCao]
        (
            [ViTri]
        )
    VALUES
        (
             @p_ViTri
        )

    SET @p_Id_out = SCOPE_IDENTITY()

END

