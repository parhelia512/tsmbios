<p align="center">
  <img src="https://github.com/RRUZ/tsmbios/blob/master/images/TSMBIOS.png?raw=true" alt="tsmbios"/>
</p>

<p align="center">Access the System Management BIOS (SMBIOS) using the Object Pascal language (Delphi/Free Pascal).</p>

The [SMBIOS](http://www.dmtf.org/standards/smbios) (System Management BIOS) is a standard developed by the  [DMTF](http://www.dmtf.org/). The information stored in the SMBIOS includes devices manufacturer, model name, serial number, BIOS version, asset tag, processors, ports and device memory installed.

## Features

* Fully documented (XMLDoc), compatible with the Help Insight feature, available since Delphi 2005.
* Supports SMBIOS Version 2.1 to 3.9.
* Compatible with Delphi 5 through Delphi 13 Florence.
* Works with FPC 2.4.0 or later.
* Supports Windows and Linux.
* Can read SMBIOS data from remote machines using WMI.
* Exposes the SMBIOS 3.x fixed-layout fields added to the supported table types, including BIOS ROM size, processor core/thread counts, cache sizes, system slot bus data, and memory device technology, firmware, persistent memory, speed, PMIC, and RCD data.

## SMBIOS Tables supported

* BIOS Information (Type 0) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%200%20Bios%20Info/BIOSInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%200%20Bios%20Info/BIOSInfo.lpr)
* System Information (Type 1) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%201%20System%20Info/SystemInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%201%20System%20Info/SystemInfo.lpr)
* Baseboard (or Module) Information (Type 2) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%202%20Base%20Board%20Information/BaseBoardInformation.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%202%20Base%20Board%20Information/BaseBoardInformation.lpr)
* System Enclosure or Chassis (Type 3) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%203%20Enclosure%20Information/EnclosureInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%203%20Enclosure%20Information/EnclosureInfo.lpr)
* Processor Information (Type 4) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%204%20Processor%20Information/ProcessorInformation.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%204%20Processor%20Information/ProcessorInformation.lpr)
* Memory Controller Information (Type 5) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%205%20Memory%20Controller%20Information/MemoryControllerInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%205%20Memory%20Controller%20Information/MemoryControllerInfo.lpr)
* Memory Module Information (Type 6) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%206%20Memory%20Module%20Information/MemoryModuleInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%206%20Memory%20Module%20Information/MemoryModuleInfo.lpr)
* Cache Information (Type 7) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%207%20Cache%20Information/CacheInformation.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%207%20Cache%20Information/CacheInformation.lpr)
* Port Connector Information (Type 8) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%208%20Port%20Connector%20Information/PortConnectorInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%208%20Port%20Connector%20Information/PortConnectorInfo.lpr)
* System Slots (Type 9) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%209%20System%20Slots%20Information/SystemSlotsInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%209%20System%20Slots%20Information/SystemSlotsInfo.lpr)
* On Board Devices Information (Type 10) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2010%20Onboard%20System%20Information/OnboardSystemInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2010%20Onboard%20System%20Information/OnboardSystemInfo.lpr)
* OEM Strings (Type 11) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2011%20OEM%20Strings/OEMStringsInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2011%20OEM%20Strings/OEMStringsInfo.lpr)
* System Configuration Options (Type 12) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2012%20System%20Configuration%20Options/SystemConfInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2012%20System%20Configuration%20Options/SystemConfInfo.lpr)
* BIOS Language Information (Type 13) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2013%20BIOS%20Language%20Information/BIOSLanguageInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2013%20BIOS%20Language%20Information/BIOSLanguageInfo.lpr)
* Group Associations (Type 14) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2014%20Group%20Associations/GroupAssociations.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2014%20Group%20Associations/GroupAssociations.lpr)
* System Event Log (Type 15) - Not Implemented
* Physical Memory Array (Type 16) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2016%20Physical%20Memory%20Array/PhysicalMemArrayInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2016%20Physical%20Memory%20Array/PhysicalMemArrayInfo.lpr)
* Memory Device (Type 17) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2017%20Memory%20Device/MemoryDeviceInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2017%20Memory%20Device/MemoryDeviceInfo.lpr)
* Memory Array Mapped Address (Type 19) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2019%20Memory%20Array%20Mapped%20Address/MemArrayMappedInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2019%20Memory%20Array%20Mapped%20Address/MemArrayMappedInfo.lpr)
* Memory Device Mapped Address (Type 20) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2020%20Memory%20Device%20Mapped%20Address/MemDeviceMappedInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2020%20Memory%20Device%20Mapped%20Address/MemDeviceMappedInfo.lpr)
* Built-in Pointing Device (Type 21) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2021%20Built-in%20Pointing%20Device%20Information/PointingDevice.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2021%20Built-in%20Pointing%20Device%20Information/PointingDevice.lpr)
* Portable Battery (Type 22) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2022%20Battery%20Information/BatteryInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2022%20Battery%20Information/BatteryInfo.lpr)
* System Reset (Type 23) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2023%20System%20Reset%20Information/SystemResetInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2023%20System%20Reset%20Information/SystemResetInfo.lpr)
* Voltage Probe (Type 26) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2026%20Voltage%20Probe%20Information/VoltageProbeInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2026%20Voltage%20Probe%20Information/VoltageProbeInfo.lpr)
* Cooling Device (Type 27) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2027%20Cooling%20Device%20Information/CoolingDeviceInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2027%20Cooling%20Device%20Information/CoolingDeviceInfo.lpr)
* Temperature Probe (Type 28) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2028%20Temperature%20Probe%20Information/TemperatureProbeInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2028%20Temperature%20Probe%20Information/TemperatureProbeInfo.lpr)
* Electrical Current Probe (Type 29) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2029%20Electrical%20Current%20Probe%20Information/ElectricalProbeInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2029%20Electrical%20Current%20Probe%20Information/ElectricalProbeInfo.lpr)
* Out-of-Band Remote Access (Type 30) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2030%20Out-of-Band%20Remote%20Access/OutOfBandRemoteAccessInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2030%20Out-of-Band%20Remote%20Access/OutOfBandRemoteAccessInfo.lpr)
* System Boot Information (Type 32) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2032%20System%20Boot%20Information/SystemBootInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2032%20System%20Boot%20Information/SystemBootInfo.lpr)
* 64-Bit Memory Error Information (Type 33) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2033%2064-Bit%20Memory%20Error%20Information/x64BitMemoryErrorInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2033%2064-Bit%20Memory%20Error%20Information/x64BitMemoryErrorInfo.lpr)
* Management Device (Type 34) - Not Implemented
* Management Device Component (Type 35) - Not Implemented
* Management Device Threshold Data (Type 36) - Not Implemented
* Memory Channel (Type 37) - Not Implemented
* IPMI Device Information (Type 38) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2038%20IPMI%20Device%20Information/IPMIDeviceInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2038%20IPMI%20Device%20Information/IPMIDeviceInfo.lpr)
* System Power Supply (Type 39) - Not Implemented
* Additional Information (Type 40) - Not Implemented
* Onboard Devices Extended Information (Type 41) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2041%20Onboard%20Devices%20Extended%20Information/OnboardDevicesExtendedInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2041%20Onboard%20Devices%20Extended%20Information/OnboardDevicesExtendedInfo.lpr)
* Management Controller Host Interface (Type 42) - Not Implemented
* TPM Device (Type 43) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2043%20TPM%20Device/TPMDeviceInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2043%20TPM%20Device/TPMDeviceInfo.lpr)
* Processor Additional Information (Type 44) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2044%20Processor%20Additional%20Information/ProcessorAdditionalInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2044%20Processor%20Additional%20Information/ProcessorAdditionalInfo.lpr)
* Firmware Inventory Information (Type 45) [Delphi](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20Delphi/Table%2045%20Firmware%20Inventory%20Information/FirmwareInventoryInfo.dpr) [FPC](https://github.com/RRUZ/tsmbios/blob/master/samples%20-%20FPC/Table%2045%20Firmware%20Inventory%20Information/FirmwareInventoryInfo.lpr)

## Sample source code
This code demonstrates how to retrieve information related to the memory devices installed on the system.

```delphi
{$APPTYPE CONSOLE}

{$R *.res}

uses
  Classes,
  SysUtils,
  uSMBIOS in '..\..\source\uSMBIOS.pas';

procedure GetMemoryDeviceInfo;
Var
  SMBios: TSMBios;
  LMemoryDevice: TMemoryDeviceInformation;
begin
  SMBios := TSMBios.Create;
  try
      WriteLn('Memory Device Information');
      WriteLn('-------------------------');

      if SMBios.HasMemoryDeviceInfo then
      for LMemoryDevice in SMBios.MemoryDeviceInfo do
      begin
        WriteLn(Format('Total Width    %d bits',[LMemoryDevice.RAWMemoryDeviceInfo.TotalWidth]));
        WriteLn(Format('Data Width     %d bits',[LMemoryDevice.RAWMemoryDeviceInfo.DataWidth]));
        WriteLn(Format('Size           %d Mbytes',[LMemoryDevice.GetSize]));
        WriteLn(Format('Form Factor    %s',[LMemoryDevice.GetFormFactor]));
        WriteLn(Format('Device Locator %s',[LMemoryDevice.GetDeviceLocatorStr]));
        WriteLn(Format('Bank Locator   %s',[LMemoryDevice.GetBankLocatorStr]));
        WriteLn(Format('Memory Type    %s',[LMemoryDevice.GetMemoryTypeStr]));
        WriteLn(Format('Speed          %d MT/s',[LMemoryDevice.GetSpeed]));
        if SMBiosAtLeast(SMBios, 2, 7) and LMemoryDevice.HasConfiguredMemorySpeed then
          WriteLn(Format('Configured Speed %d MT/s',[LMemoryDevice.GetConfiguredMemorySpeed]));
        if SMBiosAtLeast(SMBios, 3, 2) then
        begin
          if LMemoryDevice.HasMemoryTechnology then
            WriteLn(Format('Technology     %s',[LMemoryDevice.GetMemoryTechnologyStr]));
          if LMemoryDevice.HasFirmwareVersion then
            WriteLn(Format('Firmware       %s',[LMemoryDevice.FirmwareVersionStr]));
          if LMemoryDevice.HasNonVolatileSize then
            WriteLn(Format('Non-Volatile   %d bytes',[LMemoryDevice.GetNonVolatileSize]));
          if LMemoryDevice.HasVolatileSize then
            WriteLn(Format('Volatile       %d bytes',[LMemoryDevice.GetVolatileSize]));
          if LMemoryDevice.HasCacheSize then
            WriteLn(Format('Cache          %d bytes',[LMemoryDevice.GetCacheSize]));
          if LMemoryDevice.HasLogicalSize then
            WriteLn(Format('Logical        %d bytes',[LMemoryDevice.GetLogicalSize]));
        end;
        if SMBiosAtLeast(SMBios, 3, 7) and LMemoryDevice.HasPMIC0 then
        begin
          WriteLn(Format('PMIC0 Manufacturer ID %.4x',[LMemoryDevice.GetPMIC0ManufacturerID]));
          WriteLn(Format('PMIC0 Revision Number %.4x',[LMemoryDevice.GetPMIC0RevisionNumber]));
        end;
        if SMBiosAtLeast(SMBios, 3, 7) and LMemoryDevice.HasRCD then
        begin
          WriteLn(Format('RCD Manufacturer ID   %.4x',[LMemoryDevice.GetRCDManufacturerID]));
          WriteLn(Format('RCD Revision Number   %.4x',[LMemoryDevice.GetRCDRevisionNumber]));
        end;
        WriteLn(Format('Manufacturer   %s',[LMemoryDevice.ManufacturerStr]));
        WriteLn(Format('Serial Number  %s',[LMemoryDevice.SerialNumberStr]));
        WriteLn(Format('Asset Tag      %s',[LMemoryDevice.AssetTagStr]));
        WriteLn(Format('Part Number    %s',[LMemoryDevice.PartNumberStr]));

        WriteLn;

        if Assigned(LMemoryDevice.PhysicalMemoryArray) then
        begin
          WriteLn('  Physical Memory Array');
          WriteLn('  ---------------------');
          WriteLn('  Location         '+LMemoryDevice.PhysicalMemoryArray.GetLocationStr);
          WriteLn('  Use              '+LMemoryDevice.PhysicalMemoryArray.GetUseStr);
          WriteLn('  Error Correction '+LMemoryDevice.PhysicalMemoryArray.GetErrorCorrectionStr);
          if LMemoryDevice.PhysicalMemoryArray.RAWPhysicalMemoryArrayInformation.MaximumCapacity<>$80000000 then
            WriteLn(Format('  Maximum Capacity %d Kb',[LMemoryDevice.PhysicalMemoryArray.RAWPhysicalMemoryArrayInformation.MaximumCapacity]))
          else if LMemoryDevice.PhysicalMemoryArray.HasExtendedMaximumCapacity then
            WriteLn(Format('  Maximum Capacity %d bytes',[LMemoryDevice.PhysicalMemoryArray.GetExtendedMaximumCapacity]))
          else
            WriteLn('  Maximum Capacity Unknown');

          WriteLn(Format('  Memory devices   %d',[LMemoryDevice.PhysicalMemoryArray.RAWPhysicalMemoryArrayInformation.NumberofMemoryDevices]));
        end;
        WriteLn;
      end
      else
      Writeln('No Memory Device Info was found');
  finally
   SMBios.Free;
  end;
end;


begin
 try
    GetMemoryDeviceInfo;
 except
    on E:Exception do
        Writeln(E.Classname, ':', E.Message);
 end;
 Writeln('Press Enter to exit');
 Readln;
end.
```
