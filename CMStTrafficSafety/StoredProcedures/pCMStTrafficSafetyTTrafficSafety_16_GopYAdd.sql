if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_16_GopYAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_16_GopYAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_16_GopY] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_16_GopYAdd
    @p_HoTen nvarchar(250),
    @p_Email nvarchar(250),
    @p_DienThoai nvarchar(250),
    @p_DiaChi nvarchar(250),
    @p_TieuDe nvarchar(550),
    @p_NoiDungGopY nvarchar(max),
    @p_TinhTrang int,
    @p_NoiDungTraLoi nvarchar(max),
    @p_ThoiGianGopy datetime,
    @p_IpGopY nvarchar(30),
    @p_Nguoitraloi int,
    @p_ThoiGianTraLoi datetime,
    @p_Iptraloi nvarchar(30),
    @p_XuatBanRaWeb bit,
    @p_FileDinhKem nvarchar(550),
    @p_AnhMinhHoa nvarchar(550),
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_16_GopY]
        (
            [HoTen],
            [Email],
            [DienThoai],
            [DiaChi],
            [TieuDe],
            [NoiDungGopY],
            [TinhTrang],
            [NoiDungTraLoi],
            [ThoiGianGopy],
            [IpGopY],
            [Nguoitraloi],
            [ThoiGianTraLoi],
            [Iptraloi],
            [XuatBanRaWeb],
            [FileDinhKem],
            [AnhMinhHoa]
        )
    VALUES
        (
             @p_HoTen,
             @p_Email,
             @p_DienThoai,
             @p_DiaChi,
             @p_TieuDe,
             @p_NoiDungGopY,
             @p_TinhTrang,
             @p_NoiDungTraLoi,
             @p_ThoiGianGopy,
             @p_IpGopY,
             @p_Nguoitraloi,
             @p_ThoiGianTraLoi,
             @p_Iptraloi,
             @p_XuatBanRaWeb,
             @p_FileDinhKem,
             @p_AnhMinhHoa
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

