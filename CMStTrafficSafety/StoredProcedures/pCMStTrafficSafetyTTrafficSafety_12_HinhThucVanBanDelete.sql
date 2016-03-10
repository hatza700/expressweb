if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_12_HinhThucVanBanDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_12_HinhThucVanBanDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_12_HinhThucVanBan] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_12_HinhThucVanBanDelete
        @pk_MaHinhThuc int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_12_HinhThucVanBan]
    WHERE [MaHinhThuc] = @pk_MaHinhThuc
END

