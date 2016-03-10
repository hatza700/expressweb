if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTSa01_UserUpdate') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTSa01_UserUpdate 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Updates a record in the [dbo].[tSa01_User] table.
-- Concurreny is supported by using checksum method.
CREATE PROCEDURE pCMStTrafficSafetyTSa01_UserUpdate
    @pk_ID int,
    @p_HoTen nvarchar(128),
    @p_Username nvarchar(128),
    @p_Password nvarchar(128),
    @p_DonViID int,
    @p_ChucVuID int,
    @p_CapTheoDoi int,
    @p_QuanTriDonVi bit,
    @p_Email nvarchar(250),
    @p_CanDoiPass bit,
    @p_ThuTu int,
    @p_HoatDong bit,
    @p_MACAddress nvarchar(500),
    @p_GhiChu nvarchar(500),
    @p_NguoiTao int,
    @p_ThoiGianTao datetime,
    @p_IpTao nvarchar(30),
    @p_NguoiSua int,
    @p_ThoiGianSua datetime,
    @p_IpSua nvarchar(30),
    @p_Salt nvarchar(128),
    @p_prevConValue nvarchar(4000),
    @p_force_update  char(1)
AS
DECLARE
    @l_newValue nvarchar(4000),
    @return_status int,
    @l_rowcount int
BEGIN
-- Check whether the record still exists before doing update
    IF NOT EXISTS (SELECT * FROM [dbo].[tSa01_User] WHERE [ID] = @pk_ID)
        RAISERROR ('Concurrency Error: The record has been deleted by another user. Table [dbo].[tSa01_User]', 16, 1)

    -- If user wants to force update to happen even if 
    -- the record has been modified by a concurrent user,
    -- then we do this.
    IF (@p_force_update = 'Y')
        BEGIN

            -- Update the record with the passed parameters
            UPDATE [dbo].[tSa01_User]
            SET 
            [HoTen] = @p_HoTen,
            [Username] = @p_Username,
            [Password] = @p_Password,
            [DonViID] = @p_DonViID,
            [ChucVuID] = @p_ChucVuID,
            [CapTheoDoi] = @p_CapTheoDoi,
            [QuanTriDonVi] = @p_QuanTriDonVi,
            [Email] = @p_Email,
            [CanDoiPass] = @p_CanDoiPass,
            [ThuTu] = @p_ThuTu,
            [HoatDong] = @p_HoatDong,
            [MACAddress] = @p_MACAddress,
            [GhiChu] = @p_GhiChu,
            [NguoiTao] = @p_NguoiTao,
            [ThoiGianTao] = @p_ThoiGianTao,
            [IpTao] = @p_IpTao,
            [NguoiSua] = @p_NguoiSua,
            [ThoiGianSua] = @p_ThoiGianSua,
            [IpSua] = @p_IpSua,
            [Salt] = @p_Salt
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
            Select @l_newValue = CAST(BINARY_CHECKSUM([ID],[HoTen],[Username],[Password],[DonViID],[ChucVuID],[CapTheoDoi],[QuanTriDonVi],[Email],[CanDoiPass],[ThuTu],[HoatDong],[MACAddress],[GhiChu],[NguoiTao],[ThoiGianTao],[IpTao],[NguoiSua],[ThoiGianSua],[IpSua],[Salt]) AS nvarchar(4000)) 
            FROM [dbo].[tSa01_User] with (rowlock, holdlock)
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

                    UPDATE [dbo].[tSa01_User]
                    SET 
                    [HoTen] = @p_HoTen,
                    [Username] = @p_Username,
                    [Password] = @p_Password,
                    [DonViID] = @p_DonViID,
                    [ChucVuID] = @p_ChucVuID,
                    [CapTheoDoi] = @p_CapTheoDoi,
                    [QuanTriDonVi] = @p_QuanTriDonVi,
                    [Email] = @p_Email,
                    [CanDoiPass] = @p_CanDoiPass,
                    [ThuTu] = @p_ThuTu,
                    [HoatDong] = @p_HoatDong,
                    [MACAddress] = @p_MACAddress,
                    [GhiChu] = @p_GhiChu,
                    [NguoiTao] = @p_NguoiTao,
                    [ThoiGianTao] = @p_ThoiGianTao,
                    [IpTao] = @p_IpTao,
                    [NguoiSua] = @p_NguoiSua,
                    [ThoiGianSua] = @p_ThoiGianSua,
                    [IpSua] = @p_IpSua,
                    [Salt] = @p_Salt
                    WHERE [ID] = @pk_ID

                    SET @l_rowcount = @@ROWCOUNT
                    IF @l_rowcount = 0
                        RAISERROR ('The record cannot be updated.', 16, 1)
                    IF @l_rowcount > 1
                        RAISERROR ('duplicate object instances.', 16, 1)

                END
            ELSE
            -- Concurrency check failed.  Inform the user by raising the error
                RAISERROR ('Concurrency Error: The record has been updated by another user. Table [dbo].[tSa01_User]', 16, 1)

        END
END

