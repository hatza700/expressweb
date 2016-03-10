if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_19_KetQuaThamDoYKienAdd') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_19_KetQuaThamDoYKienAdd 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creates a new record in the [dbo].[tTrafficSafety_19_KetQuaThamDoYKien] table.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_19_KetQuaThamDoYKienAdd
    @p_Ip nvarchar(150),
    @p_ThamDoYKienId int,
    @p_TraLoi int,
    @p_HoTen nvarchar(350),
    @p_Email nvarchar(350),
    @p_SDT nvarchar(350),
    @p_Id_out bigint output
AS
BEGIN
    INSERT
    INTO [dbo].[tTrafficSafety_19_KetQuaThamDoYKien]
        (
            [Ip],
            [ThamDoYKienId],
            [TraLoi],
            [HoTen],
            [Email],
            [SDT]
        )
    VALUES
        (
             @p_Ip,
             @p_ThamDoYKienId,
             @p_TraLoi,
             @p_HoTen,
             @p_Email,
             @p_SDT
        )

    SET @p_Id_out = SCOPE_IDENTITY()

END

