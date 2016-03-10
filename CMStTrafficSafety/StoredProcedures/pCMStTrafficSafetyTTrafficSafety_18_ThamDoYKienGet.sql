if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_18_ThamDoYKien] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienGet
        @pk_id int
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_18_ThamDoYKien]
    WHERE [id] =@pk_id

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [id],
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
        [IpSua],
        CAST(BINARY_CHECKSUM([id],[CauHoiThamDo],[CauTraLoi1],[CauTraLoi2],[CauTraLoi3],[CauTraLoi4],[CauTraLoi5],[HoatDong],[ThoiGianBatDau],[ThoiGianKetThuc],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_18_ThamDoYKien]
    WHERE [id] =@pk_id
    SET NOCOUNT OFF
END

