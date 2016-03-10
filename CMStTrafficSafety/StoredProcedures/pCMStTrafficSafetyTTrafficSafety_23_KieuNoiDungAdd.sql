if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_23_KieuNoiDungAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_23_KieuNoiDungAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_23_KieuNoiDung] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_23_KieuNoiDungAdd
    @p_KieuNoiDung nvarchar(250),
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
    INTO [dbo].[tTrafficSafety_23_KieuNoiDung]
        (
            [KieuNoiDung],
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
             @p_KieuNoiDung,
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

