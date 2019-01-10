unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TMainform = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mainform: TMainform;

implementation

{$R *.fmx}

uses Second;
function test:boolean;
begin
  result := true;
end;


procedure TMainform.Button1Click(Sender: TObject);
begin
  Form1.showmodal;
  if test() then
      ShowMessage('helloworld')
end;



end.
