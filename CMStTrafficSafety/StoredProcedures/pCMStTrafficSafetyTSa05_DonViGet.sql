if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa05_DonViGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa05_DonViGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tSa05_DonVi] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa05_DonViGet
        @pk_ID int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tSa05_DonVi]
    WHERE [ID] =@pk_ID

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [ID],
        [TenTat],
        [TenDonVi],
        [LoaiDonViID],
        [DiaChi],
        [ThuTu],
        [HoatDong],
        [GhiChu],
        [NguoiTao],
        [ThoiGianTao],
        [IpTao],
        [NguoiSua],
        [ThoiGianSua],
        [IpSua],
        CAST(BINARY_CHECKSUM([ID],[TenTat],[TenDonVi],[LoaiDonViID],[DiaChi],[ThuTu],[HoatDong],[GhiChu],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tSa05_DonVi]
    WHERE [ID] =@pk_ID
    SET NOCOUNT OFF
END

