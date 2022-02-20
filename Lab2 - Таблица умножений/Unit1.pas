unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TMainF = class(TForm)
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    PrLb: TLabel;
    CheckBox1: TCheckBox;
    Cd1Lb: TLabel;
    Cd2Lb: TLabel;
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainF: TMainF;

implementation

{$R *.dfm}

procedure TMainF.TrackBar1Change(Sender: TObject);
begin
  Label1.Caption:=IntToStr(TrackBar1.Position);
  Label2.Caption:=IntToStr(TrackBar2.Position);
  if CheckBox1.Checked = true then begin
    Cd1Lb.Caption:= IntToStr(TrackBar1.Position*TrackBar1.Position);
    Cd2Lb.Caption:=IntToStr(TrackBar2.Position*TrackBar2.Position);
    PrLb.Caption:='';
  end
  else begin
    PrLb.Caption:=IntToStr(TrackBar1.Position * TrackBar2.Position);
    Cd1Lb.Caption:='';
    Cd2Lb.Caption:='';
  end;
end;
end.
