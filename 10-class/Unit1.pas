unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Unit2,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  myc : MyClass;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  myc := myclass.create;
  myc.F := 'c';
  myc.hello();

  myc := myclass.init('test');
  myc.hello();
end;

end.
