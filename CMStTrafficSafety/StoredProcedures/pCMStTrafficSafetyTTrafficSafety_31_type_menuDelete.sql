if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_31_type_menuDelete') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_31_type_menuDelete 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Deletes a record from the [dbo].[tTrafficSafety_31_type_menu] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_31_type_menuDelete
        @pk_id int
AS
BEGIN
    DELETE [dbo].[tTrafficSafety_31_type_menu]
    WHERE [id] = @pk_id
END

