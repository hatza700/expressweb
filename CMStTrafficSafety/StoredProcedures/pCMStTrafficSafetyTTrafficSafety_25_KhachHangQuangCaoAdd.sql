if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_25_KhachHangQuangCaoAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_25_KhachHangQuangCaoAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_25_KhachHangQuangCao] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_25_KhachHangQuangCaoAdd
    @p_TenKhachHang nvarchar(350),
    @p_DiaChi nvarchar(350),
    @p_SoDienThoai nvarchar(350),
    @p_NguoiDaiDien nvarchar(350),
    @p_Email nvarchar(350),
    @p_SDTNguoiDaiDien nvarchar(350),
    @p_EmailNguoiDaiDien nvarchar(350),
    @p_DiaChiNguoiDaiDien nvarchar(350),
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_Id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_25_KhachHangQuangCao]
        (
            [TenKhachHang],
            [DiaChi],
            [SoDienThoai],
            [NguoiDaiDien],
            [Email],
            [SDTNguoiDaiDien],
            [EmailNguoiDaiDien],
            [DiaChiNguoiDaiDien],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua]
        )
    VALUES
        (
             @p_TenKhachHang,
             @p_DiaChi,
             @p_SoDienThoai,
             @p_NguoiDaiDien,
             @p_Email,
             @p_SDTNguoiDaiDien,
             @p_EmailNguoiDaiDien,
             @p_DiaChiNguoiDaiDien,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua
        )

    SET @p_Id_out = SCOPE_IDENTITY()

END

