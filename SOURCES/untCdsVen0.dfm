inherited frmCdsVen0: TfrmCdsVen0
  Caption = 'frmCdsVen0'
  ClientHeight = 260
  ClientWidth = 542
  OnCreate = FormCreate
  ExplicitWidth = 558
  ExplicitHeight = 299
  TextHeight = 15
  inherited scrRodape: TScrollBox
    Top = 216
    Width = 542
    ExplicitTop = 216
    ExplicitWidth = 542
    inherited StatusBar1: TStatusBar
      Width = 542
      ExplicitWidth = 542
    end
    inherited pnlToolBarNavigator: TPanel
      Width = 542
      ExplicitWidth = 542
      inherited lblAtalho: TLabel
        Left = 470
        ExplicitLeft = 470
      end
      inherited toolBarNavigator: TToolBar
        Width = 470
        ExplicitWidth = 470
      end
    end
  end
  inherited pnlLeftButtonMetro: TScrollBox
    Height = 216
    ExplicitHeight = 216
    inherited pnlLeftMetro: TPanel
      Height = 216
      ExplicitHeight = 216
    end
  end
  inherited pnlFront: TScrollBox
    Width = 428
    Height = 216
    ExplicitWidth = 428
    ExplicitHeight = 216
    object Label1: TLabel
      Left = 57
      Top = 14
      Width = 52
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = fldIDVENDEDOR
    end
    object Label2: TLabel
      Left = 41
      Top = 46
      Width = 68
      Height = 18
      Caption = 'Vendedor'
      FocusControl = fldVENDEDOR
    end
    object Label3: TLabel
      Left = 57
      Top = 78
      Width = 52
      Height = 18
      Caption = 'Cidade'
      FocusControl = fldIDCIDADE
    end
    object Label4: TLabel
      Left = 12
      Top = 110
      Width = 96
      Height = 18
      Caption = '% Com. Vista'
      FocusControl = fldCOMISSAOVISTA
    end
    object Label5: TLabel
      Left = 213
      Top = 110
      Width = 101
      Height = 18
      Caption = '% Com. Prazo'
      FocusControl = fldCOMISSAOPRAZO
    end
    object btnIDCIDADE: TSpeedButton
      Left = 162
      Top = 74
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
      OnClick = btnIDCIDADEClick
    end
    object fldIDVENDEDOR: TDBEdit
      Left = 112
      Top = 11
      Width = 95
      Height = 26
      DataField = 'IDVENDEDOR'
      DataSource = dsPrincipal
      TabOrder = 0
    end
    object fldVENDEDOR: TDBEdit
      Left = 112
      Top = 43
      Width = 300
      Height = 26
      CharCase = ecUpperCase
      DataField = 'VENDEDOR'
      DataSource = dsPrincipal
      TabOrder = 2
    end
    object fldIDCIDADE: TDBEdit
      Left = 112
      Top = 75
      Width = 48
      Height = 26
      DataField = 'IDCIDADE'
      DataSource = dsPrincipal
      TabOrder = 3
      OnChange = fldIDCIDADEChange
    end
    object fldCOMISSAOVISTA: TDBEdit
      Left = 112
      Top = 107
      Width = 95
      Height = 26
      DataField = 'COMISSAOVISTA'
      DataSource = dsPrincipal
      TabOrder = 4
    end
    object fldCOMISSAOPRAZO: TDBEdit
      Left = 317
      Top = 107
      Width = 95
      Height = 26
      DataField = 'COMISSAOPRAZO'
      DataSource = dsPrincipal
      TabOrder = 5
    end
    object chbStatus: TDBCheckBox
      Left = 356
      Top = 15
      Width = 56
      Height = 17
      Caption = 'Ativo'
      DataField = 'STATUS'
      DataSource = dsPrincipal
      TabOrder = 1
      ValueChecked = 'A'
      ValueUnchecked = 'I'
    end
    object lblIDCIDADE: TEdit
      Left = 193
      Top = 75
      Width = 219
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
    CommandText = 'SELECT * FROM TBLCDSVEN0 WHERE IDVENDEDOR = :ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 152
    Top = 168
  end
  inherited dspPrincipal: TDataSetProvider
    Left = 228
    Top = 168
  end
  inherited cdsPrincipal: TClientDataSet
    Left = 304
    Top = 168
    object cdsPrincipalIDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDVENDEDOR'
      Required = True
    end
    object cdsPrincipalVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Required = True
      Size = 40
    end
    object cdsPrincipalIDCIDADE: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'IDCIDADE'
    end
    object cdsPrincipalCOMISSAOVISTA: TFMTBCDField
      DisplayLabel = '% Com. Vista'
      FieldName = 'COMISSAOVISTA'
      DisplayFormat = '##0.00'
      Precision = 9
      Size = 2
    end
    object cdsPrincipalCOMISSAOPRAZO: TFMTBCDField
      DisplayLabel = '% Com. Prazo'
      FieldName = 'COMISSAOPRAZO'
      DisplayFormat = '##0.00'
      Precision = 9
      Size = 2
    end
    object cdsPrincipalSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 385
    Top = 168
  end
end
