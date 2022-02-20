unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Timer1: TTimer;
    StartBt: TButton;
    ResertBt: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StartBtClick(Sender: TObject);
    procedure ResertBtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  r,xc,yc,sec,min: integer;
  alf:real;
implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var i: Integer;
begin
  alf:=pi/2;
  sec:=0;
end;

procedure TMainForm.FormPaint(Sender: TObject);
var i,x1,y1,x2,y2:integer;
    alf1:real;
begin
  if MainForm.ClientWidth > MainForm.ClientHeight then
    r:= MainForm.ClientHeight div 2
    else r:=MainForm.ClientWidth div 2;
  MainForm.Canvas.Ellipse(0,0,2*r,2*r);
  for i := 1 to 60 do begin
    x1:=r+round(r*cos((pi/30)*i));
    y1:=r-round(r*sin((pi/30)*i));
    x2:=r+round((r-4)*cos((pi/30)*i));
    y2:=r-round((r-4)*sin((pi/30)*i));
    MainForm.Canvas.MoveTo(x1,y1);
    MainForm.Canvas.LineTo(x2,y2);
  end;
  for i := 1 to 12 do begin
    x1:=r+round(r*cos((pi/6)*i));
    y1:=r-round(r*sin((pi/6)*i));
    x2:=r+round((r-10)*cos((pi/6)*i));
    y2:=r-round((r-10)*sin((pi/6)*i));
    MainForm.Canvas.MoveTo(x1,y1);
    MainForm.Canvas.LineTo(x2,y2);
  end;
  for i := 1 to 12 do begin
    if (i>=4) and (i<=8) then begin
        x2:=r+round((r-18)*cos(-(pi/6)*i+(pi/2)));
        y2:=r-round((r-18)*sin(-(pi/6)*i+(pi/2)));
        MainForm.Canvas.MoveTo(x2,y2);
        MainForm.Canvas.TextOut(x2,y2,inttostr(i));
    end
    else begin
        x2:=r+round((r-10)*cos(-(pi/6)*i+(pi/2)));
        y2:=r-round((r-10)*sin(-(pi/6)*i+(pi/2)));
        MainForm.Canvas.MoveTo(x2,y2);
        MainForm.Canvas.TextOut(x2,y2,inttostr(i));
    end;
  end;


  MainForm.Canvas.MoveTo(r,r);
  xc:=r+round(r*cos(alf));
  yc:=r-round(r*sin(alf));
  MainForm.Canvas.LineTo(xc,yc);

  alf1:=alf-(pi/2);
  alf1:=alf1/60;
  alf1:=alf1+(pi/2);
  MainForm.Canvas.MoveTo(r,r);
  xc:=r+round((r-10)*cos(alf1));
  yc:=r-round((r-10)*sin(alf1));
  MainForm.Canvas.LineTo(xc,yc);

  MainForm.StartBt.Width:=r div 3;
  MainForm.StartBt.Height:=r div 8;
  MainForm.StartBt.Left:=0;
  MainForm.StartBt.Top:=MainForm.ClientHeight-MainForm.StartBt.Height;

  MainForm.ResertBt.Width:=r div 3;
  MainForm.ResertBt.Height:=r div 8;
  MainForm.ResertBt.Left:=2*r - r div 2;
  MainForm.ResertBt.Top:=MainForm.ClientHeight-MainForm.ResertBt.Height;


end;
procedure TMainForm.FormResize(Sender: TObject);
begin
  Label1.Width:=r div 3;
  Label1.Height:=r div 8;
  Label1.Left:=8;
  Label1.Top:=8;
  repaint;
end;
procedure TMainForm.ResertBtClick(Sender: TObject);
begin
  alf:=(pi/2);
  repaint;
  StartBt.Caption:='Старт';
  Timer1.Enabled:=false;
  sec:=0;
end;

procedure TMainForm.StartBtClick(Sender: TObject);
begin
  if StartBt.Caption = 'Старт' then begin
      StartBt.Caption:='Стоп';
      Timer1.Enabled:=true;
      Label1.Caption:=IntToStr(min div 10)+IntToStr(min mod 10)+':'+IntToStr(sec mod 60 div 10)+IntToStr(sec mod 60 mod 10);
  end
  else begin
    StartBt.Caption:='Старт';
    Timer1.Enabled:=false;
  end;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  alf:=alf - pi/30;
  repaint;
  inc(sec);
  min:=sec div 60;
  Label1.Caption:=IntToStr(min div 10)+IntToStr(min mod 10)+':'+IntToStr(sec mod 60 div 10)+IntToStr(sec mod 60 mod 10);
end;

end.
