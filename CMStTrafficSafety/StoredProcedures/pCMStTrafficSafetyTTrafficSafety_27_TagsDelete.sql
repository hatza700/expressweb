if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_27_TagsDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_27_TagsDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_27_Tags] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_27_TagsDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_27_Tags]
    WHERE [id] = @pk_id
END

