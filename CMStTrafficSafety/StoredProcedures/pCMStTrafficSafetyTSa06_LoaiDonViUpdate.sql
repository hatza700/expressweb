if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa06_LoaiDonViUpdate') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa06_LoaiDonViUpdate 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Updates a record in the [dbo].[tSa06_LoaiDonVi] table.
-- Concurreny is supported by using checksum method.
CREATE PROCEDURE pCMStTrafficSafetyTSa06_LoaiDonViUpdate
    @pk_ID int,
    @p_LoaiDonVi nvarchar(50),
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_GhiChu nvarchar(500),
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
    IF NOT EXISTS (SELECT * FROM [dbo].[tSa06_LoaiDonVi] WHERE [ID] = @pk_ID)
        RAISERROR ('Concurrency Error: The record has been deleted by another user. Table [dbo].[tSa06_LoaiDonVi]', 16, 1)

    -- If user wants to force update to happen even if 
    -- the record has been modified by a concurrent user,
    -- then we do this.
    IF (@p_force_update = 'Y')
        BEGIN

            -- Update the record with the passed parameters
            UPDATE [dbo].[tSa06_LoaiDonVi]
            SET 
            [LoaiDonVi] = @p_LoaiDonVi,
            [ThuTu] = @p_ThuTu,
            [HoatDong] = @p_HoatDong,
            [GhiChu] = @p_GhiChu,
            [NguoiTao] = @p_NguoiTao,
            [ThoiGianTao] = @p_ThoiGianTao,
            [IpTao] = @p_IpTao,
            [NguoiSua] = @p_NguoiSua,
            [ThoiGianSua] = @p_ThoiGianSua,
            [IpSua] = @p_IpSua
            WHERE [ID] = @pk_ID

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
            Select @l_newValue = CAST(BINARY_CHECKSUM([ID],[LoaiDonVi],[ThuTu],[HoatDong],[GhiChu],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua]) AS nvarchar(4000)) 
            FROM [dbo].[tSa06_LoaiDonVi] with (rowlock, holdlock)
            WHERE [ID] = @pk_ID


            -- Check concurrency by comparing the checksum values
            IF (@p_prevConValue = @l_newValue)
                SET @return_status = 0     -- pass
            ElSE
                SET @return_status = 1     -- fail

            -- Concurrency check passed.  Go ahead and 
            -- update the record
            IF (@return_status = 0)
                BEGIN

                    UPDATE [dbo].[tSa06_LoaiDonVi]
                    SET 
                    [LoaiDonVi] = @p_LoaiDonVi,
                    [ThuTu] = @p_ThuTu,
                    [HoatDong] = @p_HoatDong,
                    [GhiChu] = @p_GhiChu,
                    [NguoiTao] = @p_NguoiTao,
                    [ThoiGianTao] = @p_ThoiGianTao,
                    [IpTao] = @p_IpTao,
                    [NguoiSua] = @p_NguoiSua,
                    [ThoiGianSua] = @p_ThoiGianSua,
                    [IpSua] = @p_IpSua
                    WHERE [ID] = @pk_ID

                    SET @l_rowcount = @@ROWCOUNT
                    IF @l_rowcount = 0
                        RAISERROR ('The record cannot be updated.', 16, 1)
                    IF @l_rowcount > 1
                        RAISERROR ('duplicate object instances.', 16, 1)

                END
            ELSE
            -- Concurrency check failed.  Inform the user by raising the error
                RAISERROR ('Concurrency Error: The record has been updated by another user. Table [dbo].[tSa06_LoaiDonVi]', 16, 1)

        END
END

