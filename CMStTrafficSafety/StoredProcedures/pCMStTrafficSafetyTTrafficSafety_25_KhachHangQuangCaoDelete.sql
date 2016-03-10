if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_25_KhachHangQuangCaoDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_25_KhachHangQuangCaoDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_25_KhachHangQuangCao] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_25_KhachHangQuangCaoDelete
        @pk_Id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_25_KhachHangQuangCao]
    WHERE [Id] = @pk_Id
END

