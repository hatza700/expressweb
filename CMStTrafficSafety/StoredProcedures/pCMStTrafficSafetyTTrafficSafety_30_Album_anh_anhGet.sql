if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_30_Album_anh_anh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhGet
        @pk_anhid int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_30_Album_anh_anh]
    WHERE [anhid] =@pk_anhid

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [anhid],
        [DuongDanAnh],
        [ThuTu],
        [ThuocAlbum],
        [NguoiTao],
        [ThoiGianTao],
        [IpTao],
        [NguoiSua],
        [ThoiGianSua],
        [IpSua],
        [HoatDong],
        [GhiChu],
        CAST(BINARY_CHECKSUM([anhid],[DuongDanAnh],[ThuTu],[ThuocAlbum],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua],[HoatDong],[GhiChu]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_30_Album_anh_anh]
    WHERE [anhid] =@pk_anhid
    SET NOCOUNT OFF
END

