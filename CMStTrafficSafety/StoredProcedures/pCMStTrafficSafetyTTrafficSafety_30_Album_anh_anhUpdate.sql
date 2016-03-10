if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhUpdate') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhUpdate 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Updates a record in the [dbo].[tTrafficSafety_30_Album_anh_anh] table.
-- Concurreny is supported by using checksum method.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_30_Album_anh_anhUpdate
    @pk_anhid int,
    @p_DuongDanAnh nvarchar(550),
    @p_ThuTu int,
    @p_ThuocAlbum int,
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_HoatDong bit,
    @p_GhiChu nvarchar(1000),
    @p_prevConValue nvarchar(4000),
    @p_force_update  char(1)
AS
DECLARE
    @l_newValue nvarchar(4000),
    @return_status int,
    @l_rowcount int
BEGIN
-- Check whether the record still exists before doing update
    IF NOT EXISTS (SELECT * FROM [dbo].[tTrafficSafety_30_Album_anh_anh] WHERE [anhid] = @pk_anhid)
        RAISERROR ('Concurrency Error: The record has been deleted by another user. Table [dbo].[tTrafficSafety_30_Album_anh_anh]', 16, 1)

    -- If user wants to force update to happen even if 
    -- the record has been modified by a concurrent user,
    -- then we do this.
    IF (@p_force_update = 'Y')
        BEGIN

            -- Update the record with the passed parameters
            UPDATE [dbo].[tTrafficSafety_30_Album_anh_anh]
            SET 
            [DuongDanAnh] = @p_DuongDanAnh,
            [ThuTu] = @p_ThuTu,
            [ThuocAlbum] = @p_ThuocAlbum,
            [NguoiTao] = @p_NguoiTao,
            [ThoiGianTao] = @p_ThoiGianTao,
            [IpTao] = @p_IpTao,
            [NguoiSua] = @p_NguoiSua,
            [ThoiGianSua] = @p_ThoiGianSua,
            [IpSua] = @p_IpSua,
            [HoatDong] = @p_HoatDong,
            [GhiChu] = @p_GhiChu
            WHERE [anhid] = @pk_anhid

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
            Select @l_newValue = CAST(BINARY_CHECKSUM([anhid],[DuongDanAnh],[ThuTu],[ThuocAlbum],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua],[HoatDong],[GhiChu]) AS nvarchar(4000)) 
            FROM [dbo].[tTrafficSafety_30_Album_anh_anh] with (rowlock, holdlock)
            WHERE [anhid] = @pk_anhid


            -- Check concurrency by comparing the checksum values
            IF (@p_prevConValue = @l_newValue)
                SET @return_status = 0     -- pass
            ElSE
                SET @return_status = 1     -- fail

            -- Concurrency check passed.  Go ahead and 
            -- update the record
            IF (@return_status = 0)
                BEGIN

                    UPDATE [dbo].[tTrafficSafety_30_Album_anh_anh]
                    SET 
                    [DuongDanAnh] = @p_DuongDanAnh,
                    [ThuTu] = @p_ThuTu,
                    [ThuocAlbum] = @p_ThuocAlbum,
                    [NguoiTao] = @p_NguoiTao,
                    [ThoiGianTao] = @p_ThoiGianTao,
                    [IpTao] = @p_IpTao,
                    [NguoiSua] = @p_NguoiSua,
                    [ThoiGianSua] = @p_ThoiGianSua,
                    [IpSua] = @p_IpSua,
                    [HoatDong] = @p_HoatDong,
                    [GhiChu] = @p_GhiChu
                    WHERE [anhid] = @pk_anhid

                    SET @l_rowcount = @@ROWCOUNT
                    IF @l_rowcount = 0
                        RAISERROR ('The record cannot be updated.', 16, 1)
                    IF @l_rowcount > 1
                        RAISERROR ('duplicate object instances.', 16, 1)

                END
            ELSE
            -- Concurrency check failed.  Inform the user by raising the error
                RAISERROR ('Concurrency Error: The record has been updated by another user. Table [dbo].[tTrafficSafety_30_Album_anh_anh]', 16, 1)

        END
END

