unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure ChangeFormColor(); 
    procedure ChangeFormColorByInt(iColor: Integer);   
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i: Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ChangeFormColor();
end;

procedure TForm1.ChangeFormColor;
begin
  Form1.Color := clblack;
  sleep(100);
  Form1.Color := clYellow;
  sleep(100);
  Form1.Color := clred;
  sleep(100);
  Form1.Color := clblue;
  sleep(100);
  Form1.Color := clbtnface;
  sleep(100);
end;

procedure TForm1.ChangeFormColorByInt(iColor: Integer);
begin
  case iColor of
    1:
      Form1.Color := clblack;
    2:
      Form1.Color := clYellow;
    3:
      Form1.Color := clred;
    4:
      Form1.Color := clblue;
    5:
      Form1.Color := clbtnface;
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    ChangeFormColor()
  else
  begin
    i := strtoint(Edit1.Text);
    ChangeFormColorByInt(i);
  end;
end;

end.
