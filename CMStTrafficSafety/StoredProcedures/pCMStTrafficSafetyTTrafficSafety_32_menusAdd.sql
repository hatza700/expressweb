if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_32_menusAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_32_menusAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_32_menus] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_32_menusAdd
    @p_TenMenu nvarchar(550),
    @p_KieuMenu int,
    @p_LienKet nvarchar(550),
    @p_Targets nvarchar(550),
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_DanhMucID int,
    @p_CoDanhMucID bit,
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_32_menus]
        (
            [TenMenu],
            [KieuMenu],
            [LienKet],
            [Targets],
            [ThuTu],
            [HoatDong],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua],
            [DanhMucID],
            [CoDanhMucID]
        )
    VALUES
        (
             @p_TenMenu,
             @p_KieuMenu,
             @p_LienKet,
             @p_Targets,
             @p_ThuTu,
             @p_HoatDong,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua,
             @p_DanhMucID,
             @p_CoDanhMucID
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

