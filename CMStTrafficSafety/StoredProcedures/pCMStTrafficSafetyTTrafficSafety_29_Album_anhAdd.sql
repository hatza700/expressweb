if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_29_Album_anhAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_29_Album_anhAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_29_Album_anh] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_29_Album_anhAdd
    @p_TenAlbum nvarchar(550),
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_albumid_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_29_Album_anh]
        (
            [TenAlbum],
            [ThuTu],
            [HoatDong],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua]
        )
    VALUES
        (
             @p_TenAlbum,
             @p_ThuTu,
             @p_HoatDong,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua
        )

    SET @p_albumid_out = SCOPE_IDENTITY()

END

