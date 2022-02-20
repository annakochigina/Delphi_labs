unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  str :string;
implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.Button1Click(Sender: TObject);
var i :integer;
    s :string;
begin
    i := Form1.ListBox1.ItemIndex;
    s := Form2.Edit1.Text;
    Form1.ListBox1.Items.Delete(i);
    Form1.ListBox1.Items.Insert(i,s);
    Edit1.Text := '';
    Form2.Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
    Form2.Hide;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
    if Edit1.Text <> '' then
        Button1.Enabled := True;
end;

end.
