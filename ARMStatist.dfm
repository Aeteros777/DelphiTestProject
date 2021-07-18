object frmStatist: TfrmStatist
  Left = 0
  Top = 0
  Caption = #1040#1056#1052' '#1089#1090#1072#1090#1080#1089#1090#1072
  ClientHeight = 801
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 801
    Align = alClient
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    object splPeoplegrid: TSplitter
      Left = 0
      Top = 375
      Width = 1034
      Height = 8
      Cursor = crVSplit
      Align = alTop
      Color = clSilver
      ParentColor = False
    end
    object lblCaptiondoc: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 386
      Width = 1024
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
      ExplicitWidth = 368
    end
    object pnlFind: TPanel
      Left = 0
      Top = 0
      Width = 1034
      Height = 161
      Align = alTop
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 0
      object pnlSearchPeople: TPanel
        Left = 0
        Top = 0
        Width = 1034
        Height = 161
        Align = alTop
        ShowCaption = False
        TabOrder = 0
        object lblSearchDate: TLabel
          AlignWithMargins = True
          Left = 6
          Top = 4
          Width = 1022
          Height = 18
          Margins.Left = 5
          Margins.Right = 5
          Align = alTop
          Caption = #1055#1086#1080#1089#1082' '#1083#1102#1076#1077#1081' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1079#1072#1076#1072#1085#1085#1099#1084' '#1082#1088#1080#1090#1077#1088#1080#1103#1084
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 320
        end
        object pnlSearchByDate: TPanel
          AlignWithMargins = True
          Left = 1
          Top = 28
          Width = 1032
          Height = 40
          Margins.Left = 0
          Margins.Right = 0
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblPeriodDate: TLabel
            AlignWithMargins = True
            Left = 43
            Top = 8
            Width = 208
            Height = 29
            Margins.Left = 5
            Margins.Top = 8
            Margins.Right = 5
            Align = alLeft
            Caption = #1055#1077#1088#1080#1086#1076#1099' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' '#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 18
          end
          object lblWithPeriodDate: TLabel
            AlignWithMargins = True
            Left = 457
            Top = 8
            Width = 17
            Height = 29
            Margins.Left = 5
            Margins.Top = 8
            Margins.Right = 5
            Align = alLeft
            Caption = #1087#1086
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 18
          end
          object dtpBegin: TDateTimePicker
            AlignWithMargins = True
            Left = 261
            Top = 3
            Width = 186
            Height = 31
            Margins.Left = 5
            Margins.Right = 5
            Margins.Bottom = 6
            Align = alLeft
            Date = 44390.000000000000000000
            Time = 0.998153020831523500
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dtpEnd: TDateTimePicker
            AlignWithMargins = True
            Left = 484
            Top = 3
            Width = 186
            Height = 31
            Margins.Left = 5
            Margins.Right = 5
            Margins.Bottom = 6
            Align = alLeft
            Date = 44390.000000000000000000
            Time = 0.998934259259840500
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ExplicitTop = 0
          end
          object chkPeriodDate: TCheckBox
            AlignWithMargins = True
            Left = 15
            Top = 3
            Width = 20
            Height = 34
            Margins.Left = 15
            Align = alLeft
            TabOrder = 2
            OnClick = chkPeriodDateClick
          end
        end
        object pnlSearchBirthday: TPanel
          AlignWithMargins = True
          Left = 1
          Top = 74
          Width = 1032
          Height = 40
          Margins.Left = 0
          Margins.Right = 0
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object lblSearchBirthday: TLabel
            AlignWithMargins = True
            Left = 43
            Top = 8
            Width = 126
            Height = 29
            Margins.Left = 5
            Margins.Top = 8
            Margins.Right = 5
            Align = alLeft
            Caption = #1044#1072#1090#1099' '#1088#1086#1078#1076#1077#1085#1080#1103' '#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 18
          end
          object lblWithBirth: TLabel
            AlignWithMargins = True
            Left = 375
            Top = 8
            Width = 17
            Height = 29
            Margins.Left = 5
            Margins.Top = 8
            Margins.Right = 5
            Align = alLeft
            Caption = #1087#1086
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 18
          end
          object dtpBeginBirth: TDateTimePicker
            AlignWithMargins = True
            Left = 179
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
          end
          object dtpEndBirth: TDateTimePicker
            AlignWithMargins = True
            Left = 402
            Top = 3
            Width = 186
            Height = 31
            Margins.Left = 5
            Margins.Right = 5
            Margins.Bottom = 6
            Align = alLeft
            Date = 44391.000000000000000000
            Time = 0.004379155092465226
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object chkBirth: TCheckBox
            AlignWithMargins = True
            Left = 15
            Top = 3
            Width = 20
            Height = 34
            Margins.Left = 15
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = chkBirthClick
          end
        end
        object pnlSearchButton: TPanel
          Left = 1
          Top = 117
          Width = 1032
          Height = 36
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object btnSearchPeople: TButton
            AlignWithMargins = True
            Left = 15
            Top = 3
            Width = 194
            Height = 30
            Margins.Left = 15
            Margins.Right = 15
            Align = alLeft
            Caption = #1053#1072#1081#1090#1080' '#1083#1102#1076#1077#1081
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnSearchPeopleClick
          end
        end
      end
    end
    inline frameFind: TframeFind
      Left = 0
      Top = 161
      Width = 1034
      Height = 64
      Align = alTop
      TabOrder = 1
      ExplicitTop = 161
      ExplicitWidth = 1034
      ExplicitHeight = 64
      inherited pnlMain: TPanel
        Width = 1034
        ExplicitWidth = 1034
        inherited lblCaption: TLabel
          Width = 1024
        end
        inherited pnlSearch: TPanel
          Width = 1034
          ExplicitWidth = 1034
        end
      end
    end
    object cxPeopleTreeList: TcxTreeList
      Left = 0
      Top = 225
      Width = 1034
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
      Top = 407
      Width = 1034
      Height = 394
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
  object GetPeopleByDateOracleDataSet: TOracleDataSet
    SQL.Strings = (
      'select p.*'
      '  from peoples p'
      ' where p.date_added_people between :DATE_BEGIN and :DATE_END')
    Optimize = False
    Variables.Data = {
      0400000002000000160000003A0044004100540045005F004200450047004900
      4E000C0000000000000000000000120000003A0044004100540045005F004500
      4E0044000C0000000000000000000000}
    Session = frmMain.OracleSession1
    Left = 769
    Top = 76
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
    Left = 913
    Top = 24
  end
  object GetPeopleByBirthOracleDataSet: TOracleDataSet
    SQL.Strings = (
      'select p.*'
      '  from peoples p'
      
        ' where p.date_birth_people between :DATE_BEGIN_BIRTH and :DATE_E' +
        'ND_BIRTH')
    Optimize = False
    Variables.Data = {
      0400000002000000220000003A0044004100540045005F004200450047004900
      4E005F00420049005200540048000C00000000000000000000001E0000003A00
      44004100540045005F0045004E0044005F00420049005200540048000C000000
      0000000000000000}
    Session = frmMain.OracleSession1
    Left = 769
    Top = 148
  end
  object GetPeopleAllDateOracleDataSet: TOracleDataSet
    SQL.Strings = (
      'select p.*'
      '  from peoples p'
      ' where p.date_birth_people between :DATE_BEGIN and :DATE_END'
      
        '    and  p.date_added_people between :DATE_BEGIN_BIRTH and :DATE' +
        '_END_BIRTH')
    Optimize = False
    Variables.Data = {
      0400000004000000160000003A0044004100540045005F004200450047004900
      4E000C0000000000000000000000120000003A0044004100540045005F004500
      4E0044000C0000000000000000000000220000003A0044004100540045005F00
      42004500470049004E005F00420049005200540048000C000000000000000000
      00001E0000003A0044004100540045005F0045004E0044005F00420049005200
      540048000C0000000000000000000000}
    Session = frmMain.OracleSession1
    Left = 769
    Top = 220
  end
end
