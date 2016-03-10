if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_17_TinhTrangGopYGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_17_TinhTrangGopYGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_17_TinhTrangGopY] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_17_TinhTrangGopYGet
        @pk_id int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_17_TinhTrangGopY]
    WHERE [id] =@pk_id

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [id],
        [TinhTrangGopY],
        CAST(BINARY_CHECKSUM([id],[TinhTrangGopY]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_17_TinhTrangGopY]
    WHERE [id] =@pk_id
    SET NOCOUNT OFF
END

