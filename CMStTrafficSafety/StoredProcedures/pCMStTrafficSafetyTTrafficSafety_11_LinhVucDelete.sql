if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_11_LinhVucDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_11_LinhVucDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_11_LinhVuc] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_11_LinhVucDelete
        @pk_MaLinhVuc int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_11_LinhVuc]
    WHERE [MaLinhVuc] = @pk_MaLinhVuc
END

