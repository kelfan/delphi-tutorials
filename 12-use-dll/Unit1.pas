unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Crypt2, Global;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
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
