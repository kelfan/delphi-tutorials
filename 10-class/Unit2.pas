unit Unit2;

interface

uses
  FMX.Dialogs;

type
  MyClass = class(TObject)
    // declare a class to extends TObject
  private
    _f: string; // private member
    procedure set_f(s: string); // set method
    function get_f: string; // get method
  public
    constructor Init( s: string );
    property F: string read get_f write set_f;
    procedure Hello();
  end;

implementation

{ MyClass }

function MyClass.get_f: string;
begin
  result := _f;
end;

procedure MyClass.Hello();
begin
  showmessage(_f);
end;

constructor MyClass.Init(s: string);
begin
  _f := s;
end;

procedure MyClass.set_f(s: string);
begin
    _f := s;
end;

end.
