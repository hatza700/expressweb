if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_30_Album_anh_anh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhAdd
    @p_DuongDanAnh nvarchar(550),
    @p_ThuTu int,
    @p_ThuocAlbum int,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_HoatDong bit,
    @p_GhiChu nvarchar(1000),
    @p_anhid_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_30_Album_anh_anh]
        (
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
            [GhiChu]
        )
    VALUES
        (
             @p_DuongDanAnh,
             @p_ThuTu,
             @p_ThuocAlbum,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua,
             @p_HoatDong,
             @p_GhiChu
        )

    SET @p_anhid_out = SCOPE_IDENTITY()

END

