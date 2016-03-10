if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_10_BinhLuanAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_10_BinhLuanAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_10_BinhLuan] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_10_BinhLuanAdd
    @p_HoTen nvarchar(150),
    @p_Email nvarchar(150),
    @p_NoiDung nvarchar(550),
    @p_ThoiGianNhan datetime,
    @p_BinhLuanChoTinTuc int,
    @p_ChoPhepHienTHi bit,
    @p_DaDuyet bit,
    @p_id_out bigint output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_10_BinhLuan]
        (
            [HoTen],
            [Email],
            [NoiDung],
            [ThoiGianNhan],
            [BinhLuanChoTinTuc],
            [ChoPhepHienTHi],
            [DaDuyet]
        )
    VALUES
        (
             @p_HoTen,
             @p_Email,
             @p_NoiDung,
             @p_ThoiGianNhan,
             @p_BinhLuanChoTinTuc,
             @p_ChoPhepHienTHi,
             @p_DaDuyet
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

