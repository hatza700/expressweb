﻿if exists (select * from sysobjects where id = object_id(N'pCMStTrafficSafetyTTrafficSafety_26_QuangCaoDrillDown') and sysstat & 0xf = 4) drop procedure pCMStTrafficSafetyTTrafficSafety_26_QuangCaoDrillDown 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- This stored procedure will return query result based on 
-- the passed in select, search and ORDER BY clauses.
CREATE PROCEDURE pCMStTrafficSafetyTTrafficSafety_26_QuangCaoDrillDown
        @p_select_str nvarchar(4000),
        @p_is_distinct int,
        @p_select_str_b nvarchar(4000),
        @p_join_str nvarchar(4000),
        @p_where_str nvarchar(4000),
        @p_sort_str nvarchar(4000),
        @p_page_number int,
        @p_batch_size int
AS
DECLARE
    @l_create_temp nvarchar(4000),
    @l_temp_insert nvarchar(4000),
    @l_temp_select nvarchar(4000),
    @l_temp_from nvarchar(4000),
    @l_final_sort nvarchar(4000),
    @l_query_select nvarchar(4000),
    @l_query_from nvarchar(4000),
    @l_query_where nvarchar(4000),
    @l_from_str nvarchar(4000),
    @l_join_str nvarchar(4000),
    @l_sort_str nvarchar(4000),
    @l_where_str nvarchar(4000),
    @l_count_query nvarchar(4000),
    @l_end_gen_row_num integer,
    @l_start_gen_row_num integer
BEGIN
    SET NOCOUNT ON

    -- Set up the from string as the base table.
    SET @l_from_str = '[dbo].[tTrafficSafety_26_QuangCao] TTrafficSafety_26_QuangCao_'

    -- Set up the join string
    SET @l_join_str = @p_join_str
    IF @p_join_str is null
        SET @l_join_str = ' '

    -- Set up the where string
    SET @l_where_str = ' '
        IF @p_where_str is not null
        SET @l_where_str = 'WHERE ' + @p_where_str

    -- Get the total count of rows the query will return
    IF @p_page_number > 0 and @p_batch_size >= 0
    BEGIN
        IF @p_is_distinct = 0
        BEGIN
            SET @l_count_query = 
                'SELECT count(*) FROM ( SELECT ' + @p_select_str + 
                ' As __Two FROM ' + @l_from_str + ' ' + @l_join_str + ' ' +
                @l_where_str + ' ) countAlias'

        END
        ELSE
        BEGIN
            SET @l_count_query = 
                'SELECT COUNT(*) FROM ( SELECT DISTINCT ' + @p_select_str + ' As __Two, 1 As __One  ' +
                'FROM ' + @l_from_str + ' ' + @l_join_str + ' ' +
                @l_where_str + ' ) pass1 '

        END
    END

    ELSE

    BEGIN
        SET @l_count_query = ' '
    END

    -- Get the list
    IF @p_page_number > 0 AND @p_batch_size > 0
    BEGIN
        -- If the caller did not pass a sort string, use a default value
        IF @p_sort_str IS NULL OR LTRIM(RTRIM(@p_sort_str)) = ''
            SET @l_sort_str = 'ORDER BY 1 '

        ELSE
            SET @l_sort_str = 'ORDER BY ' + @p_sort_str
        -- Calculate the rows to be included in the list
        SET @l_end_gen_row_num = @p_page_number * @p_batch_size;
        SET @l_start_gen_row_num = @l_end_gen_row_num - (@p_batch_size-1);

        -- Create a table variable to keep row numbering
        SET @l_create_temp = 'DECLARE @IS_TEMP_T_GETLIST TABLE
            (
            IS_ROWNUM_COL int identity(1,1), ' + 
            ' __Two sql_variant' +
            '); '

        -- Copy column data into the table variable
        SET @l_temp_insert = 
            'INSERT INTO @IS_TEMP_T_GETLIST ( __Two ) ' 
        IF @p_is_distinct = 0 OR @p_sort_str IS NULL OR LTRIM(RTRIM(@p_sort_str)) = ''
        BEGIN
            IF @p_is_distinct = 0
            BEGIN
                SET @l_temp_select = 
                    'SELECT '
            END
            ELSE
            BEGIN
                SET @l_temp_select = 
                    'SELECT DISTINCT '
            END
        SET @l_temp_select = 
            @l_temp_select + 
            'TOP ' + convert(varchar, @l_end_gen_row_num) + ' ' + 
            @p_select_str
        END
        ELSE
        BEGIN
                -- Need to construct query differently when sorting by expanded DFKA, 
                -- So get the TOP DISTINCT values after selecting, joining, and sorting ALL the values 
                SET @l_temp_select = 
                    'SELECT __ReturnCol FROM ( ' + 
                    'SELECT ' + 
                    'DISTINCT ' + 
                    'TOP ' + convert(varchar, @l_end_gen_row_num) + ' ' + 
                    @p_select_str + 
                    ' As __ReturnCol, ' + 
                    @p_select_str_b
                -- Close and alias the outer FROM clause after the inner ORDER BY clause 
                SET @l_sort_str = 
                    @l_sort_str + 
                    ' ) pass1 '
        END
        SET @l_temp_from = 
            ' FROM ' + @l_from_str + ' ' + @l_join_str
        -- Construct the main query
        SET @l_query_select = 'SELECT '
        SET @l_query_from = 
            'FROM @IS_TEMP_T_GETLIST ' +
            'AS [TTrafficSafety_26_QuangCao_]' +
            ' WHERE IS_ROWNUM_COL >= '+ convert(varchar, @l_start_gen_row_num) 

        SET @l_final_sort = 'ORDER BY IS_ROWNUM_COL Asc '

        -- Run all the queries as a batch so the temp tables won't lose scope
        EXECUTE (@l_count_query + '     ' + @l_create_temp + '     ' + @l_temp_insert + @l_temp_select + @l_temp_from + ' ' + @l_where_str + ' ' + @l_sort_str + '     ' + @l_query_select + ' __Two ' + @l_query_from + @l_query_where + @l_final_sort)

    END
    ELSE
    BEGIN
        -- If page number and batch size are not valid numbers return the empty result set
        SET @l_query_select = 'SELECT '
        SET @l_query_from = 
            ' FROM [dbo].[tTrafficSafety_26_QuangCao] TTrafficSafety_26_QuangCao_ ' + 
            'WHERE 1=2;'
        EXECUTE (@l_query_select + @p_select_str + @l_query_from);
    END

    SET NOCOUNT OFF

END

