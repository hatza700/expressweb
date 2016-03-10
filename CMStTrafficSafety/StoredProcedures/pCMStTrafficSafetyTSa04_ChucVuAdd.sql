if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa04_ChucVuAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa04_ChucVuAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tSa04_ChucVu] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa04_ChucVuAdd
    @p_MaTat nvarchar(30),
    @p_ChucVu nvarchar(150),
    @p_Thutu int,
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
    INTO [dbo].[tSa04_ChucVu]
        (
            [MaTat],
            [ChucVu],
            [Thutu],
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
             @p_MaTat,
             @p_ChucVu,
             @p_Thutu,
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

