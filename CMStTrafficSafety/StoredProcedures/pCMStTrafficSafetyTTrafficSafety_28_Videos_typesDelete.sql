if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_28_Videos_typesDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_28_Videos_typesDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_28_Videos_types] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_28_Videos_typesDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_28_Videos_types]
    WHERE [id] = @pk_id
END

