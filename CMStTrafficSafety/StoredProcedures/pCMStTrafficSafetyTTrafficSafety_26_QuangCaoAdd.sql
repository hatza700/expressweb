if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_26_QuangCaoAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_26_QuangCaoAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_26_QuangCao] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_26_QuangCaoAdd
    @p_TenQuangCao nvarchar(250),
    @p_KhachHang int,
    @p_ViTri int,
    @p_DuongDanAnh nvarchar(350),
    @p_LinkLienKet nvarchar(350),
    @p_ThoiGianBatDau datetime,
    @p_ThoiGianKetThuc datetime,
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_thuoc_module int,
    @p_Id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_26_QuangCao]
        (
            [TenQuangCao],
            [KhachHang],
            [ViTri],
            [DuongDanAnh],
            [LinkLienKet],
            [ThoiGianBatDau],
            [ThoiGianKetThuc],
            [ThuTu],
            [HoatDong],
            [thuoc_module]
        )
    VALUES
        (
             @p_TenQuangCao,
             @p_KhachHang,
             @p_ViTri,
             @p_DuongDanAnh,
             @p_LinkLienKet,
             @p_ThoiGianBatDau,
             @p_ThoiGianKetThuc,
             @p_ThuTu,
             @p_HoatDong,
             @p_thuoc_module
        )

    SET @p_Id_out = SCOPE_IDENTITY()

END

