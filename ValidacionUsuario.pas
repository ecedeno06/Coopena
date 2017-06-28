unit ValidacionUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmValidacionUsuario = class(TForm)
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValidacionUsuario: TfrmValidacionUsuario;

implementation

{$R *.dfm}

uses DM1;

end.
