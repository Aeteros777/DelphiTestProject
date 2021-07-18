object frmOperator: TfrmOperator
  Left = 0
  Top = 0
  Caption = #1040#1056#1052' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
  ClientHeight = 885
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 885
    Align = alClient
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -8
    ExplicitHeight = 1087
    object splPeoplegrid: TSplitter
      Left = 0
      Top = 591
      Width = 1120
      Height = 8
      Cursor = crVSplit
      Align = alTop
      Color = clSilver
      ParentColor = False
      ExplicitTop = 535
    end
    object lblCaptiondoc: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 602
      Width = 1110
      Height = 18
      Margins.Left = 5
      Margins.Right = 5
      Align = alTop
      Caption = #1057#1087#1080#1089#1086#1082' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1089#1087#1088#1072#1074#1086#1082' '#1085#1072' '#1091#1082#1072#1079#1072#1085#1085#1086#1075#1086' '#1095#1077#1083#1086#1074#1077#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 6
      ExplicitTop = 571
    end
    object pnlAddPeople: TPanel
      Left = 0
      Top = 0
      Width = 1120
      Height = 385
      Align = alTop
      ShowCaption = False
      TabOrder = 0
      object lblPeopleCaption: TLabel
        AlignWithMargins = True
        Left = 6
        Top = 4
        Width = 1108
        Height = 18
        Margins.Left = 5
        Margins.Right = 5
        Align = alTop
        Caption = #1042#1085#1077#1089#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1086' '#1095#1077#1083#1086#1074#1077#1082#1077' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 215
      end
      object pnlAddFamilia: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 28
        Width = 1118
        Height = 40
        Margins.Left = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblFamilia: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 8
          Width = 115
          Height = 29
          Margins.Left = 10
          Margins.Top = 8
          Margins.Right = 5
          Align = alLeft
          AutoSize = False
          Caption = #1060#1072#1084#1080#1083#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 5
        end
        object edtFamilia: TEdit
          AlignWithMargins = True
          Left = 135
          Top = 3
          Width = 121
          Height = 31
          Margins.Left = 5
          Margins.Right = 5
          Margins.Bottom = 6
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 178
          ExplicitTop = 6
        end
      end
      object pnlBirthday: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 156
        Width = 1118
        Height = 40
        Margins.Left = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblBirthday: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 8
          Width = 115
          Height = 29
          Margins.Left = 10
          Margins.Top = 8
          Margins.Right = 5
          Align = alLeft
          AutoSize = False
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 5
        end
        object dtpBirth: TDateTimePicker
          AlignWithMargins = True
          Left = 135
          Top = 3
          Width = 186
          Height = 31
          Margins.Left = 5
          Margins.Right = 5
          Margins.Bottom = 6
          Align = alLeft
          Date = 44391.000000000000000000
          Time = 0.003181956017215271
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 130
          ExplicitTop = 6
        end
      end
      object pnlSaveButton: TPanel
        Left = 1
        Top = 245
        Width = 1118
        Height = 36
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object btnSave: TButton
          AlignWithMargins = True
          Left = 20
          Top = 3
          Width = 194
          Height = 30
          Margins.Left = 20
          Margins.Right = 15
          Action = actSavePeople
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 15
        end
      end
      object pnlAddName: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 71
        Width = 1118
        Height = 41
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object lblName: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 8
          Width = 115
          Height = 30
          Margins.Left = 10
          Margins.Top = 8
          Margins.Right = 5
          Align = alLeft
          AutoSize = False
          Caption = #1048#1084#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 5
        end
        object edtName: TEdit
          AlignWithMargins = True
          Left = 135
          Top = 3
          Width = 121
          Height = 32
          Margins.Left = 5
          Margins.Right = 5
          Margins.Bottom = 6
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 47
          ExplicitHeight = 26
        end
      end
      object pnlThName: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 112
        Width = 1118
        Height = 41
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object lblThName: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 8
          Width = 115
          Height = 30
          Margins.Left = 10
          Margins.Top = 8
          Margins.Right = 5
          Align = alLeft
          AutoSize = False
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 5
        end
        object edtThName: TEdit
          AlignWithMargins = True
          Left = 135
          Top = 3
          Width = 121
          Height = 32
          Margins.Left = 5
          Margins.Right = 5
          Margins.Bottom = 6
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 84
          ExplicitHeight = 26
        end
      end
      object pnlDateRec: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 202
        Width = 1118
        Height = 40
        Margins.Left = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        object lblDateRec: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 8
          Width = 115
          Height = 29
          Margins.Left = 10
          Margins.Top = 8
          Margins.Right = 5
          Align = alLeft
          AutoSize = False
          Caption = #1044#1072#1090#1072' '#1079#1072#1085#1077#1089#1077#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 5
          ExplicitHeight = 18
        end
        object dtpDateRec: TDateTimePicker
          AlignWithMargins = True
          Left = 135
          Top = 3
          Width = 186
          Height = 31
          Margins.Left = 5
          Margins.Right = 5
          Margins.Bottom = 6
          Align = alLeft
          Date = 44391.000000000000000000
          Time = 0.003181956017215271
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 130
        end
      end
      object pnlAddSpr: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 284
        Width = 1118
        Height = 40
        Margins.Left = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        object lblAddSpr: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 8
          Width = 132
          Height = 29
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 5
          Align = alLeft
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1087#1088#1072#1074#1082#1091
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 18
        end
        object cxReferenceComboBox: TcxComboBox
          AlignWithMargins = True
          Left = 147
          Top = 3
          Margins.Left = 5
          Margins.Right = 5
          Margins.Bottom = 6
          Align = alLeft
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 197
        end
      end
      object pnlAddSprButton: TPanel
        Left = 1
        Top = 327
        Width = 1118
        Height = 36
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 7
        object btnAddSpr: TButton
          AlignWithMargins = True
          Left = 20
          Top = 3
          Width = 194
          Height = 30
          Margins.Left = 20
          Margins.Right = 15
          Action = actAddReference
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 15
        end
      end
    end
    inline frameFind: TframeFind
      Left = 0
      Top = 385
      Width = 1120
      Height = 56
      Align = alTop
      TabOrder = 1
      ExplicitTop = 385
      ExplicitWidth = 1120
      ExplicitHeight = 56
      inherited pnlMain: TPanel
        Width = 1120
        Height = 73
        ExplicitWidth = 1120
        ExplicitHeight = 73
        inherited lblCaption: TLabel
          Width = 1110
        end
        inherited pnlSearch: TPanel
          Width = 1120
          ExplicitWidth = 1120
        end
      end
    end
    object cxPeopleTreeList: TcxTreeList
      Left = 0
      Top = 441
      Width = 1120
      Height = 150
      Align = alTop
      Bands = <
        item
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Navigator.Buttons.CustomButtons = <>
      ParentFont = False
      TabOrder = 2
      OnCanSelectNode = cxPeopleTreeListCanSelectNode
      ExplicitLeft = 5
      ExplicitTop = 444
      object cxFamiliaPeopleTLColumn: TcxTreeListColumn
        Caption.Text = #1060#1072#1084#1080#1083#1080#1103
        DataBinding.ValueType = 'String'
        Width = 130
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxNamePeopleTLColumn: TcxTreeListColumn
        Caption.Text = #1048#1084#1103
        DataBinding.ValueType = 'String'
        Width = 124
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxThirdNamePeopleTLColumn: TcxTreeListColumn
        Caption.Text = #1054#1090#1095#1077#1089#1090#1074#1086
        DataBinding.ValueType = 'String'
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDateBirthPeopleTLColumn: TcxTreeListColumn
        Caption.Text = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        DataBinding.ValueType = 'String'
        Width = 130
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDateAddedPeopleTLColumn: TcxTreeListColumn
        Caption.Text = #1044#1072#1090#1072' '#1079#1072#1085#1077#1089#1077#1085#1080#1103
        DataBinding.ValueType = 'String'
        Width = 126
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object cxReferenceTreeList: TcxTreeList
      Left = 0
      Top = 623
      Width = 1120
      Height = 262
      Align = alClient
      Bands = <
        item
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Navigator.Buttons.CustomButtons = <>
      ParentFont = False
      TabOrder = 3
      ExplicitLeft = 5
      ExplicitTop = 549
      ExplicitHeight = 170
      object cxNameReferenceTLColumn: TcxTreeListColumn
        Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1082#1080
        DataBinding.ValueType = 'String'
        Width = 226
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDateAddedReferenceTLColumn: TcxTreeListColumn
        Caption.Text = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataBinding.ValueType = 'String'
        Width = 254
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  object ActionList1: TActionList
    Left = 825
    Top = 70
    object actSavePeople: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1095#1077#1083#1086#1074#1077#1082#1072
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1095#1077#1083#1086#1074#1077#1082#1072
      OnExecute = actSavePeopleExecute
    end
    object actAddReference: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1087#1088#1072#1074#1082#1091
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1087#1088#1072#1074#1082#1091
      OnExecute = actAddReferenceExecute
    end
  end
  object GetPeopleOracleDataSet: TOracleDataSet
    SQL.Strings = (
      'select p.* from peoples p'
      'order by p.date_added_people desc')
    Optimize = False
    Session = frmMain.OracleSession1
    Left = 713
    Top = 20
  end
  object InsertPeopleOracleQuery: TOracleQuery
    SQL.Strings = (
      'insert into peoples p'
      
        '(p.id_people, p.surname_people, p.name_people, p.third_name_peop' +
        'le, p.date_birth_people, p.date_added_people)'
      'values'
      
        '(sq_people.nextval, :SURNAME_PEOPLE, :NAME_PEOPLE, :THIRD_NAME_P' +
        'EOPLE, :DATE_BIRTH_PEOPLE, :DATE_ADDED_PEOPLE)')
    Session = frmMain.OracleSession1
    Optimize = False
    Variables.Data = {
      04000000050000001E0000003A005300550052004E0041004D0045005F005000
      45004F0050004C004500050000000000000000000000180000003A004E004100
      4D0045005F00500045004F0050004C0045000500000000000000000000002400
      00003A00540048004900520044005F004E0041004D0045005F00500045004F00
      50004C004500050000000000000000000000240000003A004400410054004500
      5F00420049005200540048005F00500045004F0050004C0045000C0000000000
      000000000000240000003A0044004100540045005F0041004400440045004400
      5F00500045004F0050004C0045000C0000000000000000000000}
    Left = 713
    Top = 184
  end
  object InsertPeopleReferencesOracleQuery: TOracleQuery
    SQL.Strings = (
      'insert into people_references p'
      
        '  (p.id_people_references, p.id_people, p.id_reference, p.date_a' +
        'dded)'
      'values'
      
        '  (SQ_PEOPLE_REFERENCES.Nextval, :ID_PEOPLE, :ID_REFERENCE, :DAT' +
        'E_ADDED)')
    Session = frmMain.OracleSession1
    Optimize = False
    Variables.Data = {
      0400000003000000140000003A00490044005F00500045004F0050004C004500
      0300000000000000000000001A0000003A00490044005F005200450046004500
      520045004E0043004500030000000000000000000000160000003A0044004100
      540045005F00410044004400450044000C0000000000000000000000}
    Left = 712
    Top = 248
  end
  object GetReferenceOracleDataSet: TOracleDataSet
    SQL.Strings = (
      'select * '
      '  from references p '
      ' order by  p.date_added desc')
    Optimize = False
    Session = frmMain.OracleSession1
    Left = 713
    Top = 79
  end
  object GetPeopleReferencesOracleDataSet: TOracleDataSet
    SQL.Strings = (
      'select r.id_reference,'
      '          r.name,'
      '          r.date_added'
      '  from people_references p,'
      '          references r'
      'where p.id_people = :id_people'
      '   and p.id_reference = r.id_reference'
      ' order by r.date_added desc')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00490044005F00500045004F0050004C004500
      030000000000000000000000}
    Session = frmMain.OracleSession1
    Left = 713
    Top = 128
  end
end
