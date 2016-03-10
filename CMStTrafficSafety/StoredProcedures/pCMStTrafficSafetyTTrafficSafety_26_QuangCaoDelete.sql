if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_26_QuangCaoDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_26_QuangCaoDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_26_QuangCao] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_26_QuangCaoDelete
        @pk_Id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_26_QuangCao]
    WHERE [Id] = @pk_Id
END

