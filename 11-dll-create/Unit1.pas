unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure sm(); external 'Project2.dll' name 'smsg';

function ad(x,y:integer):integer; external 'Project2.dll' name 'add';

procedure TForm1.Button1Click(Sender: TObject);
begin
  sm();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  showmessage(inttostr(ad(1,2)));
end;

end.
