program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {MainF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainF, MainF);
  Application.Run;
end.
