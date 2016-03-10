if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienUpdate') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienUpdate 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Updates a record in the [dbo].[tTrafficSafety_18_ThamDoYKien] table.
-- Concurreny is supported by using checksum method.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_18_ThamDoYKienUpdate
    @pk_id int,
    @p_CauHoiThamDo nvarchar(250),
    @p_CauTraLoi1 nvarchar(250),
    @p_CauTraLoi2 nvarchar(250),
    @p_CauTraLoi3 nvarchar(250),
    @p_CauTraLoi4 nvarchar(250),
    @p_CauTraLoi5 nvarchar(250),
    @p_HoatDong bit,
    @p_ThoiGianBatDau datetime,
    @p_ThoiGianKetThuc datetime,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_prevConValue nvarchar(4000),
    @p_force_update  char(1)
AS
DECLARE
    @l_newValue nvarchar(4000),
    @return_status int,
    @l_rowcount int
BEGIN
-- Check whether the record still exists before doing update
    IF NOT EXISTS (SELECT * FROM [dbo].[tTrafficSafety_18_ThamDoYKien] WHERE [id] = @pk_id)
        RAISERROR ('Concurrency Error: The record has been deleted by another user. Table [dbo].[tTrafficSafety_18_ThamDoYKien]', 16, 1)

    -- If user wants to force update to happen even if 
    -- the record has been modified by a concurrent user,
    -- then we do this.
    IF (@p_force_update = 'Y')
        BEGIN

            -- Update the record with the passed parameters
            UPDATE [dbo].[tTrafficSafety_18_ThamDoYKien]
            SET 
            [CauHoiThamDo] = @p_CauHoiThamDo,
            [CauTraLoi1] = @p_CauTraLoi1,
            [CauTraLoi2] = @p_CauTraLoi2,
            [CauTraLoi3] = @p_CauTraLoi3,
            [CauTraLoi4] = @p_CauTraLoi4,
            [CauTraLoi5] = @p_CauTraLoi5,
            [HoatDong] = @p_HoatDong,
            [ThoiGianBatDau] = @p_ThoiGianBatDau,
            [ThoiGianKetThuc] = @p_ThoiGianKetThuc,
            [NguoiTao] = @p_NguoiTao,
            [ThoiGianTao] = @p_ThoiGianTao,
            [IpTao] = @p_IpTao,
            [NguoiSua] = @p_NguoiSua,
            [ThoiGianSua] = @p_ThoiGianSua,
            [IpSua] = @p_IpSua
            WHERE [id] = @pk_id

            -- Make sure only one record is affected
            SET @l_rowcount = @@ROWCOUNT
            IF @l_rowcount = 0
                RAISERROR ('The record cannot be updated.', 16, 1)
            IF @l_rowcount > 1
                RAISERROR ('duplicate object instances.', 16, 1)

        END
    ELSE
        BEGIN
            -- Get the checksum value for the record 
            -- and put an update lock on the record to 
            -- ensure transactional integrity.  The lock
            -- will be release when the transaction is 
            -- later committed or rolled back.
            Select @l_newValue = CAST(BINARY_CHECKSUM([id],[CauHoiThamDo],[CauTraLoi1],[CauTraLoi2],[CauTraLoi3],[CauTraLoi4],[CauTraLoi5],[HoatDong],[ThoiGianBatDau],[ThoiGianKetThuc],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua]) AS nvarchar(4000)) 
            FROM [dbo].[tTrafficSafety_18_ThamDoYKien] with (rowlock, holdlock)
            WHERE [id] = @pk_id


            -- Check concurrency by comparing the checksum values
            IF (@p_prevConValue = @l_newValue)
                SET @return_status = 0     -- pass
            ElSE
                SET @return_status = 1     -- fail

            -- Concurrency check passed.  Go ahead and 
            -- update the record
            IF (@return_status = 0)
                BEGIN

                    UPDATE [dbo].[tTrafficSafety_18_ThamDoYKien]
                    SET 
                    [CauHoiThamDo] = @p_CauHoiThamDo,
                    [CauTraLoi1] = @p_CauTraLoi1,
                    [CauTraLoi2] = @p_CauTraLoi2,
                    [CauTraLoi3] = @p_CauTraLoi3,
                    [CauTraLoi4] = @p_CauTraLoi4,
                    [CauTraLoi5] = @p_CauTraLoi5,
                    [HoatDong] = @p_HoatDong,
                    [ThoiGianBatDau] = @p_ThoiGianBatDau,
                    [ThoiGianKetThuc] = @p_ThoiGianKetThuc,
                    [NguoiTao] = @p_NguoiTao,
                    [ThoiGianTao] = @p_ThoiGianTao,
                    [IpTao] = @p_IpTao,
                    [NguoiSua] = @p_NguoiSua,
                    [ThoiGianSua] = @p_ThoiGianSua,
                    [IpSua] = @p_IpSua
                    WHERE [id] = @pk_id

                    SET @l_rowcount = @@ROWCOUNT
                    IF @l_rowcount = 0
                        RAISERROR ('The record cannot be updated.', 16, 1)
                    IF @l_rowcount > 1
                        RAISERROR ('duplicate object instances.', 16, 1)

                END
            ELSE
            -- Concurrency check failed.  Inform the user by raising the error
                RAISERROR ('Concurrency Error: The record has been updated by another user. Table [dbo].[tTrafficSafety_18_ThamDoYKien]', 16, 1)

        END
END

