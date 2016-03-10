if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa01_UserAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa01_UserAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tSa01_User] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa01_UserAdd
    @p_HoTen nvarchar(128),
    @p_Username nvarchar(128),
    @p_Password nvarchar(128),
    @p_DonViID int,
    @p_ChucVuID int,
    @p_CapTheoDoi int,
    @p_QuanTriDonVi bit,
    @p_Email nvarchar(250),
    @p_CanDoiPass bit,
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_MACAddress nvarchar(500),
    @p_GhiChu nvarchar(500),
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_Salt nvarchar(128),
    @p_ID_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tSa01_User]
        (
            [HoTen],
            [Username],
            [Password],
            [DonViID],
            [ChucVuID],
            [CapTheoDoi],
            [QuanTriDonVi],
            [Email],
            [CanDoiPass],
            [ThuTu],
            [HoatDong],
            [MACAddress],
            [GhiChu],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua],
            [Salt]
        )
    VALUES
        (
             @p_HoTen,
             @p_Username,
             @p_Password,
             @p_DonViID,
             @p_ChucVuID,
             @p_CapTheoDoi,
             @p_QuanTriDonVi,
             @p_Email,
             @p_CanDoiPass,
             @p_ThuTu,
             @p_HoatDong,
             @p_MACAddress,
             @p_GhiChu,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua,
             @p_Salt
        )

    SET @p_ID_out = SCOPE_IDENTITY()

END

