if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_23_KieuNoiDungDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_23_KieuNoiDungDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_23_KieuNoiDung] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_23_KieuNoiDungDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_23_KieuNoiDung]
    WHERE [id] = @pk_id
END

