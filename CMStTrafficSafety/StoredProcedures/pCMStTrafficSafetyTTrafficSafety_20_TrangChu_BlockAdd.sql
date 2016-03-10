if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_20_TrangChu_BlockAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_20_TrangChu_BlockAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_20_TrangChu_Block] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_20_TrangChu_BlockAdd
    @p_Block nvarchar(250),
    @p_GhiChu nvarchar(550),
    @p_ThuTu int,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_20_TrangChu_Block]
        (
            [Block],
            [GhiChu],
            [ThuTu],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua]
        )
    VALUES
        (
             @p_Block,
             @p_GhiChu,
             @p_ThuTu,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

