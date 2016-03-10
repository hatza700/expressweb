if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_19_KetQuaThamDoYKienDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_19_KetQuaThamDoYKienDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_19_KetQuaThamDoYKien] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_19_KetQuaThamDoYKienDelete
        @pk_Id bigint
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_19_KetQuaThamDoYKien]
    WHERE [Id] = @pk_Id
END

