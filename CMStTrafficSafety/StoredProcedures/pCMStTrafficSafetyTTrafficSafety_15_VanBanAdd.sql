if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_15_VanBanAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_15_VanBanAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_15_VanBan] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_15_VanBanAdd
    @p_MaHinhThucVanban int,
    @p_MaChuyenNganh int,
    @p_MaLinhVuc int,
    @p_MaCQBH int,
    @p_SoHieuVB nvarchar(50),
    @p_TrichYeu nvarchar(500),
    @p_NgayBanHanh datetime,
    @p_TinhTrang nvarchar(50),
    @p_TepDinhKem nvarchar(250),
    @p_GhiChu nvarchar(250),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_NguoiTao int,
    @p_IpTao nvarchar(30),
    @p_ThoiGianTao datetime,
    @p_VanBanID_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_15_VanBan]
        (
            [MaHinhThucVanban],
            [MaChuyenNganh],
            [MaLinhVuc],
            [MaCQBH],
            [SoHieuVB],
            [TrichYeu],
            [NgayBanHanh],
            [TinhTrang],
            [TepDinhKem],
            [GhiChu],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua],
            [NguoiTao],
            [IpTao],
            [ThoiGianTao]
        )
    VALUES
        (
             @p_MaHinhThucVanban,
             @p_MaChuyenNganh,
             @p_MaLinhVuc,
             @p_MaCQBH,
             @p_SoHieuVB,
             @p_TrichYeu,
             @p_NgayBanHanh,
             @p_TinhTrang,
             @p_TepDinhKem,
             @p_GhiChu,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua,
             @p_NguoiTao,
             @p_IpTao,
             @p_ThoiGianTao
        )

    SET @p_VanBanID_out = SCOPE_IDENTITY()

END

