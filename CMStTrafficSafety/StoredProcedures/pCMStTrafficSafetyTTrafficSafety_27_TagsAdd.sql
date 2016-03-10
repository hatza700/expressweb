if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_27_TagsAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_27_TagsAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_27_Tags] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_27_TagsAdd
    @p_tags nvarchar(150),
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_27_Tags]
        (
            [tags]
        )
    VALUES
        (
             @p_tags
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

