if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_21_QuanLyTrangChuAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_21_QuanLyTrangChuAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_21_QuanLyTrangChu] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_21_QuanLyTrangChuAdd
    @p_TenModule nvarchar(255),
    @p_ThuocBlock int,
    @p_ThuTu int,
    @p_HienThiTieuDe int,
    @p_KieuNoiDung int,
    @p_HoatDong bit,
    @p_SoLuongTin int,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_ChuyenMuc nvarchar(250),
    @p_Id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_21_QuanLyTrangChu]
        (
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
            [ChuyenMuc]
        )
    VALUES
        (
             @p_TenModule,
             @p_ThuocBlock,
             @p_ThuTu,
             @p_HienThiTieuDe,
             @p_KieuNoiDung,
             @p_HoatDong,
             @p_SoLuongTin,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua,
             @p_ChuyenMuc
        )

    SET @p_Id_out = SCOPE_IDENTITY()

END

