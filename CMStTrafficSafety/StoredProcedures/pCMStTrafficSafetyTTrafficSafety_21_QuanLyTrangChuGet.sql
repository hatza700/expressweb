if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_21_QuanLyTrangChuGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_21_QuanLyTrangChuGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_21_QuanLyTrangChu] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_21_QuanLyTrangChuGet
        @pk_Id int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_21_QuanLyTrangChu]
    WHERE [Id] =@pk_Id

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [Id],
        [TenModule],
        [ThuocBlock],
        [ThuTu],
        [HienThiTieuDe],
        [KieuNoiDung],
        [HoatDong],
        [SoLuongTin],
        [NguoiTao],
        [ThoiGianTao],
        [IpTao],
        [NguoiSua],
        [ThoiGianSua],
        [IpSua],
        [ChuyenMuc],
        CAST(BINARY_CHECKSUM([Id],[TenModule],[ThuocBlock],[ThuTu],[HienThiTieuDe],[KieuNoiDung],[HoatDong],[SoLuongTin],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua],[ChuyenMuc]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_21_QuanLyTrangChu]
    WHERE [Id] =@pk_Id
    SET NOCOUNT OFF
END

