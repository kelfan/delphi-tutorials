unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function add(x, y:Integer):Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

function TForm1.add(x, y: Integer): Integer;
begin
           result := x + y;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  a : Integer;
  b : Integer;
begin
              a := strtoint(edit1.Text);
              b := strtoint(edit2.text);
              showmessage(add(a, b).tostring())
end;

end.
