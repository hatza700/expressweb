if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa02_RoleAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa02_RoleAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tSa02_Role] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa02_RoleAdd
    @p_Role nvarchar(80),
    @p_Option1 int,
    @p_Option2 bit,
    @p_Option3 nvarchar(250),
    @p_GhiChu nvarchar(500),
    @p_ThuTu int,
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
    INTO [dbo].[tSa02_Role]
        (
            [Role],
            [Option1],
            [Option2],
            [Option3],
            [GhiChu],
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
             @p_Role,
             @p_Option1,
             @p_Option2,
             @p_Option3,
             @p_GhiChu,
             @p_ThuTu,
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

