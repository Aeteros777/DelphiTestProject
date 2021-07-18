object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = #1040#1056#1052
  ClientHeight = 439
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = ARMMainMenu
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ARMMainMenu: TMainMenu
    Left = 280
    Top = 184
    object ARMMenuItem: TMenuItem
      Caption = #1042#1099#1073#1086#1088' '#1040#1056#1052
      Hint = #1040#1056#1052' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
      object ARMOperatorMenuItem: TMenuItem
        Action = actARMOperator
      end
      object ARMStatistMenuItem: TMenuItem
        Action = actARMStatist
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object ExitMenuItem: TMenuItem
        Action = actExit
      end
    end
  end
  object ActionList1: TActionList
    Left = 352
    Top = 184
    object actARMOperator: TAction
      Caption = #1040#1056#1052' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
      Hint = #1040#1056#1052' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
      OnExecute = actARMOperatorExecute
    end
    object actARMStatist: TAction
      Caption = #1040#1056#1052' '#1089#1090#1072#1090#1080#1089#1090#1072
      Hint = #1040#1056#1052' '#1089#1090#1072#1090#1080#1089#1090#1072
      OnExecute = actARMStatistExecute
    end
    object actExit: TAction
      Caption = #1042#1099#1093#1086#1076
      Hint = #1042#1099#1093#1086#1076
      OnExecute = actExitExecute
    end
  end
  object OracleSession1: TOracleSession
    Preferences.ConvertUTF = cuUTF8ToUTF16
    Left = 144
    Top = 88
  end
end
