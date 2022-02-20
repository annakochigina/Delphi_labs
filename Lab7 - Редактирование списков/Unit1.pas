unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit: TEdit;
    Label1: TLabel;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    Label2: TLabel;
    //procedure Button1Click(Sender: TObject);
    //procedure EditChange(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1 :TForm1;
  str :string;
  list :array [0..1000] of string;

implementation

{$R *.dfm}

uses Unit2;

{procedure TForm1.Button1Click(Sender: TObject);
var s: string;
begin
    s := Edit.Text;
    ListBox1.Items.Add(s);
    //Edit.Text := '';
    Button1.Enabled := False;
end;

procedure TForm1.EditChange(Sender: TObject);
begin
    if Edit.Text <> '' then
      Button1.Enabled := True;
end;}

procedure TForm1.N10Click(Sender: TObject);
begin
    ListBox1.Clear;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
    Edit.Text := '';
end;

procedure TForm1.N4Click(Sender: TObject);
var i, n :integer;
begin
    n := ListBox1.Count;
    for i := 0 to n-1 do
      list[i] := '0';
    for i := 0 to n-1 do
      list[i] := ListBox1.Items[i];
    {for i := 0 to n-1 do
      Label2.Caption := Label2.Caption + list[i] + ' ';}
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N6Click(Sender: TObject);
var s: string;
begin
    if Edit.Text <> '' then begin
      s := Edit.Text;
      ListBox1.Items.Add(s);
      //Edit.Text := '';
    end
    else begin
      MessageDlg('Введите строку', mtWarning, [mbOk], 0);
      //ShowMessage('Введите строку');
    end;
end;

procedure TForm1.N7Click(Sender: TObject);
var i: integer;
begin
    if ListBox1.ItemIndex = -1 then
      MessageDlg('Выберите элемент в списке', mtWarning, [mbOk], 0)
    else begin
      i := ListBox1.ItemIndex;
      ListBox1.Items.Delete(i);
    end;
end;

procedure TForm1.N8Click(Sender: TObject);
var i :integer;
    s :string;
begin
    i := ListBox1.ItemIndex;
    if Edit.Text <> '' then begin
      s := Edit.Text;
      ListBox1.Items.Insert(i,s);
    end
    else begin
      MessageDlg('Введите строку', mtWarning, [mbOk], 0);
      //ShowMessage('Введите строку');
    end;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
    if ListBox1.ItemIndex = -1 then
      MessageDlg('Выберите элемент в списке', mtWarning, [mbOk], 0)
    else
      Form2.Show;
end;

end.
