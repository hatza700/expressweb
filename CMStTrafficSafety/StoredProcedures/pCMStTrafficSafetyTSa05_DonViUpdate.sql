if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa05_DonViUpdate') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa05_DonViUpdate 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Updates a record in the [dbo].[tSa05_DonVi] table.
-- Concurreny is supported by using checksum method.
CREATE PROCEDURE pCMStTrafficSafetyTSa05_DonViUpdate
    @pk_ID int,
    @p_TenTat nvarchar(15),
    @p_TenDonVi nvarchar(100),
    @p_LoaiDonViID int,
    @p_DiaChi nchar(200),
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
    IF NOT EXISTS (SELECT * FROM [dbo].[tSa05_DonVi] WHERE [ID] = @pk_ID)
        RAISERROR ('Concurrency Error: The record has been deleted by another user. Table [dbo].[tSa05_DonVi]', 16, 1)

    -- If user wants to force update to happen even if 
    -- the record has been modified by a concurrent user,
    -- then we do this.
    IF (@p_force_update = 'Y')
        BEGIN

            -- Update the record with the passed parameters
            UPDATE [dbo].[tSa05_DonVi]
            SET 
            [TenTat] = @p_TenTat,
            [TenDonVi] = @p_TenDonVi,
            [LoaiDonViID] = @p_LoaiDonViID,
            [DiaChi] = @p_DiaChi,
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
            Select @l_newValue = CAST(BINARY_CHECKSUM([ID],[TenTat],[TenDonVi],[LoaiDonViID],[DiaChi],[ThuTu],[HoatDong],[GhiChu],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua]) AS nvarchar(4000)) 
            FROM [dbo].[tSa05_DonVi] with (rowlock, holdlock)
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

                    UPDATE [dbo].[tSa05_DonVi]
                    SET 
                    [TenTat] = @p_TenTat,
                    [TenDonVi] = @p_TenDonVi,
                    [LoaiDonViID] = @p_LoaiDonViID,
                    [DiaChi] = @p_DiaChi,
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
                RAISERROR ('Concurrency Error: The record has been updated by another user. Table [dbo].[tSa05_DonVi]', 16, 1)

        END
END

