if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_09_VideosAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_09_VideosAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_09_Videos] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_09_VideosAdd
    @p_TenVideo nvarchar(350),
    @p_AnhMinhHoa nvarchar(550),
    @p_MoTaNgan nvarchar(550),
    @p_DuongDanVideo nvarchar(550),
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_LuotXem bigint,
    @p_KieuVideos int,
    @p_Id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_09_Videos]
        (
            [TenVideo],
            [AnhMinhHoa],
            [MoTaNgan],
            [DuongDanVideo],
            [ThuTu],
            [HoatDong],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua],
            [LuotXem],
            [KieuVideos]
        )
    VALUES
        (
             @p_TenVideo,
             @p_AnhMinhHoa,
             @p_MoTaNgan,
             @p_DuongDanVideo,
             @p_ThuTu,
             @p_HoatDong,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua,
             @p_LuotXem,
             @p_KieuVideos
        )

    SET @p_Id_out = SCOPE_IDENTITY()

END

