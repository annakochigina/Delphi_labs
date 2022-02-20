unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    aus51: TMenuItem;
    bra41: TMenuItem;
    c421: TMenuItem;
    dic00251: TMenuItem;
    dic00901: TMenuItem;
    CheckBox1: TCheckBox;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    procedure Image1Click(Sender: TObject);
    procedure bra41Click(Sender: TObject);
    procedure aus51Click(Sender: TObject);
    procedure c421Click(Sender: TObject);
    procedure dic00251Click(Sender: TObject);
    procedure dic00901Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.aus51Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('X:\БыковаИА\картинки\aus5.gif');
end;

procedure TForm1.bra41Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('X:\БыковаИА\картинки\bra4.gif');
end;

procedure TForm1.c421Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('X:\БыковаИА\картинки\c4_2.gif');
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
      Image1.Stretch:=false;
      CheckBox1.Caption:='Подобрать картинку под рамку';
  end
  else begin
    Image1.Stretch:=true;
    CheckBox1.Caption:='Подобрать рамку под картинку'
  end;
end;

procedure TForm1.dic00251Click(Sender: TObject);
begin
Image1.Picture.LoadFromFile('X:\БыковаИА\картинки\dic0025.gif');
end;

procedure TForm1.dic00901Click(Sender: TObject);
begin
Image1.Picture.LoadFromFile('X:\БыковаИА\картинки\dic0090.gif');
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
      Image1.Picture.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.N10Click(Sender: TObject);
var i,j,c,r,g,b:integer;
begin
   for i := 1 to Image1.Picture.Width do
    for j := 1 to Image1.Picture.Height do begin
      c:= Image1.Canvas.Pixels[i,j];
      r := getRvalue(c);
      g := getGvalue(c);
      b := getBvalue(c);
      Image1.Canvas.Pixels[i,j]:= RGB(255 - r,255 - g,255 - b);
    end;
end;

procedure TForm1.N11Click(Sender: TObject);
var i,j,c,r,g,b,k:integer;
begin
  for i := 1 to Image1.Picture.Width do
    for j := 1 to Image1.Picture.Height do begin
      c:= Image1.Canvas.Pixels[i,j];
      k := round(r*0.3+g*0.59+b*0.11);
      r := getRvalue(c);
      g := getGvalue(c);
      b := getBvalue(c);
      Image1.Canvas.Pixels[i,j]:= RGB(k,k,k);
    end;
end;


procedure TForm1.N13Click(Sender: TObject);
var i,j,k:integer;
begin
  for i := 1 to Image1.Picture.Width do
    for j := 1 to Image1.Picture.Height div 2 do begin
      k:= Image1.Canvas.Pixels[i,j];
      Image1.Canvas.Pixels[i,j]:=Image1.Canvas.Pixels[i,Image1.Picture.Height - j];
      Image1.Canvas.Pixels[i,Image1.Picture.Height - j]:=k;
    end;
end;

procedure TForm1.N14Click(Sender: TObject);
var i,j,k:integer;
begin
   for i := 1 to Image1.Picture.Width div 2 do
    for j := 1 to Image1.Picture.Height do begin
      k:= Image1.Canvas.Pixels[i,j];
      Image1.Canvas.Pixels[i,j]:=Image1.Canvas.Pixels[Image1.Picture.Width - i, j];
      Image1.Canvas.Pixels[Image1.Picture.Width - i, j]:=k;
    end;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N7Click(Sender: TObject);
var i,j,c,r,g,b:integer;
begin
  for i := 1 to Image1.Picture.Width do
    for j := 1 to Image1.Picture.Height div 2 do begin
      c:= Image1.Canvas.Pixels[i,j];
      r := getRvalue(c);
      g := getGvalue(c);
      b := getBvalue(c);
      Image1.Canvas.Pixels[i,j]:= RGB(r,g div 3, b div 3);
    end;
end;

end.
