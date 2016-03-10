if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa02_RoleGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa02_RoleGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tSa02_Role] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa02_RoleGet
        @pk_ID int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tSa02_Role]
    WHERE [ID] =@pk_ID

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [ID],
        [Role],
        [Option1],
        [Option2],
        [Option3],
        [GhiChu],
        [ThuTu],
        [HoatDong],
        [NguoiTao],
        [ThoiGianTao],
        [IpTao],
        [NguoiSua],
        [ThoiGianSua],
        [IpSua],
        CAST(BINARY_CHECKSUM([ID],[Role],[Option1],[Option2],[Option3],[GhiChu],[ThuTu],[HoatDong],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tSa02_Role]
    WHERE [ID] =@pk_ID
    SET NOCOUNT OFF
END

