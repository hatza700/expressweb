if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_16_GopYUpdate') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_16_GopYUpdate 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Updates a record in the [dbo].[tTrafficSafety_16_GopY] table.
-- Concurreny is supported by using checksum method.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_16_GopYUpdate
    @pk_id int,
    @p_HoTen nvarchar(250),
    @p_Email nvarchar(250),
    @p_DienThoai nvarchar(250),
    @p_DiaChi nvarchar(250),
    @p_TieuDe nvarchar(550),
    @p_NoiDungGopY nvarchar(max),
    @p_TinhTrang int,
    @p_NoiDungTraLoi nvarchar(max),
    @p_ThoiGianGopy datetime,
    @p_IpGopY nvarchar(30),
    @p_Nguoitraloi int,
    @p_ThoiGianTraLoi datetime,
    @p_Iptraloi nvarchar(30),
    @p_XuatBanRaWeb bit,
    @p_FileDinhKem nvarchar(550),
    @p_AnhMinhHoa nvarchar(550),
    @p_prevConValue nvarchar(4000),
    @p_force_update  char(1)
AS
DECLARE
    @l_newValue nvarchar(4000),
    @return_status int,
    @l_rowcount int
BEGIN
-- Check whether the record still exists before doing update
    IF NOT EXISTS (SELECT * FROM [dbo].[tTrafficSafety_16_GopY] WHERE [id] = @pk_id)
        RAISERROR ('Concurrency Error: The record has been deleted by another user. Table [dbo].[tTrafficSafety_16_GopY]', 16, 1)

    -- If user wants to force update to happen even if 
    -- the record has been modified by a concurrent user,
    -- then we do this.
    IF (@p_force_update = 'Y')
        BEGIN

            -- Update the record with the passed parameters
            UPDATE [dbo].[tTrafficSafety_16_GopY]
            SET 
            [HoTen] = @p_HoTen,
            [Email] = @p_Email,
            [DienThoai] = @p_DienThoai,
            [DiaChi] = @p_DiaChi,
            [TieuDe] = @p_TieuDe,
            [NoiDungGopY] = @p_NoiDungGopY,
            [TinhTrang] = @p_TinhTrang,
            [NoiDungTraLoi] = @p_NoiDungTraLoi,
            [ThoiGianGopy] = @p_ThoiGianGopy,
            [IpGopY] = @p_IpGopY,
            [Nguoitraloi] = @p_Nguoitraloi,
            [ThoiGianTraLoi] = @p_ThoiGianTraLoi,
            [Iptraloi] = @p_Iptraloi,
            [XuatBanRaWeb] = @p_XuatBanRaWeb,
            [FileDinhKem] = @p_FileDinhKem,
            [AnhMinhHoa] = @p_AnhMinhHoa
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
            Select @l_newValue = CAST(BINARY_CHECKSUM([id],[HoTen],[Email],[DienThoai],[DiaChi],[TieuDe],[NoiDungGopY],[TinhTrang],[NoiDungTraLoi],[ThoiGianGopy],[IpGopY],[Nguoitraloi],[ThoiGianTraLoi],[Iptraloi],[XuatBanRaWeb],[FileDinhKem],[AnhMinhHoa]) AS nvarchar(4000)) 
            FROM [dbo].[tTrafficSafety_16_GopY] with (rowlock, holdlock)
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

                    UPDATE [dbo].[tTrafficSafety_16_GopY]
                    SET 
                    [HoTen] = @p_HoTen,
                    [Email] = @p_Email,
                    [DienThoai] = @p_DienThoai,
                    [DiaChi] = @p_DiaChi,
                    [TieuDe] = @p_TieuDe,
                    [NoiDungGopY] = @p_NoiDungGopY,
                    [TinhTrang] = @p_TinhTrang,
                    [NoiDungTraLoi] = @p_NoiDungTraLoi,
                    [ThoiGianGopy] = @p_ThoiGianGopy,
                    [IpGopY] = @p_IpGopY,
                    [Nguoitraloi] = @p_Nguoitraloi,
                    [ThoiGianTraLoi] = @p_ThoiGianTraLoi,
                    [Iptraloi] = @p_Iptraloi,
                    [XuatBanRaWeb] = @p_XuatBanRaWeb,
                    [FileDinhKem] = @p_FileDinhKem,
                    [AnhMinhHoa] = @p_AnhMinhHoa
                    WHERE [id] = @pk_id

                    SET @l_rowcount = @@ROWCOUNT
                    IF @l_rowcount = 0
                        RAISERROR ('The record cannot be updated.', 16, 1)
                    IF @l_rowcount > 1
                        RAISERROR ('duplicate object instances.', 16, 1)

                END
            ELSE
            -- Concurrency check failed.  Inform the user by raising the error
                RAISERROR ('Concurrency Error: The record has been updated by another user. Table [dbo].[tTrafficSafety_16_GopY]', 16, 1)

        END
END

