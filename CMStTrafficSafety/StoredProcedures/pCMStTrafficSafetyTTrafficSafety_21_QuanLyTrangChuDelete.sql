if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_21_QuanLyTrangChuDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_21_QuanLyTrangChuDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_21_QuanLyTrangChu] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_21_QuanLyTrangChuDelete
        @pk_Id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_21_QuanLyTrangChu]
    WHERE [Id] = @pk_Id
END

