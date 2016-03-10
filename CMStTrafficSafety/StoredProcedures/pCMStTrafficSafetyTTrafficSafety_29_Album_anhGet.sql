if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_29_Album_anhGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_29_Album_anhGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_29_Album_anh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_29_Album_anhGet
        @pk_albumid int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_29_Album_anh]
    WHERE [albumid] =@pk_albumid

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [albumid],
        [TenAlbum],
        [ThuTu],
        [HoatDong],
        [NguoiTao],
        [ThoiGianTao],
        [IpTao],
        [NguoiSua],
        [ThoiGianSua],
        [IpSua],
        CAST(BINARY_CHECKSUM([albumid],[TenAlbum],[ThuTu],[HoatDong],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_29_Album_anh]
    WHERE [albumid] =@pk_albumid
    SET NOCOUNT OFF
END

