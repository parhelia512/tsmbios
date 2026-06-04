program SystemInfo;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, uSMBIOS, SysUtils
  { you can add units after this };

procedure GetSystemInfo;
Var
  SMBios: TSMBios;
  LSystem: TSystemInformation;
begin
  SMBios:=TSMBios.Create;
  try
    LSystem:=SMBios.SysInfo;
    WriteLn('System Information');
    WriteLn('Manufacter    '+LSystem.ManufacturerStr);
    WriteLn('Product Name  '+LSystem.ProductNameStr);
    WriteLn('Version       '+LSystem.VersionStr);
    WriteLn('Serial Number '+LSystem.SerialNumberStr);
    if LSystem.HasUUID then
      WriteLn('UUID          '+LSystem.UUIDStr);
    if LSystem.HasWakeUpType then
      WriteLn('Wake-up Type  '+LSystem.WakeUpTypeStr);
    if SMBiosAtLeast(SMBios, 2, 4) then
    begin
      WriteLn('SKU Number    '+LSystem.SKUNumberStr);
      WriteLn('Family        '+LSystem.FamilyStr);
    end;
    WriteLn;
  finally
   SMBios.Free;
  end;
end;

begin
 try
    GetSystemInfo;
 except
    on E:Exception do
        Writeln(E.Classname, ':', E.Message);
 end;
 Writeln('Press Enter to exit');
 Readln;
end.
