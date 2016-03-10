if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_24_ViTriQuangCaoDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_24_ViTriQuangCaoDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_24_ViTriQuangCao] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_24_ViTriQuangCaoDelete
        @pk_Id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_24_ViTriQuangCao]
    WHERE [Id] = @pk_Id
END

