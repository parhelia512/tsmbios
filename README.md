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

* [BIOS Information](https://github.com/RRUZ/tsmbios/blob/wiki/BIOSInformation.md) (Type 0)
* [System Information](https://github.com/RRUZ/tsmbios/blob/wiki/BIOSLanguage.md) (Type 1)
* [Baseboard (or Module) Information](https://github.com/RRUZ/tsmbios/blob/wiki/Baseboard.md) (Type 2)
* [System Enclosure or Chassis](https://github.com/RRUZ/tsmbios/blob/wiki/SystemEnclosure.md) (Type 3)
* [Processor Information](https://github.com/RRUZ/tsmbios/blob/wiki/ProcessorInformation.md) (Type 4)
* [Memory Controller Information](https://github.com/RRUZ/tsmbios/blob/wiki/MemoryController.md) (Type 5)
* [Memory Module Information](https://github.com/RRUZ/tsmbios/blob/wiki/MemoryModule.md) (Type 6)
* [Cache Information](https://github.com/RRUZ/tsmbios/blob/wiki/CacheInformation.md) (Type 7)
* [Port Connector Information](https://github.com/RRUZ/tsmbios/blob/wiki/PortConnector.md) (Type 8)
* [System Slots](https://github.com/RRUZ/tsmbios/blob/wiki/SystemSlots.md) (Type 9)
* [On Board Devices Information](https://github.com/RRUZ/tsmbios/blob/wiki/OnBoardDevices.md) (Type 10)
* OEM Strings (Type 11)
* [System Configuration Options](https://github.com/RRUZ/tsmbios/blob/wiki/SystemConfiguration.md) (Type 12)
* [BIOS Language Information](https://github.com/RRUZ/tsmbios/blob/wiki/BIOSLanguage.md) (Type 13)
* [Group Associations](https://github.com/RRUZ/tsmbios/blob/wiki/GroupAssociations.md) (Type 14)
* System Event Log (Type 15) - Not Implemented
* [Physical Memory Array](https://github.com/RRUZ/tsmbios/blob/wiki/PhysicalMemoryArray.md) (Type 16)
* [Memory Device](https://github.com/RRUZ/tsmbios/blob/wiki/MemoryDevice.md) (Type 17)
* [Memory Array Mapped Address](https://github.com/RRUZ/tsmbios/blob/wiki/MemoryArrayMappedAddress.md) (Type 19)
* [Memory Device Mapped Address](https://github.com/RRUZ/tsmbios/blob/wiki/MemoryDeviceMappedAddress.md) (Type 20)
* [Built-in Pointing Device](https://github.com/RRUZ/tsmbios/blob/wiki/BuiltInPointingDevice.md) (Type 21)
* [Portable Battery](https://github.com/RRUZ/tsmbios/blob/wiki/PortableBattery.md) (Type 22)
* System Reset (Type 23)
* [Voltage Probe](https://github.com/RRUZ/tsmbios/blob/wiki/VoltageProbe.md) (Type 26)
* [Cooling Device](https://github.com/RRUZ/tsmbios/blob/wiki/CoolingDevice.md) (Type 27)
* [Temperature Probe](https://github.com/RRUZ/tsmbios/blob/wiki/TemperatureProbe.md) (Type 28)
* [Electrical Current Probe](https://github.com/RRUZ/tsmbios/blob/wiki/ElectricalCurrentProbe.md) (Type 29)
* Out-of-Band Remote Access (Type 30)
* 64-Bit Memory Error Information (Type 33) - Not Implemented
* Management Device (Type 34) - Not Implemented
* Management Device Component (Type 35) - Not Implemented
* Management Device Threshold Data (Type 36) - Not Implemented
* Memory Channel (Type 37) - Not Implemented
* IPMI Device Information (Type 38)
* System Power Supply (Type 39) - Not Implemented
* Additional Information (Type 40) - Not Implemented
* Onboard Devices Extended Information (Type 41)
* Management Controller Host Interface (Type 42) - Not Implemented
* TPM Device (Type 43)
* Processor Additional Information (Type 44)
* Firmware Inventory Information (Type 45)


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
