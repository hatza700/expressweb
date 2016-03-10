if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_18_ThamDoYKien] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienAdd
    @p_CauHoiThamDo nvarchar(250),
    @p_CauTraLoi1 nvarchar(250),
    @p_CauTraLoi2 nvarchar(250),
    @p_CauTraLoi3 nvarchar(250),
    @p_CauTraLoi4 nvarchar(250),
    @p_CauTraLoi5 nvarchar(250),
    @p_HoatDong bit,
    @p_ThoiGianBatDau datetime,
    @p_ThoiGianKetThuc datetime,
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
    INTO [dbo].[tTrafficSafety_18_ThamDoYKien]
        (
            [CauHoiThamDo],
            [CauTraLoi1],
            [CauTraLoi2],
            [CauTraLoi3],
            [CauTraLoi4],
            [CauTraLoi5],
            [HoatDong],
            [ThoiGianBatDau],
            [ThoiGianKetThuc],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua]
        )
    VALUES
        (
             @p_CauHoiThamDo,
             @p_CauTraLoi1,
             @p_CauTraLoi2,
             @p_CauTraLoi3,
             @p_CauTraLoi4,
             @p_CauTraLoi5,
             @p_HoatDong,
             @p_ThoiGianBatDau,
             @p_ThoiGianKetThuc,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

