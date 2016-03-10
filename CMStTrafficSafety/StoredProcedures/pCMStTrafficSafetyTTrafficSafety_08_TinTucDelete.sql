if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_08_TinTucDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_08_TinTucDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_08_TinTuc] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_08_TinTucDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_08_TinTuc]
    WHERE [id] = @pk_id
END

