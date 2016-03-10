if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_07_DanhMucTinTuc] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucGet
        @pk_id int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_07_DanhMucTinTuc]
    WHERE [id] =@pk_id

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [id],
        [TenDanhMuc],
        [DanhMucCha],
        [ThuTu],
        [HoatDong],
        [GhiChu],
        [NguoiTao],
        [ThoiGianTao],
        [IpTao],
        [NguoiSua],
        [ThoiGianSua],
        [IpSua],
        [unsigned_TenDanhMuc],
        [depth],
        [Lineage],
        [hassub],
        [sort],
        CAST(BINARY_CHECKSUM([id],[TenDanhMuc],[DanhMucCha],[ThuTu],[HoatDong],[GhiChu],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua],[unsigned_TenDanhMuc],[depth],[Lineage],[hassub],[sort]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_07_DanhMucTinTuc]
    WHERE [id] =@pk_id
    SET NOCOUNT OFF
END

