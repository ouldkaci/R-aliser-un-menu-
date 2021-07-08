program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Frm_menu},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TFrm_menu, Frm_menu);
  Application.Run;
end.
