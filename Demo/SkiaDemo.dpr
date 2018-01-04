program SkiaDemo;

uses
  Vcl.Forms,
  SkiaDemoMain in 'SkiaDemoMain.pas' {Form35},
  SkiaApi in '..\Source\Binding\SkiaApi.pas',
  SKColorSpace in '..\Source\Binding\SKColorSpace.pas',
  SKMatrix in '..\Source\Binding\SKMatrix.pas',
  Definitions in '..\Source\Binding\Definitions.pas',
  SKImageInfo in '..\Source\Binding\SKImageInfo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm35, Form35);
  Application.Run;
end.
