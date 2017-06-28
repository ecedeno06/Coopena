unit Irving;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmIrving = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIrving: TfrmIrving;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmIrving.FormShow(Sender: TObject);
begin
  DataModulo1.prueba2.Close;
  DataModulo1.prueba2.Open;
end;

end.
