unit Encripta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmEncripta = class(TfrmVentana)
    edCrudo: TButtonedEdit;
    btnGenerarClave: TButton;
    edEncriptado: TButtonedEdit;
    Button1: TButton;
    Memo1: TMemo;
    btnFecha: TButton;
    editFecha: TButtonedEdit;
    Button2: TButton;

    procedure btnGenerarClaveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edCrudoLeftButtonClick(Sender: TObject);
    procedure btnFechaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEncripta: TfrmEncripta;
  MySettings: TFormatSettings;

implementation

{$R *.dfm}

uses DM1;
function Crypt(Action, Src: String): String;
Label
Lab;
var
KeyLen : Integer;
KeyPos : Integer;
OffSet : Integer;
Dest, Key : String;
SrcPos : Integer;
SrcAsc : Integer;
TmpSrcAsc : Integer;
Range : Integer;
begin
  if (Src = '') Then begin
    Result:= '';
    Goto Lab;
  end;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A 4VZYW9KHJUI2347EJHJKDF3424SKLK3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if Action = 'E' then begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do begin
     //Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if Action = 'D' then begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
  Lab:
end;

procedure TfrmEncripta.btnFechaClick(Sender: TObject);
var
  xfecha    : Tdate;
  xhora     : TTime;
  FechaFull : TdateTime;
  sFecha    : string;
begin
  inherited;

   xfecha := VarToDateTime(edCrudo.Text);
   xhora  := VarToDateTime(edCrudo.Text);
   xhora  := xhora + strToTime('00:30');
   sfecha := FormatDateTime('yyyy-mm-dd',xfecha) + ' ' + FormatDateTime('hh:nn',xhora);

   editFecha.Text  := sfecha ;// FormatDateTime('yyyy/mm/dd hh:nn:ss',fechaFull );// VarToDateTime(edCrudo.Text));
end;

procedure TfrmEncripta.btnGenerarClaveClick(Sender: TObject);
begin
  inherited;
  edEncriptado.Text := DataModulo1.Crypt('E',edCrudo.Text )
end;


procedure TfrmEncripta.Button1Click(Sender: TObject);
begin
  inherited;
  Memo1.Text := DataModulo1.Crypt('D',edEncriptado.Text )
end;

procedure TfrmEncripta.Button2Click(Sender: TObject);
var
  a,i:integer;

begin
  inherited;
  a := 1;
  for I := a  to 9  do
  begin
    a := a * i;

  end;
  memo1.Text := IntToStr(a);
end;

procedure TfrmEncripta.edCrudoLeftButtonClick(Sender: TObject);
begin
  inherited;
  edEncriptado.Text := DataModulo1.Crypt('E',edCrudo.Text )
end;

procedure TfrmEncripta.FormCreate(Sender: TObject);
begin
  inherited;
  GetLocaleFormatSettings(GetUserDefaultLCID, MySettings);
  MySettings.DateSeparator := '-';
  MySettings.TimeSeparator := ':';
  MySettings.ShortDateFormat := 'yyyy-mm-dd';
  MySettings.ShortTimeFormat := 'hh:nn:ss';
end;

end.
