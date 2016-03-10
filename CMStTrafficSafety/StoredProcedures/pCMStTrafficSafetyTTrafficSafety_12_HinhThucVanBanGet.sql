if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_12_HinhThucVanBanGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_12_HinhThucVanBanGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_12_HinhThucVanBan] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_12_HinhThucVanBanGet
        @pk_MaHinhThuc int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_12_HinhThucVanBan]
    WHERE [MaHinhThuc] =@pk_MaHinhThuc

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [MaHinhThuc],
        [TenHinhThuc],
        [GhiChu],
        [OrderID],
        CAST(BINARY_CHECKSUM([MaHinhThuc],[TenHinhThuc],[GhiChu],[OrderID]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_12_HinhThucVanBan]
    WHERE [MaHinhThuc] =@pk_MaHinhThuc
    SET NOCOUNT OFF
END

