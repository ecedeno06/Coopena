unit Working;
interface

uses
  Classes, Controls, Dialogs, ExtCtrls, Forms, Gauges, Graphics,
  Messages, SysUtils, WinProcs, WinTypes;

procedure ShowWorking
  (
  sAction : OpenString; { Caption for the "Working" dialog }
  const iMax : word     { value indicating 100%            }
  );

procedure UpdateWorking
  (
  const iValue : word
  );

procedure WorkingEnd;

type
  TfrmWorking = class(TForm)
    gageWorking: TGauge;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorking: TfrmWorking;

implementation

{$R *.DFM}


procedure ShowWorking;
begin
  if frmWorking = nil then
  begin
    frmWorking := TfrmWorking.Create(nil);
  end;
  frmWorking.Caption := sAction;
  frmWorking.gageWorking.progress := 0;
  frmWorking.gageWorking.MaxValue := iMax;
  frmWorking.show;
  frmWorking.Repaint;
end;

procedure UpdateWorking;
begin
  if assigned(frmWorking) then
    frmWorking.gageWorking.progress := iValue;
end;

procedure WorkingEnd;
begin
  frmWorking.Free;
  frmWorking := nil;
end;

procedure TfrmWorking.FormCreate(Sender: TObject);
begin
  //CenterFormInWindow(self);
  Application.ProcessMessages;
end;

procedure TfrmWorking.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
end;

end.
