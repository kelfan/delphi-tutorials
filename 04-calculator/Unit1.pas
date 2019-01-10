unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  r1, r2 : real;
  result: double;
  stype, sans : string;
  ctype : char;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  r1 := strtofloat(edit1.Text);
  r2 := strtofloat(edit3.Text);
  stype := Edit2.Text;
  ctype := stype[1];
  case ctype of
    '+' : result := r1 + r2;
    '-' : result := r1 - r2;
    '*' : result := r1 * r2;
    '/' : result := r1 / r2 ;
  end;
  panel1.Caption := floattostr(result)
end;

end.
