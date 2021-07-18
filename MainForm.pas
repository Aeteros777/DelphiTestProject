unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Menus, System.Actions, Vcl.ActnList, Oracle;

type
  TfrmMain = class(TForm)
    ARMMainMenu: TMainMenu;
    ActionList1: TActionList;
    actARMOperator: TAction;
    actARMStatist: TAction;
    ARMMenuItem: TMenuItem;
    ARMOperatorMenuItem: TMenuItem;
    ARMStatistMenuItem: TMenuItem;
    actExit: TAction;
    ExitMenuItem: TMenuItem;
    N5: TMenuItem;
    OracleSession1: TOracleSession;
    procedure actARMOperatorExecute(Sender: TObject);
    procedure actARMStatistExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  ARMOperator, ARMStatist;

{$R *.dfm}

procedure TfrmMain.actARMOperatorExecute(Sender: TObject);
var
  FrmOperator: TfrmOperator;
begin
  FrmOperator := TfrmOperator.Create(Application);
  FrmOperator.Caption := 'АРМ оператора';
end;

procedure TfrmMain.actARMStatistExecute(Sender: TObject);
var
  FrmStatist: TfrmStatist;
begin
  FrmStatist := TfrmStatist.Create(Application);
  FrmStatist.Caption := 'АРМ статиста';
end;

procedure TfrmMain.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    OracleSession1.LogOff;
  except
    ShowMessage('Неудачная попытка отключения базы!');
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  try
    OracleSession1.LogonUsername := 'system';
    OracleSession1.LogonPassword := 'admin';
    OracleSession1.LogonDatabase := 'XE';
    OracleSession1.LogOn;
  except
    ARMMenuItem.Enabled := False;
    ShowMessage('Неудачная попытка подключения к базе!');
  end;
end;

end.
