unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    BtStart: TButton;
    StringGrid1: TStringGrid;
    Timer1: TTimer;
    ImageList1: TImageList;
    Timer2: TTimer;
    Label2: TLabel;
    procedure BtStartClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  list : array [0..2,0..3] of integer;
  n, k, xcol, yrow, x1col, y1row, count : integer;
implementation

{$R *.dfm}

procedure TForm1.BtStartClick(Sender: TObject);
var i, j, k, x: integer;
begin
    BtStart.Enabled := False;
    Label2.Caption := '';
    n := 0;
    k := 0;
    for j := 0 to StringGrid1.ColCount-1 do
      for i := 0 to StringGrid1.RowCount-1 do begin
        list[i,j] := 0;
        inc(n);
      end;
    for k := 1 to 2 do
      for x := 1 to n div 2 do begin
        repeat
          i := random(StringGrid1.RowCount);
          j := random(StringGrid1.ColCount);
        until (list[i,j] = 0);
    list[i,j] := x;
    end;

    for j := 0 to StringGrid1.ColCount do
      for i := 0 to StringGrid1.RowCount do
        StringGrid1.Cells[j,i] := '1';
    Timer1.Enabled := True;
end;


procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
    if StringGrid1.Cells[Acol,ARow] = '0' then
      Imagelist1.Draw(StringGrid1.Canvas, Rect.Left, Rect.Top, 0);
    if StringGrid1.Cells[Acol,ARow] = '1' then
      Imagelist1.Draw(StringGrid1.Canvas, Rect.Left, Rect.Top, list[ARow,ACol]);
end;

procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var i, j: integer;
begin
    if (StringGrid1.Cells[Acol, ARow] = '0') and (k=0) then begin
        StringGrid1.Cells[Acol, ARow] := '1';
        k := 1;
        xcol := ACol;
        yrow := ARow;
    end;
    if (StringGrid1.Cells[Acol, ARow] = '0') and (k=1) then begin
        k := 2;
        StringGrid1.Cells[Acol, ARow] := '1';
        x1col := ACol;
        y1row := ARow;
        Timer2.Enabled := True;
    end;
    if count = n div 2 then begin
      BtStart.Enabled := True;
      Label2.Caption := 'Игра окончена';
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var j, i : integer;
begin
    Timer1.Enabled := False;
    for j := 0 to StringGrid1.ColCount do
      for i := 0 to StringGrid1.RowCount do
        StringGrid1.Cells[j,i] := '0';
    Timer2.Enabled := False;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
    Timer2.Enabled := False;
    if list[yrow,xcol] <> list[y1row, x1col] then begin
      StringGrid1.Cells[xcol,yrow] := '0';
      StringGrid1.Cells[x1col,y1row] := '0';
    end
    else
      inc(count);
    k := 0;
end;

end.
