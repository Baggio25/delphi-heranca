inherited frmCdsCid0: TfrmCdsCid0
  Caption = 'frmCdsCid0'
  ClientHeight = 266
  ClientWidth = 538
  OnCreate = FormCreate
  ExplicitWidth = 554
  ExplicitHeight = 305
  TextHeight = 15
  inherited scrRodape: TScrollBox
    Top = 222
    Width = 538
    ExplicitTop = 222
    ExplicitWidth = 538
    inherited StatusBar1: TStatusBar
      Width = 538
      ExplicitWidth = 538
    end
    inherited pnlToolBarNavigator: TPanel
      Width = 538
      ExplicitWidth = 538
      inherited lblAtalho: TLabel
        Left = 466
        Height = 24
        ExplicitLeft = 466
      end
      inherited toolBarNavigator: TToolBar
        Width = 466
        ExplicitWidth = 466
      end
    end
  end
  inherited pnlLeftButtonMetro: TScrollBox
    Height = 222
    ExplicitHeight = 222
    inherited pnlLeftMetro: TPanel
      Height = 222
      ExplicitHeight = 222
    end
  end
  inherited pnlFront: TScrollBox
    Width = 424
    Height = 222
    ExplicitWidth = 424
    ExplicitHeight = 222
    object Label1: TLabel
      Left = 18
      Top = 16
      Width = 52
      Height = 18
      Alignment = taRightJustify
      Caption = 'C'#243'digo'
      FocusControl = fldIDCIDADE
    end
    object Label2: TLabel
      Left = 18
      Top = 45
      Width = 52
      Height = 18
      Alignment = taRightJustify
      Caption = 'Cidade'
      FocusControl = fldCIDADE
    end
    object Label3: TLabel
      Left = 49
      Top = 106
      Width = 21
      Height = 18
      Alignment = taRightJustify
      Caption = 'UF'
      FocusControl = fldUF
    end
    object Label4: TLabel
      Left = 220
      Top = 106
      Width = 75
      Height = 18
      Caption = 'Popula'#231#227'o'
      FocusControl = fldPOPULACAO
    end
    object Label5: TLabel
      Left = 39
      Top = 74
      Width = 31
      Height = 18
      Alignment = taRightJustify
      Caption = 'Pa'#237's'
      FocusControl = fldIDPAIS
    end
    object Label6: TLabel
      Left = 40
      Top = 135
      Width = 30
      Height = 18
      Caption = 'Ibge'
      FocusControl = fldCODIGOIBGE
    end
    object btnIDPAIS: TSpeedButton
      Left = 123
      Top = 71
      Width = 28
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D0000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FF0000003B3B3BFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C30000003B3B3BC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FF3E3E3E000000453145FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C33E3E3E000000453145C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2F212F00
        00003E2C3EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C32F212F0000003E2C3EC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF402B400000003A3A3AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3402B400000003A3A3A
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF2D2D2D000000000000000000000000000000000000412241FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C32D2D2D00000000000000000000000000000000000041
        2241C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000001414141717173838384242
        424E4E4E3C3C3C0000002C142CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3000000141414
        1717173838384242424E4E4E3C3C3C0000002C142CC3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0000001E1E1E9B9B9BFF00FFFF00FFFF00FFFF00FF707070000000624562
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C30000001E1E1E9B9B9BC3C3C3C3C3C3C3C3C3C3C3C370
        7070000000624562C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000006B6B6BFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF2F2F2F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C30000006B6B6B
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C32F2F2F000000C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF000000666666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA5A5A5000000
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3000000666666C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3A5A5A5000000C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000484848FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF787878000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3000000484848
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3787878000000C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF000000444444FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF444444000000
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3000000444444C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3444444000000C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A2A2A000000454545FF00FFFF00
        FFFF00FFFF00FF7D7D7D0000003A183AFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C32A2A2A000000
        454545C3C3C3C3C3C3C3C3C3C3C3C37D7D7D0000003A183AC3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF070607000000414141545454656565646464000000271927FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C307060700000041414154545465656564646400
        0000271927C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3434340000000000
        000000000000005B5B5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        3434340000000000000000000000005B5B5BC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
      NumGlyphs = 2
      ParentFont = False
      OnClick = btnIDPAISClick
    end
    object fldIDCIDADE: TDBEdit
      Left = 74
      Top = 13
      Width = 95
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'IDCIDADE'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 0
    end
    object fldCIDADE: TDBEdit
      Left = 74
      Top = 42
      Width = 335
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CIDADE'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 1
    end
    object fldUF: TDBEdit
      Left = 74
      Top = 103
      Width = 40
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'UF'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 3
    end
    object fldPOPULACAO: TDBEdit
      Left = 299
      Top = 103
      Width = 110
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'POPULACAO'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 4
    end
    object fldIDPAIS: TDBEdit
      Left = 74
      Top = 73
      Width = 48
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'IDPAIS'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 2
      OnChange = fldIDPAISChange
    end
    object fldCODIGOIBGE: TDBEdit
      Left = 74
      Top = 132
      Width = 95
      Height = 24
      Ctl3D = False
      DataField = 'CODIGOIBGE'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 5
    end
    object lblIDPAIS: TEdit
      Left = 152
      Top = 72
      Width = 257
      Height = 26
      Hint = 'Desc. Vendedor'
      TabStop = False
      AutoSize = False
      Color = 14869218
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      HideSelection = False
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
  end
  inherited sdsPrincipal: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM TBLCDSCID0 CID0'#13#10'WHERE CID0.IDCIDADE = :ID'
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 168
    Top = 216
  end
  inherited dspPrincipal: TDataSetProvider
    Left = 248
    Top = 216
  end
  inherited cdsPrincipal: TClientDataSet
    Left = 328
    Top = 216
    object cdsPrincipalIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCIDADE'
      Required = True
    end
    object cdsPrincipalCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
    object cdsPrincipalUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsPrincipalCODIGOIBGE: TIntegerField
      DisplayLabel = 'Ibge'
      FieldName = 'CODIGOIBGE'
    end
    object cdsPrincipalPOPULACAO: TIntegerField
      DisplayLabel = 'Popula'#231#227'o'
      FieldName = 'POPULACAO'
    end
    object cdsPrincipalIDPAIS: TIntegerField
      DisplayLabel = 'C'#243'd. Pa'#237's'
      FieldName = 'IDPAIS'
      Required = True
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 405
    Top = 216
  end
end
