unit Unit2;

interface
uses Vcl.Graphics, System.SysUtils;
type TVertex = class
  private
    Fx, Fy, Fr, Fnumber : integer;
    FColor : TColor;

  public
    Constructor Create(x, y, n : integer);
    procedure Draw (Canv : TCanvas);
    procedure SetColor (Color : TColor);
    procedure setx (x : integer);
    procedure sety (y : integer);
    property x:integer read Fx write setx;
    property y:integer read Fy write sety;
end;
implementation
  Constructor TVertex.Create;
  begin
    Fx := x;
    Fy := y;
    FColor := clHighlight;
    Fnumber := n;
    Fr := 13;
  end;

  procedure TVertex.Draw(Canv: TCanvas);
  begin
    Canv.Brush.Color := FColor;
    Canv.Ellipse(Fx-Fr, Fy-Fr,Fx+Fr,Fy+Fr);
    Canv.Font.Style := Canv.Font.Style+[fsBold];
    Canv.TextOut((Fx-Fr)+5, (Fy-Fr)+5,IntToStr(Fnumber));
  end;

  procedure TVertex.SetColor(Color: TColor);
  begin
    FColor := color;
  end;

  procedure TVertex.setx(x : integer);
  begin
    Fx := x;
  end;

  procedure TVertex.sety(y: Integer);
  begin
    Fy := y;
  end;
end.
