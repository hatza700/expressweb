if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_16_GopYGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_16_GopYGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_16_GopY] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_16_GopYGet
        @pk_id int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_16_GopY]
    WHERE [id] =@pk_id

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [id],
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
        [AnhMinhHoa],
        CAST(BINARY_CHECKSUM([id],[HoTen],[Email],[DienThoai],[DiaChi],[TieuDe],[NoiDungGopY],[TinhTrang],[NoiDungTraLoi],[ThoiGianGopy],[IpGopY],[Nguoitraloi],[ThoiGianTraLoi],[Iptraloi],[XuatBanRaWeb],[FileDinhKem],[AnhMinhHoa]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_16_GopY]
    WHERE [id] =@pk_id
    SET NOCOUNT OFF
END

