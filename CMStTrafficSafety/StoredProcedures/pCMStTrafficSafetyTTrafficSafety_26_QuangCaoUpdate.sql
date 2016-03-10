if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_26_QuangCaoUpdate') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_26_QuangCaoUpdate 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Updates a record in the [dbo].[tTrafficSafety_26_QuangCao] table.
-- Concurreny is supported by using checksum method.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_26_QuangCaoUpdate
    @pk_Id int,
    @p_TenQuangCao nvarchar(250),
    @p_KhachHang int,
    @p_ViTri int,
    @p_DuongDanAnh nvarchar(350),
    @p_LinkLienKet nvarchar(350),
    @p_ThoiGianBatDau datetime,
    @p_ThoiGianKetThuc datetime,
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_thuoc_module int,
    @p_prevConValue nvarchar(4000),
    @p_force_update  char(1)
AS
DECLARE
    @l_newValue nvarchar(4000),
    @return_status int,
    @l_rowcount int
BEGIN
-- Check whether the record still exists before doing update
    IF NOT EXISTS (SELECT * FROM [dbo].[tTrafficSafety_26_QuangCao] WHERE [Id] = @pk_Id)
        RAISERROR ('Concurrency Error: The record has been deleted by another user. Table [dbo].[tTrafficSafety_26_QuangCao]', 16, 1)

    -- If user wants to force update to happen even if 
    -- the record has been modified by a concurrent user,
    -- then we do this.
    IF (@p_force_update = 'Y')
        BEGIN

            -- Update the record with the passed parameters
            UPDATE [dbo].[tTrafficSafety_26_QuangCao]
            SET 
            [TenQuangCao] = @p_TenQuangCao,
            [KhachHang] = @p_KhachHang,
            [ViTri] = @p_ViTri,
            [DuongDanAnh] = @p_DuongDanAnh,
            [LinkLienKet] = @p_LinkLienKet,
            [ThoiGianBatDau] = @p_ThoiGianBatDau,
            [ThoiGianKetThuc] = @p_ThoiGianKetThuc,
            [ThuTu] = @p_ThuTu,
            [HoatDong] = @p_HoatDong,
            [thuoc_module] = @p_thuoc_module
            WHERE [Id] = @pk_Id

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
            Select @l_newValue = CAST(BINARY_CHECKSUM([Id],[TenQuangCao],[KhachHang],[ViTri],[DuongDanAnh],[LinkLienKet],[ThoiGianBatDau],[ThoiGianKetThuc],[ThuTu],[HoatDong],[thuoc_module]) AS nvarchar(4000)) 
            FROM [dbo].[tTrafficSafety_26_QuangCao] with (rowlock, holdlock)
            WHERE [Id] = @pk_Id


            -- Check concurrency by comparing the checksum values
            IF (@p_prevConValue = @l_newValue)
                SET @return_status = 0     -- pass
            ElSE
                SET @return_status = 1     -- fail

            -- Concurrency check passed.  Go ahead and 
            -- update the record
            IF (@return_status = 0)
                BEGIN

                    UPDATE [dbo].[tTrafficSafety_26_QuangCao]
                    SET 
                    [TenQuangCao] = @p_TenQuangCao,
                    [KhachHang] = @p_KhachHang,
                    [ViTri] = @p_ViTri,
                    [DuongDanAnh] = @p_DuongDanAnh,
                    [LinkLienKet] = @p_LinkLienKet,
                    [ThoiGianBatDau] = @p_ThoiGianBatDau,
                    [ThoiGianKetThuc] = @p_ThoiGianKetThuc,
                    [ThuTu] = @p_ThuTu,
                    [HoatDong] = @p_HoatDong,
                    [thuoc_module] = @p_thuoc_module
                    WHERE [Id] = @pk_Id

                    SET @l_rowcount = @@ROWCOUNT
                    IF @l_rowcount = 0
                        RAISERROR ('The record cannot be updated.', 16, 1)
                    IF @l_rowcount > 1
                        RAISERROR ('duplicate object instances.', 16, 1)

                END
            ELSE
            -- Concurrency check failed.  Inform the user by raising the error
                RAISERROR ('Concurrency Error: The record has been updated by another user. Table [dbo].[tTrafficSafety_26_QuangCao]', 16, 1)

        END
END

