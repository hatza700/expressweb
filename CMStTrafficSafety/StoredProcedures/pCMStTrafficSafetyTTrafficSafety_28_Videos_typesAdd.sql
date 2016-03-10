if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_28_Videos_typesAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_28_Videos_typesAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_28_Videos_types] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_28_Videos_typesAdd
    @p_KieuLienKet nvarchar(250),
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_28_Videos_types]
        (
            [KieuLienKet]
        )
    VALUES
        (
             @p_KieuLienKet
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

