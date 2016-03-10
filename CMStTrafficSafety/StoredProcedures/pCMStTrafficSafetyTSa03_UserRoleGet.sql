if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa03_UserRoleGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa03_UserRoleGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tSa03_UserRole] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa03_UserRoleGet
        @pk_ID int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tSa03_UserRole]
    WHERE [ID] =@pk_ID

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [ID],
        [UserID],
        [RoleID],
        [GhiChu],
        [HoatDong],
        [NguoiTao],
        [ThoiGianTao],
        [IpTao],
        [NguoiSua],
        [ThoiGianSua],
        [IpSua],
        CAST(BINARY_CHECKSUM([ID],[UserID],[RoleID],[GhiChu],[HoatDong],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tSa03_UserRole]
    WHERE [ID] =@pk_ID
    SET NOCOUNT OFF
END

