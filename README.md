# delphi-tutorials
tutorial codes for delphi 

# YouTube videos
- [Installing Delphi Community Edition](https://www.youtube.com/watch?v=XMj8RlJO-zQ&t=17s)
- [2012 - Learning to program Delphi tutorial 1 - Hello World - Pascal - Rad Studio XE2](https://www.youtube.com/watch?v=Ob0gHLQM0mU)
- [2016 - Learning Delphi programming tutorial #1 (hello world)](https://www.youtube.com/watch?v=8JWLxiOdOzg)
- [2017 - Delphi Programming Course (FMX): 5 - Hello World!](https://www.youtube.com/watch?v=c_2h1L-1WAU)
- [2016 - Delphi Programming Series: 38 - Creating your own procedures](https://www.youtube.com/watch?v=0VO9nYKhRI4)
- [learn Delphi 2016](https://www.youtube.com/channel/UCFZxawRN6quppxog_L0LjNg)


# Ctrl+shift+c : create definition 

# begin + end : 相当于大括号 {}
# if else 语句
```delphi
  if Edit1.Text = '' then
    ChangeFormColor()
  else
  begin
    i := strtoint(Edit1.Text);
    ChangeFormColorByInt(i);
  end;
```

# debuging 
- [Debug Visualizer in RAD Studio 2010](https://www.youtube.com/watch?v=qGE8WQQoKho)

# OutputDebugString: debug.print

# file structures
Project1.dpr
项目源文件，包含所有的窗口和单元信息


Project1.res
资源文件，编译过的二进制资源文件。


Unit1.dfm
窗体文件，它用来描述窗体和所有窗体组件，每个窗体都有自己的dfm文件。
记录的都是些非缺省属性设置和窗体上的一些组件属性设置。窗口大小、长宽高等等


Unit1.pas
窗体单元文件，每个窗口都包括一个独立的单元，每个单元都有一个源文件。（单元文件是Pascal源文件，扩展名为.pas。）

作者：五秋木
链接：https://www.jianshu.com/p/58e8300f966b
來源：简书
简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。

# F12: view change between code and design

# types
string
Integer
double 12233.5232
byte 0-255
boolean

# procedure
procedure name(var: Integer):
var
  var1: string;
begin
  var1 := 'hello';
  actions;
end;
end;


# tostr: floattostr inttostr 
# var.tostring() .toInteger()


# 全局函数
https://blog.csdn.net/zengcong2013/article/details/50754150
```delphi
//要点: 需要给其他单元调用, 必须在 interface 声明, 但必须在 uses 区后面
 unit Unit1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  end;
{需要给其他单元调用, 必须在 interface 声明, 但必须在 uses 区后面}
function MyFun(x,y: Integer): Integer; {函数声明}
var
  Form1: TForm1;
implementation
{$R *.dfm}
function MyFun(x,y: Integer): Integer; {函数实现}
begin
  Result := x + y;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  i := MyFun(1,2); //注意此时MyFun()是个全局函数
  ShowMessage(IntToStr(i)); {3}
end;
end.
```

# 局部函数
https://blog.csdn.net/zengcong2013/article/details/50754150
```delphi
//要点: implementation 区中的过程或函数, 只能在本单元调用 
unit Unit1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
{implementation 区中的过程或函数, 只能在本单元调用}
function MyFun(x,y: Integer): Integer; //此时这个函数仅供本unit调用
begin
  Result := x + y;
end;
procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  i := MyFun(1,2); //注意此时MyFun()是个全局函数
 end;
end.
```


# unit test
https://www.youtube.com/watch?v=nm_yq9jYckc
```delphi
procedure TestTForm1.Testadd;
var
  ReturnValue: Integer;
  y: Integer;
  x: Integer;
begin
  x := 12;
  y := 12;
  // TODO: Setup method call parameters
  ReturnValue := FForm1.add(x, y);
  // TODO: Validate method results

  checknotequals(25, ReturnValue, 'value dont match ' + inttostr(ReturnValue));
  checkequals(24, ReturnValue, 'values match ' + inttostr(ReturnValue));
  assert(ReturnValue = 24, 'value should be 24');
  status('Success!');

end;
```

# Example code : Allocate memory for a record, and assign to it
```delphi
type
  TCustomer = Record
    name : string[20];
    age  : Byte;
  end;

var
  custRecPtr : ^TCustomer;

begin
  // Create a customer record using 'New'
  New(custRecptr);

  // Assign values to it
  custRecPtr.name := 'Her indoors';
  custRecPtr.age  := 55;

  // Now display these values
  ShowMessageFmt('%s is %d',[custRecPtr.name, custRecPtr.age]);

  // Now dispose of this allocated record
  Dispose(custRecPtr);
end;
```
Her indoors is 55


# hello world 
```delphi
procedure TForm1.Button1Click(Sender: TObject);
begin
    showmessage('hello world')
end;

end.
```

# get component values 
```delphi
var
  Form1: TForm1;
  sname: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  sname := edit1.Text;
  panel1.Caption := 'Hi ' + sname + ' how are you?';
end;

end.
```

# select case = case ctype of
```delphi
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
```

# own procedure 
```delphi
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
```

# output debug string 
```delphi
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  msg: string;
  myDate: tdatetime;
  myStringList: tstrings;
begin
  myDate := now;
  myStringList := tstringlist.create;
  try
    myStringList.add('Mike');
    myStringList.add('Wendy');
    myStringList.add('Andy');
  finally
    myStringList.free;
  end;
  msg := 'hello';
  showmessage(msg);
  OutputDebugString(pchar('[Log]-------- run app success ---------'));
end;

end.
```

# multi forms 
first.bas
```delphi
uses Second;
function test:boolean;
begin
  result := true;
end;


procedure TMainform.Button1Click(Sender: TObject);
begin
  Form1.showmodal; // second form name
  if test() then
      ShowMessage('helloworld')
end;



end.
```

# functions 
first unit
```delphi
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;



procedure TForm1.Button1Click(Sender: TObject);
var
  a : Integer;
  b : Integer;

begin
   a := strtoint(edit1.text);
   b := strtoint(edit2.text);
   label1.Caption := add(a, b ).toString()
end;

end.
```

second unit 
```delphi
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
```

# unit test
https://www.youtube.com/watch?v=nm_yq9jYckc
1. click file->new->other->other->unit test->test project
2. click file->new->other->other->unit test->test case
3. procedure form1.Setup; -> FForm1 := TForm1.Create -> add nil -> FForm1 := TForm1.Create(nil);
4. add value like a := 12; -> CheckNotEquals or CheckEquals
5. status('success');

```delphi
implementation

procedure TestTForm1.SetUp;
begin
  FForm1 := TForm1.Create(nil);
  // add nil as parameter if get E2035 not enough actual parameters
end;

procedure TestTForm1.TearDown;
begin
  FForm1.Free;
  FForm1 := nil;
end;

procedure TestTForm1.Testadd;
var
  ReturnValue: Integer;
  y: Integer;
  x: Integer;
begin
  x := 12;
  y := 12;
  // TODO: Setup method call parameters
  ReturnValue := FForm1.add(x, y);
  // TODO: Validate method results

  checknotequals(25, ReturnValue, 'value dont match ' + inttostr(ReturnValue));
  checkequals(24, ReturnValue, 'values match ' + inttostr(ReturnValue));
  assert(ReturnValue = 24, 'value should be 24');
  status('Success!');

end;
```

# class 
定义类
```delphi
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
```

使用类
```delphi
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
```

# Form in a DLL file Delphi tutorials
https://www.youtube.com/watch?v=seTGSdkXsMQ
1. projectGroup -> add new project -> dynamic library 
2. define dll file
```delphi 
library Project2;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  FMX.Dialogs,
  System.Classes;

{$R *.res}

function add(x, y: Integer): Integer;
begin
  result := x + y;
end;

procedure smsg();
begin
  showmessage('dll procedure');
end;

exports
  add,smsg;


begin
end.
``` 
3. import to use
```delphi 
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
```

# idhttp1: delphi 自带抓包

# 动态调用 dll
https://blog.csdn.net/sforiz/article/details/5873592
```delphi
procedure TMainForm.Button1Click(Sender: TObject);
var
　OneHandle : THandle; // 定义一个句柄变量
begin
　OneHandle := LoadLibrary('Clendar.dll'); // 动态载入DLL ，并返回其句柄
　try
　　if OneHandle <> 0 then // 如果载入成功则获取ShowCalendar 函数的地址
　　　@ShowCalendar := GetProcAddress(OneHandle, 'ShowCalendar');
　　　if not (@ShowCalendar = nil) then
　　　　// 如果找到该函数则在主窗体的Label1 中显示DLL 窗体中设定的日期
　　　　Label1.Caption := DateToStr(ShowCalendar(Application.Handle, Caption))
　　　else
　　　　RaiseLastWin32Error;
　finally
　　FreeLibrary(OneHandle); // 调用完毕收回DLL 占用的资源
　end;
end;
```

# a simple web crawler: 导入下载的外部dll例子
https://www.example-code.com/delphidll/spider_simpleCrawler.asp
http://www.chilkatsoft.com/delphiDll.asp
1. add required .pas files
2. add names into uses sentences 
3. use functions in procedure
4. copy the .dll file to the output folder 

```delphi
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Crypt2, Global, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
crypt: HCkCrypt2;
glob: HCkGlobal;
success: Boolean;
ivHex: PWideChar;
keyHex: PWideChar;
encStr: PWideChar;
decStr: PWideChar;

begin

glob := CkGlobal_Create();
success := CkGlobal_UnlockBundle(glob,'Anything for 30-day trial');
if (success <> True) then
  begin
    Memo1.Lines.Add(CkGlobal__lastErrorText(glob));
    Exit;
  end;

crypt := CkCrypt2_Create();

CkCrypt2_putCryptAlgorithm(crypt,'aes');
CkCrypt2_putCipherMode(crypt,'cbc');
CkCrypt2_putKeyLength(crypt,256);
CkCrypt2_putPaddingScheme(crypt,0);
CkCrypt2_putEncodingMode(crypt,'hex');
ivHex := '000102030405060708090A0B0C0D0E0F';
CkCrypt2_SetEncodedIV(crypt,ivHex,'hex');
keyHex := '000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F';
CkCrypt2_SetEncodedKey(crypt,keyHex,'hex');

encStr := CkCrypt2__encryptStringENC(crypt,'The quick brown fox jumps over the lazy dog.');
Memo1.Lines.Add(encStr);

decStr := CkCrypt2__decryptStringENC(crypt,encStr);
Memo1.Lines.Add(decStr);

CkCrypt2_Dispose(crypt);
end;

end.

```

# error: computer missing .dll 无法启动此程序, 因为计算机中丢失 ....dll -> 解决 复制dll文件到.exe文件旁边
