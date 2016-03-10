if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa05_DonViDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa05_DonViDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tSa05_DonVi] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa05_DonViDelete
        @pk_ID int
AS
BEGIN
    DELETE [dbo].[tSa05_DonVi]
    WHERE [ID] = @pk_ID
END

