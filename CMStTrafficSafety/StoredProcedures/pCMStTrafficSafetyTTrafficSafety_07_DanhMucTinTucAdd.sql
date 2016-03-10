if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_07_DanhMucTinTuc] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucAdd
    @p_TenDanhMuc nvarchar(250),
    @p_DanhMucCha int,
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_GhiChu nvarchar(1000),
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_unsigned_TenDanhMuc nvarchar(250),
    @p_depth tinyint,
    @p_Lineage varchar(255),
    @p_hassub bit,
    @p_sort int,
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_07_DanhMucTinTuc]
        (
            [TenDanhMuc],
            [DanhMucCha],
            [ThuTu],
            [HoatDong],
            [GhiChu],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua],
            [unsigned_TenDanhMuc],
            [depth],
            [Lineage],
            [hassub],
            [sort]
        )
    VALUES
        (
             @p_TenDanhMuc,
             @p_DanhMucCha,
             @p_ThuTu,
             @p_HoatDong,
             @p_GhiChu,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua,
             @p_unsigned_TenDanhMuc,
             @p_depth,
             @p_Lineage,
             @p_hassub,
             @p_sort
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

