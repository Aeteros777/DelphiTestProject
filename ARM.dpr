program ARM;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  ARMOperator in 'ARMOperator.pas' {frmOperator},
  ARMStatist in 'ARMStatist.pas' {frmStatist},
  FrameFindPeople in 'FrameFindPeople.pas' {frameFind: TFrame},
  uARMObjects in 'uARMObjects.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
