if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa01_UserGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa01_UserGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tSa01_User] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa01_UserGet
        @pk_ID int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tSa01_User]
    WHERE [ID] =@pk_ID

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [ID],
        [HoTen],
        [Username],
        [Password],
        [DonViID],
        [ChucVuID],
        [CapTheoDoi],
        [QuanTriDonVi],
        [Email],
        [CanDoiPass],
        [ThuTu],
        [HoatDong],
        [MACAddress],
        [GhiChu],
        [NguoiTao],
        [ThoiGianTao],
        [IpTao],
        [NguoiSua],
        [ThoiGianSua],
        [IpSua],
        [Salt],
        CAST(BINARY_CHECKSUM([ID],[HoTen],[Username],[Password],[DonViID],[ChucVuID],[CapTheoDoi],[QuanTriDonVi],[Email],[CanDoiPass],[ThuTu],[HoatDong],[MACAddress],[GhiChu],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua],[Salt]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tSa01_User]
    WHERE [ID] =@pk_ID
    SET NOCOUNT OFF
END

