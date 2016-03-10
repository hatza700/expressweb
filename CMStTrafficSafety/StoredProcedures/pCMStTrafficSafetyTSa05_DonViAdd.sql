if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa05_DonViAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa05_DonViAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tSa05_DonVi] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa05_DonViAdd
    @p_TenTat nvarchar(15),
    @p_TenDonVi nvarchar(100),
    @p_LoaiDonViID int,
    @p_DiaChi nchar(200),
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
    INTO [dbo].[tSa05_DonVi]
        (
            [TenTat],
            [TenDonVi],
            [LoaiDonViID],
            [DiaChi],
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
             @p_TenTat,
             @p_TenDonVi,
             @p_LoaiDonViID,
             @p_DiaChi,
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

