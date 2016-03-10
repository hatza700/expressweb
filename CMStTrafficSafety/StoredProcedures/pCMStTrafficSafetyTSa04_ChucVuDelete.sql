if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa04_ChucVuDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa04_ChucVuDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tSa04_ChucVu] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa04_ChucVuDelete
        @pk_ID int
AS
BEGIN
    DELETE [dbo].[tSa04_ChucVu]
    WHERE [ID] = @pk_ID
END

