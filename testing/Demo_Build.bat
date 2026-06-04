@SET ORGPATH=%PATH%

IF %1% LEQ 13 GOTO RADSTUDIO
GOTO STUDIO

:RADSTUDIO
IF EXIST "c:\Program Files (x86)\Embarcadero\RAD Studio\%1.0\bin\rsvars.bat" GOTO INITRADSTUDIO 
ECHO ...\Embarcadero\RAD Studio\%1.0\bin\rsvars.bat was not found.
GOTO DONE
  
:STUDIO  
IF EXIST "c:\Program Files (x86)\Embarcadero\Studio\%1.0\bin\rsvars.bat" GOTO INITSTUDIO 
ECHO ...\Embarcadero\Studio\%1.0\bin\rsvars.bat was not found.
GOTO DONE

:INITRADSTUDIO
call "%c:\Program Files (x86)\Embarcadero\RAD Studio\%1.0\bin\rsvars.bat" 	
GOTO INIT

:INITSTUDIO
call "c:\Program Files (x86)\Embarcadero\Studio\%1.0\bin\rsvars.bat" 	
GOTO INIT


:INIT
msbuild.exe "..\samples - Delphi\List SMBIOS Tables\SMBiosTables.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 1
pause
EXIT

:1
msbuild.exe "..\samples - Delphi\Table 0 Bios Info\BIOSInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 2
pause
EXIT

:2
msbuild.exe "..\samples - Delphi\Table 1 System Info\SystemInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 3
pause
EXIT

:3
msbuild.exe "..\samples - Delphi\Table 2 Base Board Information\BaseBoardInformation.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 4
pause
EXIT

:4
msbuild.exe "..\samples - Delphi\Table 3 Enclosure Information\EnclosureInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 5
pause
EXIT

:5
msbuild.exe "..\samples - Delphi\Table 4 Processor Information\ProcessorInformation.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 6
pause
EXIT

:6
msbuild.exe "..\samples - Delphi\Table 5 Memory Controller Information\MemoryControllerInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 7
pause
EXIT

:7
msbuild.exe "..\samples - Delphi\Table 6 Memory Module Information\MemoryModuleInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 8
pause
EXIT

:8
msbuild.exe "..\samples - Delphi\Table 8 Port Connector Information\PortConnectorInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 9
pause
EXIT

:9
msbuild.exe "..\samples - Delphi\Table 9 System Slots Information\SystemSlotsInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 10
pause
EXIT

:10
msbuild.exe "..\samples - Delphi\Table 10 Onboard System Information\OnboardSystemInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 11
pause
EXIT

:11
msbuild.exe "..\samples - Delphi\Table 12 System Configuration Options\SystemConfInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 12
pause
EXIT

:12
msbuild.exe "..\samples - Delphi\Table 13 BIOS Language Information\BIOSLanguageInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 13
pause
EXIT

:13
msbuild.exe "..\samples - Delphi\Table 14 Group Associations\GroupAssociations.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 14
pause
EXIT


:14
msbuild.exe "..\samples - Delphi\Table 16 Physical Memory Array\PhysicalMemArrayInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 15
pause
EXIT

:15
msbuild.exe "..\samples - Delphi\Table 17 Memory Device\MemoryDeviceInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 16
pause
EXIT

:16
msbuild.exe "..\samples - Delphi\Table 19 Memory Array Mapped Address\MemArrayMappedInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 17
pause
EXIT

:17
msbuild.exe "..\samples - Delphi\Table 20 Memory Device Mapped Address\MemDeviceMappedInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 18
pause
EXIT

:18
msbuild.exe "..\samples - Delphi\Table 21 Built-in Pointing Device Information\PointingDevice.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 19
pause
EXIT

:19
msbuild.exe "..\samples - Delphi\Table 22 Battery Information\BatteryInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 20
pause
EXIT

:20
msbuild.exe "..\samples - Delphi\Table 26 Voltage Probe Information\VoltageProbeInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 21
pause
EXIT

:21
msbuild.exe "..\samples - Delphi\Table 27 Cooling Device Information\CoolingDeviceInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 22
pause
EXIT


:22
msbuild.exe "..\samples - Delphi\Table 28 Temperature Probe Information\TemperatureProbeInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 23
pause
EXIT


:23
msbuild.exe "..\samples - Delphi\Table 29 Electrical Current Probe Information\ElectricalProbeInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 24
pause
EXIT

:24
msbuild.exe "..\samples - Delphi\Table 38 IPMI Device Information\IPMIDeviceInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 25
pause
EXIT

:25
msbuild.exe "..\samples - Delphi\Table 41 Onboard Devices Extended Information\OnboardDevicesExtendedInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 26
pause
EXIT

:26
msbuild.exe "..\samples - Delphi\Table 43 TPM Device\TPMDeviceInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 27
pause
EXIT

:27
msbuild.exe "..\samples - Delphi\Table 44 Processor Additional Information\ProcessorAdditionalInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO 28
pause
EXIT

:28
msbuild.exe "..\samples - Delphi\Table 45 Firmware Inventory Information\FirmwareInventoryInfo.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO DONE
pause
EXIT


:DONE
@SET PATH=%ORGPATH%

REM pause
