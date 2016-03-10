if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucUpdate') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucUpdate 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Updates a record in the [dbo].[tTrafficSafety_07_DanhMucTinTuc] table.
-- Concurreny is supported by using checksum method.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_07_DanhMucTinTucUpdate
    @pk_id int,
    @p_TenDanhMuc nvarchar(250),
    @p_DanhMucCha int,
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_GhiChu nvarchar(1000),
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_unsigned_TenDanhMuc nvarchar(250),
    @p_depth tinyint,
    @p_Lineage varchar(255),
    @p_hassub bit,
    @p_sort int,
    @p_prevConValue nvarchar(4000),
    @p_force_update  char(1)
AS
DECLARE
    @l_newValue nvarchar(4000),
    @return_status int,
    @l_rowcount int
BEGIN
-- Check whether the record still exists before doing update
    IF NOT EXISTS (SELECT * FROM [dbo].[tTrafficSafety_07_DanhMucTinTuc] WHERE [id] = @pk_id)
        RAISERROR ('Concurrency Error: The record has been deleted by another user. Table [dbo].[tTrafficSafety_07_DanhMucTinTuc]', 16, 1)

    -- If user wants to force update to happen even if 
    -- the record has been modified by a concurrent user,
    -- then we do this.
    IF (@p_force_update = 'Y')
        BEGIN

            -- Update the record with the passed parameters
            UPDATE [dbo].[tTrafficSafety_07_DanhMucTinTuc]
            SET 
            [TenDanhMuc] = @p_TenDanhMuc,
            [DanhMucCha] = @p_DanhMucCha,
            [ThuTu] = @p_ThuTu,
            [HoatDong] = @p_HoatDong,
            [GhiChu] = @p_GhiChu,
            [NguoiTao] = @p_NguoiTao,
            [ThoiGianTao] = @p_ThoiGianTao,
            [IpTao] = @p_IpTao,
            [NguoiSua] = @p_NguoiSua,
            [ThoiGianSua] = @p_ThoiGianSua,
            [IpSua] = @p_IpSua,
            [unsigned_TenDanhMuc] = @p_unsigned_TenDanhMuc,
            [depth] = @p_depth,
            [Lineage] = @p_Lineage,
            [hassub] = @p_hassub,
            [sort] = @p_sort
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
            Select @l_newValue = CAST(BINARY_CHECKSUM([id],[TenDanhMuc],[DanhMucCha],[ThuTu],[HoatDong],[GhiChu],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua],[unsigned_TenDanhMuc],[depth],[Lineage],[hassub],[sort]) AS nvarchar(4000)) 
            FROM [dbo].[tTrafficSafety_07_DanhMucTinTuc] with (rowlock, holdlock)
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

                    UPDATE [dbo].[tTrafficSafety_07_DanhMucTinTuc]
                    SET 
                    [TenDanhMuc] = @p_TenDanhMuc,
                    [DanhMucCha] = @p_DanhMucCha,
                    [ThuTu] = @p_ThuTu,
                    [HoatDong] = @p_HoatDong,
                    [GhiChu] = @p_GhiChu,
                    [NguoiTao] = @p_NguoiTao,
                    [ThoiGianTao] = @p_ThoiGianTao,
                    [IpTao] = @p_IpTao,
                    [NguoiSua] = @p_NguoiSua,
                    [ThoiGianSua] = @p_ThoiGianSua,
                    [IpSua] = @p_IpSua,
                    [unsigned_TenDanhMuc] = @p_unsigned_TenDanhMuc,
                    [depth] = @p_depth,
                    [Lineage] = @p_Lineage,
                    [hassub] = @p_hassub,
                    [sort] = @p_sort
                    WHERE [id] = @pk_id

                    SET @l_rowcount = @@ROWCOUNT
                    IF @l_rowcount = 0
                        RAISERROR ('The record cannot be updated.', 16, 1)
                    IF @l_rowcount > 1
                        RAISERROR ('duplicate object instances.', 16, 1)

                END
            ELSE
            -- Concurrency check failed.  Inform the user by raising the error
                RAISERROR ('Concurrency Error: The record has been updated by another user. Table [dbo].[tTrafficSafety_07_DanhMucTinTuc]', 16, 1)

        END
END

