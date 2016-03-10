﻿if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa06_LoaiDonViGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa06_LoaiDonViGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tSa06_LoaiDonVi] table.
CREATE PROCEDURE pCMStTrafficSafetyTSa06_LoaiDonViGet
        @pk_ID int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tSa06_LoaiDonVi]
    WHERE [ID] =@pk_ID

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [ID],
        [LoaiDonVi],
        [ThuTu],
        [HoatDong],
        [GhiChu],
        [NguoiTao],
        [ThoiGianTao],
        [IpTao],
        [NguoiSua],
        [ThoiGianSua],
        [IpSua],
        CAST(BINARY_CHECKSUM([ID],[LoaiDonVi],[ThuTu],[HoatDong],[GhiChu],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tSa06_LoaiDonVi]
    WHERE [ID] =@pk_ID
    SET NOCOUNT OFF
END

