if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_08_TinTucAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_08_TinTucAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_08_TinTuc] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_08_TinTucAdd
    @p_ThuocDanhMuc int,
    @p_LaTinTieuDiem bit,
    @p_Tags nvarchar(1000),
    @p_TieuDeBaiViet nvarchar(350),
    @p_AnhMinhHoa nvarchar(350),
    @p_MoTaNgan nvarchar(550),
    @p_NoiDung nvarchar(max),
    @p_NguonTin nvarchar(500),
    @p_ThuTu int,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_LuotXem int,
    @p_HoatDong bit,
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_08_TinTuc]
        (
            [ThuocDanhMuc],
            [LaTinTieuDiem],
            [Tags],
            [TieuDeBaiViet],
            [AnhMinhHoa],
            [MoTaNgan],
            [NoiDung],
            [NguonTin],
            [ThuTu],
            [NguoiTao],
            [ThoiGianTao],
            [IpTao],
            [NguoiSua],
            [ThoiGianSua],
            [IpSua],
            [LuotXem],
            [HoatDong]
        )
    VALUES
        (
             @p_ThuocDanhMuc,
             @p_LaTinTieuDiem,
             @p_Tags,
             @p_TieuDeBaiViet,
             @p_AnhMinhHoa,
             @p_MoTaNgan,
             @p_NoiDung,
             @p_NguonTin,
             @p_ThuTu,
             @p_NguoiTao,
             @p_ThoiGianTao,
             @p_IpTao,
             @p_NguoiSua,
             @p_ThoiGianSua,
             @p_IpSua,
             @p_LuotXem,
             @p_HoatDong
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

