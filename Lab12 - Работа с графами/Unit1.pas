unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Unit3;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    StringGrid1: TStringGrid;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Vert : TVertex;
  Graph : TGraph;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Vert := TVertex.Create(100, 200, 1);
  Vert.Draw(Image1.Canvas);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Vert.SetColor(clYellow);
  Vert.Draw(Image1.Canvas);
end;

procedure TForm1.Button3Click(Sender: TObject);
var i : integer;
begin
  Graph.AddVertex(180,54);
  Graph.AddVertex(130,150);
  Graph.AddVertex(150,25);
  Graph.AddVertex(189,160);

  Graph.AddEdge(1,3);
  Graph.AddEdge(2,4);
  Graph.AddEdge(3,4);

  Graph.DrawGraph;
  Graph.OutputMatr(StringGrid1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Graph := TGraph.Create(Image1.Canvas);
end;

end.
