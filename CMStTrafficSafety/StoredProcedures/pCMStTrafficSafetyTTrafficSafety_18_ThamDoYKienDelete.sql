if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_18_ThamDoYKien] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_18_ThamDoYKien]
    WHERE [id] = @pk_id
END

