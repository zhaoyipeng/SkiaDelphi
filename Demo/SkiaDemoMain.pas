unit SkiaDemoMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls,
  TypInfo,
  Definitions,
  SkiaApi
  ;

type
  TForm35 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form35: TForm35;

implementation

{$R *.dfm}

procedure TForm35.Button1Click(Sender: TObject);
var
  c: sk_colorspace_t;
  d: SKColorType;
  n: string;
begin
  c := 0;
  c := sk_colorspace_new_srgb_linear;
  showmessage(c.ToString);

  d := sk_colortype_get_default_8888;
  n:=GetEnumName(TypeInfo(SKColorType),Ord(d));
  showmessage(n);

end;

end.
