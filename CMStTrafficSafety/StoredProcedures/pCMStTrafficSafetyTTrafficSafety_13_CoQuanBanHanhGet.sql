if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_13_CoQuanBanHanhGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_13_CoQuanBanHanhGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_13_CoQuanBanHanh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_13_CoQuanBanHanhGet
        @pk_MaCQBH int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_13_CoQuanBanHanh]
    WHERE [MaCQBH] =@pk_MaCQBH

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [MaCQBH],
        [TenCQBH],
        [GhiChu],
        [OrderID],
        CAST(BINARY_CHECKSUM([MaCQBH],[TenCQBH],[GhiChu],[OrderID]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_13_CoQuanBanHanh]
    WHERE [MaCQBH] =@pk_MaCQBH
    SET NOCOUNT OFF
END

