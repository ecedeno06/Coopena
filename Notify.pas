unit Notify;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls;

procedure ShowNotify(sTableName : OpenString);
procedure NotifyEnd;

type
  TmsgNotify = class(TForm)
    lblTableName: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.DFM}

//uses
//  AFDUtil;

var
  msgNotify: TmsgNotify;

procedure ShowNotify;
begin
  if msgNotify = nil then
    msgNotify := TmsgNotify.Create(nil);
  msgNotify.lblTableName.Caption := sTableName;
  msgNotify.RePaint;
end;

procedure NotifyEnd;
begin
  msgNotify.Free;
  msgNotify := nil;
end;

procedure TmsgNotify.FormCreate(Sender: TObject);
begin
  //CenterFormInWindow(self);
end;

end.
