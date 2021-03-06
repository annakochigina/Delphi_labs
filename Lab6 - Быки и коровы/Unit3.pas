unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    BtStart1: TButton;
    BtReaction1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    Answer: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    procedure BtStart1Click(Sender: TObject);
    procedure BtReaction1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  num,st,s1: string;
  bull1, cow1, bullyou, cowyou, cou:integer;
implementation

{$R *.dfm}

uses Unit1, Unit2;


procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  BtStart1.Enabled := True;
  BtReaction1.Enabled := False;
  Edit1.Enabled := False;
  Edit2.Enabled := False;
  Edit1.Text := '';
  Edit2.Text := '';
  Answer.Caption:='';
  ListBox1.Clear;
  Form3.Hide;
  Form2.Show;
end;

procedure TForm3.BtReaction1Click(Sender: TObject);
var i,j:integer;
begin
  cou:=0;
  bullyou := StrToInt(Form3.Edit1.Text);
  cowyou := StrToInt(Form3.Edit2.Text);
  if (bullyou=4) and (cowyou=0) then begin
    BtStart1.Enabled := True;
    BtReaction1.Enabled := False;
    Edit1.Enabled := False;
    Edit2.Enabled := False;
  end
  else begin
    while cou < ListBox1.Count do begin
      st := ListBox1.Items[cou];
      s1 := Answer.Caption;
      bull1 := 0;
      cow1 := 0;
      for i := 1 to 4 do
        for j := 1 to 4 do
          if s1[i] = st[j] then
            if i=j then
              inc(bull1)
            else inc(cow1);
      if (bull1<>bullyou) or (cow1<>cowyou) then
        ListBox1.Items.Delete(cou)
      else inc(cou);
    end;
  Answer.Caption:=ListBox1.Items[0];
  end;
end;

procedure TForm3.BtStart1Click(Sender: TObject);
var i: Integer;
begin
  ListBox1.Clear;
  for i := 1234 to 9876 do begin
    num := IntToStr(i);
    if (num[1]<>num[2]) and (num[1]<>num[3]) and (num[1]<>num[4]) and (num[2]<>num[3]) and (num[2]<>num[4]) and (num[3]<>num[4]) then
      ListBox1.Items.Add(num);
  end;
  Answer.Caption:=ListBox1.Items[0];
  BtStart1.Enabled := False;
  BtReaction1.Enabled := True;
  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit1.Text := '';
  Edit2.Text := '';
end;


end.
