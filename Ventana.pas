unit Ventana;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmVentana = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    StatusBar1: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVentana: TfrmVentana;

implementation

{$R *.dfm}

procedure TfrmVentana.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TfrmVentana.FormDestroy(Sender: TObject);
begin
  self := nil;
end;

end.
