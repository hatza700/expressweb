
@setlocal
@echo off

rem NEED AT LEAST 4 PARAMETERS
if %4 == "" goto :SYNTAX

SET APPLICATION_NAME=%1
SET STORED_PROC_DIR=%2
SET SERVERNAME=%3
SET DATABASENAME=%4

rem IF ONLY 4 PARAMETERS, THIS IS WINDOWS AUTHENTICATION
if "%5" == "" (
    SET AUTHENTICATION=-WindowsAuthentication
) else (
    rem IF MORE THAN 6 PARAM, IT'S INVALID
    if not "%7" == "" goto :SYNTAX

    rem THERE'S NO 6TH PARAMETER, IT'S INVALID
    if "%6" == "" goto :SYNTAX

    rem SQLUSERNAME=%5
    rem SQLPASSWORD=%6
    SET AUTHENTICATION=-username "%5" -password "%6"
)

LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tSa01_User" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tSa02_Role" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tSa03_UserRole" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tSa04_ChucVu" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tSa05_DonVi" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tSa06_LoaiDonVi" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_07_DanhMucTinTuc" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_08_TinTuc" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_09_Videos" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_10_BinhLuan" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_11_LinhVuc" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_12_HinhThucVanBan" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_13_CoQuanBanHanh" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_14_ChuyenNganh" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_15_VanBan" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_16_GopY" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_17_TinhTrangGopY" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_18_ThamDoYKien" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_19_KetQuaThamDoYKien" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_20_TrangChu_Block" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_21_QuanLyTrangChu" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_22_HienThiTieuDeModule" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_23_KieuNoiDung" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_24_ViTriQuangCao" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_25_KhachHangQuangCao" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_26_QuangCao" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_27_Tags" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_28_Videos_types" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_29_Album_anh" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_30_Album_anh_anh" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_31_type_menu" %AUTHENTICATION%
LoadStoredProcedures.exe -application %APPLICATION_NAME% -directory %STORED_PROC_DIR% -server %SERVERNAME% -database %DATABASENAME% -table "tTrafficSafety_32_menus" %AUTHENTICATION%

goto :END

:SYNTAX
ECHO.
ECHO USAGE:
ECHO.
ECHO Windows Server Authentication:
ECHO        LoadStoredProcedures.bat [ApplicationName]
ECHO                                 [ApplicationDirectory]
ECHO                                 [ServerName]
ECHO                                 [DatabaseName]
ECHO.
ECHO SQL Server Authentication:
ECHO        LoadStoredProcedures.bat [ApplicationName]
ECHO                                 [ApplicationDirectory]
ECHO                                 [ServerName]
ECHO                                 [DatabaseName]
ECHO                                 [Username]
ECHO                                 [Password]
ECHO.
ECHO Example of Windows Server Authentication:
ECHO        LoadStoredProcedures.bat MyApplication C:\MyApplication
ECHO                                 MySQLServerName MyDatabaseName
ECHO.
ECHO Example of SQL Server Authentication:
ECHO        LoadStoredProcedures.bat MyApplication
ECHO                                 "C:\My Application Folder"
ECHO                                 MySQLServerName MyDatabaseName sa sapassword

:END
