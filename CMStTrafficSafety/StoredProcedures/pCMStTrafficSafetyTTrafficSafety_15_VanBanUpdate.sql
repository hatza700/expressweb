if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_15_VanBanUpdate') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_15_VanBanUpdate 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Updates a record in the [dbo].[tTrafficSafety_15_VanBan] table.
-- Concurreny is supported by using checksum method.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_15_VanBanUpdate
    @pk_VanBanID int,
    @p_MaHinhThucVanban int,
    @p_MaChuyenNganh int,
    @p_MaLinhVuc int,
    @p_MaCQBH int,
    @p_SoHieuVB nvarchar(50),
    @p_TrichYeu nvarchar(500),
    @p_NgayBanHanh datetime,
    @p_TinhTrang nvarchar(50),
    @p_TepDinhKem nvarchar(250),
    @p_GhiChu nvarchar(250),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_NguoiTao int,
    @p_IpTao nvarchar(30),
    @p_ThoiGianTao datetime,
    @p_prevConValue nvarchar(4000),
    @p_force_update  char(1)
AS
DECLARE
    @l_newValue nvarchar(4000),
    @return_status int,
    @l_rowcount int
BEGIN
-- Check whether the record still exists before doing update
    IF NOT EXISTS (SELECT * FROM [dbo].[tTrafficSafety_15_VanBan] WHERE [VanBanID] = @pk_VanBanID)
        RAISERROR ('Concurrency Error: The record has been deleted by another user. Table [dbo].[tTrafficSafety_15_VanBan]', 16, 1)

    -- If user wants to force update to happen even if 
    -- the record has been modified by a concurrent user,
    -- then we do this.
    IF (@p_force_update = 'Y')
        BEGIN

            -- Update the record with the passed parameters
            UPDATE [dbo].[tTrafficSafety_15_VanBan]
            SET 
            [MaHinhThucVanban] = @p_MaHinhThucVanban,
            [MaChuyenNganh] = @p_MaChuyenNganh,
            [MaLinhVuc] = @p_MaLinhVuc,
            [MaCQBH] = @p_MaCQBH,
            [SoHieuVB] = @p_SoHieuVB,
            [TrichYeu] = @p_TrichYeu,
            [NgayBanHanh] = @p_NgayBanHanh,
            [TinhTrang] = @p_TinhTrang,
            [TepDinhKem] = @p_TepDinhKem,
            [GhiChu] = @p_GhiChu,
            [NguoiSua] = @p_NguoiSua,
            [ThoiGianSua] = @p_ThoiGianSua,
            [IpSua] = @p_IpSua,
            [NguoiTao] = @p_NguoiTao,
            [IpTao] = @p_IpTao,
            [ThoiGianTao] = @p_ThoiGianTao
            WHERE [VanBanID] = @pk_VanBanID

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
            Select @l_newValue = CAST(BINARY_CHECKSUM([VanBanID],[MaHinhThucVanban],[MaChuyenNganh],[MaLinhVuc],[MaCQBH],[SoHieuVB],[TrichYeu],[NgayBanHanh],[TinhTrang],[TepDinhKem],[GhiChu],[NguoiSua],[ThoiGianSua],[IpSua],[NguoiTao],[IpTao],[ThoiGianTao]) AS nvarchar(4000)) 
            FROM [dbo].[tTrafficSafety_15_VanBan] with (rowlock, holdlock)
            WHERE [VanBanID] = @pk_VanBanID


            -- Check concurrency by comparing the checksum values
            IF (@p_prevConValue = @l_newValue)
                SET @return_status = 0     -- pass
            ElSE
                SET @return_status = 1     -- fail

            -- Concurrency check passed.  Go ahead and 
            -- update the record
            IF (@return_status = 0)
                BEGIN

                    UPDATE [dbo].[tTrafficSafety_15_VanBan]
                    SET 
                    [MaHinhThucVanban] = @p_MaHinhThucVanban,
                    [MaChuyenNganh] = @p_MaChuyenNganh,
                    [MaLinhVuc] = @p_MaLinhVuc,
                    [MaCQBH] = @p_MaCQBH,
                    [SoHieuVB] = @p_SoHieuVB,
                    [TrichYeu] = @p_TrichYeu,
                    [NgayBanHanh] = @p_NgayBanHanh,
                    [TinhTrang] = @p_TinhTrang,
                    [TepDinhKem] = @p_TepDinhKem,
                    [GhiChu] = @p_GhiChu,
                    [NguoiSua] = @p_NguoiSua,
                    [ThoiGianSua] = @p_ThoiGianSua,
                    [IpSua] = @p_IpSua,
                    [NguoiTao] = @p_NguoiTao,
                    [IpTao] = @p_IpTao,
                    [ThoiGianTao] = @p_ThoiGianTao
                    WHERE [VanBanID] = @pk_VanBanID

                    SET @l_rowcount = @@ROWCOUNT
                    IF @l_rowcount = 0
                        RAISERROR ('The record cannot be updated.', 16, 1)
                    IF @l_rowcount > 1
                        RAISERROR ('duplicate object instances.', 16, 1)

                END
            ELSE
            -- Concurrency check failed.  Inform the user by raising the error
                RAISERROR ('Concurrency Error: The record has been updated by another user. Table [dbo].[tTrafficSafety_15_VanBan]', 16, 1)

        END
END

