if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_19_KetQuaThamDoYKienGet') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_19_KetQuaThamDoYKienGet 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns a specific record from the [dbo].[tTrafficSafety_19_KetQuaThamDoYKien] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_19_KetQuaThamDoYKienGet
        @pk_Id bigint
AS
DECLARE
    @l_count int
BEGIN

    SET NOCOUNT ON
    -- Get the rowcount first and make sure 
    -- only one row is returned
    SELECT @l_count = count(*) 
    FROM [dbo].[tTrafficSafety_19_KetQuaThamDoYKien]
    WHERE [Id] =@pk_Id

    IF @l_count = 0
        RAISERROR ('The record no longer exists.', 16, 1)
    IF @l_count > 1
        RAISERROR ('duplicate object instances.', 16, 1)

    -- Get the row from the query.  Checksum value will be
    -- returned along the row data to support concurrency.
    SELECT 
        [Id],
        [Ip],
        [ThamDoYKienId],
        [TraLoi],
        [HoTen],
        [Email],
        [SDT],
        CAST(BINARY_CHECKSUM([Id],[Ip],[ThamDoYKienId],[TraLoi],[HoTen],[Email],[SDT]) AS nvarchar(4000)) AS IS_CHECKSUM_COLUMN_12345
    FROM [dbo].[tTrafficSafety_19_KetQuaThamDoYKien]
    WHERE [Id] =@pk_Id
    SET NOCOUNT OFF
END

