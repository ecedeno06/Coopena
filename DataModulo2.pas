unit DataModulo2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, System.ImageList,
  Vcl.ImgList, Vcl.Controls,  IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdText, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  IniFiles,Dialogs, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef;

type
  TDM2 = class(TDataModule)
    cnn2: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
