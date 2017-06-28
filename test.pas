unit test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmVentana1 = class(TfrmVentana)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVentana1: TfrmVentana1;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmVentana1.FormShow(Sender: TObject);
begin
  inherited;
  DataSource1.DataSet := DataModulo1.Parentezcos;
  DataModulo1.Parentezcos.Open;
end;

end.
