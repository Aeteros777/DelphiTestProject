object frameFind: TframeFind
  Left = 0
  Top = 0
  Width = 656
  Height = 60
  TabOrder = 0
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblCaption: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 646
      Height = 18
      Margins.Left = 5
      Margins.Right = 5
      Align = alTop
      Caption = #1055#1086#1080#1089#1082' '#1095#1077#1083#1086#1074#1077#1082#1072' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 204
    end
    object pnlSearch: TPanel
      Left = 0
      Top = 24
      Width = 656
      Height = 33
      Align = alTop
      TabOrder = 0
      object edtSearch: TEdit
        AlignWithMargins = True
        Left = 6
        Top = 4
        Width = 254
        Height = 25
        Margins.Left = 5
        Margins.Right = 5
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 27
      end
      object btnSearch: TButton
        AlignWithMargins = True
        Left = 270
        Top = 4
        Width = 75
        Height = 25
        Margins.Left = 5
        Margins.Right = 5
        Align = alLeft
        Caption = #1055#1086#1080#1089#1082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnSearchClick
      end
    end
  end
end
