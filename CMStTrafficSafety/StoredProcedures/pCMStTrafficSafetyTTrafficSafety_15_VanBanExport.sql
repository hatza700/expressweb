if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_15_VanBanExport') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_15_VanBanExport 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Returns the query result set in a CSV format
-- so that the data can be exported to a CSV file
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_15_VanBanExport
        @p_separator_str nvarchar(15),
        @p_title_str nvarchar(4000),
        @p_select_str nvarchar(4000),
        @p_join_str nvarchar(4000),
        @p_where_str nvarchar(4000),
        @p_num_exported int output
    AS
    DECLARE
        @l_title_str nvarchar(4000),
        @l_select_str nvarchar(4000),
        @l_from_str nvarchar(4000),
        @l_join_str nvarchar(4000),
        @l_where_str nvarchar(4000),
        @l_query_select nvarchar(4000),
        @l_query_union nvarchar(4000),
        @l_query_from nvarchar(4000)
    BEGIN
        -- Set up the title string from the column names.  Excel 
        -- will complain if the first column value is ID. So wrap
        -- the value with "".
        SET @l_title_str = @p_title_str + char(13)
        IF @p_title_str IS NULL
            BEGIN
            SET @l_title_str = 
                N'"VanBanID"' + @p_separator_str +
                N'"MaHinhThucVanban"' + @p_separator_str +
                N'"MaChuyenNganh"' + @p_separator_str +
                N'"MaLinhVuc"' + @p_separator_str +
                N'"MaCQBH"' + @p_separator_str +
                N'"SoHieuVB"' + @p_separator_str +
                N'"TrichYeu"' + @p_separator_str +
                N'"NgayBanHanh"' + @p_separator_str +
                N'"TinhTrang"' + @p_separator_str +
                N'"TepDinhKem"' + @p_separator_str +
                N'"GhiChu"' + @p_separator_str +
                N'"NguoiSua"' + @p_separator_str +
                N'"ThoiGianSua"' + @p_separator_str +
                N'"IpSua"' + @p_separator_str +
                N'"NguoiTao"' + @p_separator_str +
                N'"IpTao"' + @p_separator_str +
                N'"ThoiGianTao"' + ' ';
            END
        ELSE IF SUBSTRING(@l_title_str, 1, 2) = 'ID'
            SET @l_title_str = 
                '"' + 
                SUBSTRING(@l_title_str, 1, PATINDEX('%,%', @l_title_str)-1) + 
                '"' + 
                SUBSTRING(@l_title_str, PATINDEX('%,%', @l_title_str), LEN(@l_title_str)); 

        -- Set up the select string
        SET @l_select_str = @p_select_str
        IF @p_select_str IS NULL
            BEGIN
            SET @l_select_str = 
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[VanBanID]), '''') + ''' + @p_separator_str + ''' +' +
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[MaHinhThucVanban]), '''') + ''' + @p_separator_str + ''' +' +
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[MaChuyenNganh]), '''') + ''' + @p_separator_str + ''' +' +
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[MaLinhVuc]), '''') + ''' + @p_separator_str + ''' +' +
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[MaCQBH]), '''') + ''' + @p_separator_str + ''' +' +
                N'N''"'' + REPLACE(IsNULL(TTrafficSafety_15_VanBan_.[SoHieuVB], ''''), N''"'', N''""'') + N''"''  + ''' + @p_separator_str + ''' +' +
                N'N''"'' + REPLACE(IsNULL(TTrafficSafety_15_VanBan_.[TrichYeu], ''''), N''"'', N''""'') + N''"''  + ''' + @p_separator_str + ''' +' +
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[NgayBanHanh], 21), '''') + ''' + @p_separator_str + ''' +' +
                N'N''"'' + REPLACE(IsNULL(TTrafficSafety_15_VanBan_.[TinhTrang], ''''), N''"'', N''""'') + N''"''  + ''' + @p_separator_str + ''' +' +
                N'N''"'' + REPLACE(IsNULL(TTrafficSafety_15_VanBan_.[TepDinhKem], ''''), N''"'', N''""'') + N''"''  + ''' + @p_separator_str + ''' +' +
                N'N''"'' + REPLACE(IsNULL(TTrafficSafety_15_VanBan_.[GhiChu], ''''), N''"'', N''""'') + N''"''  + ''' + @p_separator_str + ''' +' +
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[NguoiSua]), '''') + ''' + @p_separator_str + ''' +' +
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[ThoiGianSua], 21), '''') + ''' + @p_separator_str + ''' +' +
                N'N''"'' + REPLACE(IsNULL(TTrafficSafety_15_VanBan_.[IpSua], ''''), N''"'', N''""'') + N''"''  + ''' + @p_separator_str + ''' +' +
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[NguoiTao]), '''') + ''' + @p_separator_str + ''' +' +
                N'N''"'' + REPLACE(IsNULL(TTrafficSafety_15_VanBan_.[IpTao], ''''), N''"'', N''""'') + N''"''  + ''' + @p_separator_str + ''' +' +
                N'IsNULL(Convert(nvarchar, TTrafficSafety_15_VanBan_.[ThoiGianTao], 21), '''') + '' ''';
            END

        -- Set up the from string (with table alias) and the join string
        SET @l_from_str = '[dbo].[tTrafficSafety_15_VanBan] TTrafficSafety_15_VanBan_';

        SET @l_join_str = @p_join_str
        if @p_join_str is null
            SET @l_join_str = ' ';

        -- Set up the where string
        SET @l_where_str = ' ';
        IF @p_where_str IS NOT NULL
            SET @l_where_str = @l_where_str + 'WHERE ' + @p_where_str;

        -- Construct the query string.  Append the result set with the title.
        SET @l_query_select = 
                'SELECT '''
        SET @l_query_union = 
                ''' UNION ALL ' +
                'SELECT '
        SET @l_query_from = 
                ' FROM ' + @l_from_str + ' ' + @l_join_str + ' ' +
                @l_where_str;

        -- Run the query
        EXECUTE (@l_query_select + @l_title_str + @l_query_union + @l_select_str+ @l_query_from)

        -- Return the total number of rows of the query
        SELECT @p_num_exported = @@rowcount
    END

