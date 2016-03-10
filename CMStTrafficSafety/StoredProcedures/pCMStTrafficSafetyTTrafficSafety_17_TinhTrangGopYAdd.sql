if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_17_TinhTrangGopYAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_17_TinhTrangGopYAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_17_TinhTrangGopY] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_17_TinhTrangGopYAdd
    @p_TinhTrangGopY nvarchar(250),
    @p_id_out int output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_17_TinhTrangGopY]
        (
            [TinhTrangGopY]
        )
    VALUES
        (
             @p_TinhTrangGopY
        )

    SET @p_id_out = SCOPE_IDENTITY()

END

