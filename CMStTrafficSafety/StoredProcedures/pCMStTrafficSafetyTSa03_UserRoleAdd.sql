if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa03_UserRoleAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa03_UserRoleAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tSa03_UserRole] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa03_UserRoleAdd
    @p_UserID int,
    @p_RoleID int,
    @p_GhiChu nvarchar(500),
    @p_HoatDong bit,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_ID_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tSa03_UserRole]
        (
            [UserID],
            [RoleID],
            [GhiChu],
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
             @p_UserID,
             @p_RoleID,
             @p_GhiChu,
             @p_HoatDong,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua
        )

    SET @p_ID_out = SCOPE_IDENTITY()

END

