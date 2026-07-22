program pNowMetal;

uses
  Vcl.Forms,
  uNowMetal in 'uNowMetal.pas' {NowMetalForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TNowMetalForm, NowMetalForm);
  Application.Run;
end.
