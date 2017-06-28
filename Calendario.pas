unit Calendario;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons;

type
  TfrmCalendario = class(TForm)
    Fechas: TMonthCalendar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalendario: TfrmCalendario;

implementation

{$R *.DFM}

procedure TfrmCalendario.FormActivate(Sender: TObject);
begin
   //fechas.date := date;
end;

end.
