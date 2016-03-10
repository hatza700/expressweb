if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa06_LoaiDonViAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa06_LoaiDonViAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tSa06_LoaiDonVi] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa06_LoaiDonViAdd
    @p_LoaiDonVi nvarchar(50),
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_GhiChu nvarchar(500),
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
    INTO [dbo].[tSa06_LoaiDonVi]
        (
            [LoaiDonVi],
            [ThuTu],
            [HoatDong],
            [GhiChu],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua]
        )
    VALUES
        (
             @p_LoaiDonVi,
             @p_ThuTu,
             @p_HoatDong,
             @p_GhiChu,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua
        )

    SET @p_ID_out = SCOPE_IDENTITY()

END

