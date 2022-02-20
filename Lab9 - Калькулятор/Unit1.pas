unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Bt1: TButton;
    Bt2: TButton;
    Bt4: TButton;
    Bt3: TButton;
    Bt5: TButton;
    Bt6: TButton;
    Bt8: TButton;
    Bt7: TButton;
    BtPr: TButton;
    Bt9: TButton;
    BtPlus: TButton;
    BtMinus: TButton;
    BtEq: TButton;
    Bt0: TButton;
    BtDiv: TButton;
    BtClear: TButton;
    Edit: TEdit;
    procedure Bt1Click(Sender: TObject);
    procedure BtPlusClick(Sender: TObject);
    procedure BtEqClick(Sender: TObject);
    procedure BtClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  num,num1:integer;
  zn:string;
implementation

{$R *.dfm}

procedure TForm1.Bt1Click(Sender: TObject);
var BtUsed : TButton;
begin
    BtUsed := (Sender as TButton);
    Edit.Text:=Edit.Text + BtUsed.Caption;
end;

procedure TForm1.BtClearClick(Sender: TObject);
begin
  Edit.Clear;
end;

procedure TForm1.BtEqClick(Sender: TObject);
var otv: integer;
begin
    num1:=StrToInt(Edit.Text);
    case zn[1] of
      '+': otv:=num+num1;
      '-': otv:=num-num1;
      '/': otv:=round(num/num1);
      '*': otv:=num*num1;
    end;
    Edit.Text := IntToStr(otv);
end;

procedure TForm1.BtPlusClick(Sender: TObject);
var BtUsed : TButton;
begin
    BtUsed := (Sender as TButton);
    num:=StrToInt(Edit.Text);
    zn:=BtUsed.Caption;
    Edit.Clear;
end;

end.
