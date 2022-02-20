unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Unit2;
type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Student: TStudent;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    Student := TStudent.Create (Edit1.Text, 6, 3);
    StringGrid1.Rows[1] := Student.Output_list;
    if Student.without_three then
        StringGrid1.Cells[StringGrid1.ColCount-2,1] := 'Сдал без 3'
    else
        StringGrid1.Cells[StringGrid1.ColCount-2,1] := 'Сдал c 3' ;
    if Student.All_five then
        StringGrid1.Cells[StringGrid1.ColCount-1,1] := 'Отличник'
    else
        StringGrid1.Cells[StringGrid1.ColCount-1,1] := 'не Отличник'
end;

end.
