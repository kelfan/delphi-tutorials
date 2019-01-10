program Multiple;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {Mainform},
  Second in 'Second.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainform, Mainform);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
