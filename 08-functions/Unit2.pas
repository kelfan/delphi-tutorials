unit Unit2;

interface

uses
  Vcl.Dialogs, Winapi.Windows;
// functions accessed by other units, has be in interface and after use sentence

function add(x, y: Integer): Integer;

implementation

procedure test(msg: string);
begin
  showmessage('[debug] ------' + msg + '-------')
end;

function multiply(x, y: Integer): Integer;
begin
  result := x * y;
end;

function add(x, y: Integer): Integer;
begin
  result := x + y;
  if (x * y) = multiply(x, y) then
    test('add function');

end;

end.
