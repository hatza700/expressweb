if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa06_LoaiDonViDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa06_LoaiDonViDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tSa06_LoaiDonVi] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa06_LoaiDonViDelete
        @pk_ID int
AS
BEGIN
    DELETE [dbo].[tSa06_LoaiDonVi]
    WHERE [ID] = @pk_ID
END

