program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Crypt2 in 'chilkat-9.5.0-delphi\Crypt2.pas',
  Global in 'chilkat-9.5.0-delphi\Global.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
