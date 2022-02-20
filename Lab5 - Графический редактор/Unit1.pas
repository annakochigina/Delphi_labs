unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    BitPencil: TBitBtn;
    BitLine: TBitBtn;
    BitRectangle: TBitBtn;
    BitEllipse: TBitBtn;
    BitClear: TBitBtn;
    BitFill: TBitBtn;
    ColorDialog1: TColorDialog;
    Shape1: TShape;
    Shape2: TShape;
    procedure FormCreate(Sender: TObject);
    procedure BtClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  BtUsed,x1,y1: integer;

implementation

{$R *.dfm}


procedure TForm1.BtClick(Sender: TObject);
begin
  if Sender Is TBitBtn then
    BtUsed:= (Sender As TBitBtn).Tag;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  BtUsed:=0;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  case BtUsed of
    1: Image1.Canvas.MoveTo(x,y);
    2,3: begin
        x1:=x;
        y1:=y;
    end;
    5: begin
        Image1.Canvas.FloodFill(x,y,Image1.Canvas.Pixels[x,y],fsSurface);
    end;
  end;
end;


procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  case BtUsed of
    4: begin
        if SsLeft in Shift then
          Image1.Canvas.LineTo(x,y)
          else Image1.Canvas.MoveTo(x,y)
    end;
    6: begin
      Image1.Canvas.Pen.Color:=clWhite;
      Image1.Canvas.Brush.Color:=clWhite;
      if SSLeft in Shift then
          Image1.Canvas.Ellipse(x-5,y-5,x+5,y+5)
          else Image1.Canvas.Pen.Color:=clBlack;
    end;
  end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  case BtUsed of
    1: Image1.Canvas.LineTo(x,y);
    2: Image1.Canvas.Ellipse(x1,y1,x,y);
    3: Image1.Canvas.Rectangle(x1,y1,x,y);
  end;
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then begin
      Image1.Canvas.Brush.Color:=ColorDialog1.Color;
      Shape1.Brush.Color:=ColorDialog1.Color;
  end;
end;

procedure TForm1.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then begin
      Image1.Canvas.Pen.Color:=ColorDialog1.Color;
      Shape2.Brush.Color:=ColorDialog1.Color;
  end;
end;

end.
