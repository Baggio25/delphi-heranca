inherited frmCdsIte0: TfrmCdsIte0
  Caption = 'frmCdsIte0'
  ClientHeight = 264
  ClientWidth = 530
  OnCreate = FormCreate
  ExplicitWidth = 546
  ExplicitHeight = 303
  TextHeight = 15
  inherited scrRodape: TScrollBox
    Top = 220
    Width = 530
    ExplicitTop = 220
    ExplicitWidth = 530
    inherited StatusBar1: TStatusBar
      Width = 530
      ExplicitWidth = 530
    end
    inherited pnlToolBarNavigator: TPanel
      Width = 530
      ExplicitWidth = 530
      inherited lblAtalho: TLabel
        Left = 458
        ExplicitLeft = 458
      end
      inherited toolBarNavigator: TToolBar
        Width = 458
        ExplicitWidth = 458
      end
    end
  end
  inherited pnlLeftButtonMetro: TScrollBox
    Height = 220
    ExplicitHeight = 220
    inherited pnlLeftMetro: TPanel
      Height = 220
      ExplicitHeight = 220
    end
  end
  inherited pnlFront: TScrollBox
    Width = 416
    Height = 220
    ExplicitWidth = 416
    ExplicitHeight = 220
    object Label1: TLabel
      Left = 46
      Top = 21
      Width = 52
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = fldIDITEM
    end
    object Label2: TLabel
      Left = 43
      Top = 53
      Width = 55
      Height = 18
      Caption = 'Produto'
      FocusControl = fldNOMEPRO
    end
    object Label3: TLabel
      Left = 13
      Top = 84
      Width = 85
      Height = 18
      Caption = 'C'#243'd. Barras'
      FocusControl = fldCODBARRA
    end
    object Label4: TLabel
      Left = 54
      Top = 116
      Width = 44
      Height = 18
      Caption = 'Marca'
      FocusControl = fldIDMARCA
    end
    object Label5: TLabel
      Left = 49
      Top = 148
      Width = 46
      Height = 18
      Caption = 'Se'#231#227'o'
      FocusControl = fldIDSECAO
    end
    object Label6: TLabel
      Left = 56
      Top = 179
      Width = 42
      Height = 18
      Caption = 'Pre'#231'o'
      FocusControl = fldPRECO
    end
    object btnIDMarca: TSpeedButton
      Left = 152
      Top = 112
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
      OnClick = btnIDMarcaClick
    end
    object btnIDSecao: TSpeedButton
      Left = 152
      Top = 144
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
      OnClick = btnIDSecaoClick
    end
    object fldIDITEM: TDBEdit
      Left = 101
      Top = 17
      Width = 95
      Height = 26
      DataField = 'IDITEM'
      DataSource = dsPrincipal
      TabOrder = 0
    end
    object fldNOMEPRO: TDBEdit
      Left = 101
      Top = 49
      Width = 300
      Height = 26
      CharCase = ecUpperCase
      DataField = 'NOMEPRO'
      DataSource = dsPrincipal
      TabOrder = 1
    end
    object fldCODBARRA: TDBEdit
      Left = 101
      Top = 81
      Width = 300
      Height = 26
      CharCase = ecUpperCase
      DataField = 'CODBARRA'
      DataSource = dsPrincipal
      TabOrder = 2
    end
    object fldIDMARCA: TDBEdit
      Left = 101
      Top = 113
      Width = 48
      Height = 26
      CharCase = ecUpperCase
      DataField = 'IDMARCA'
      DataSource = dsPrincipal
      TabOrder = 3
      OnChange = fldIDMARCAChange
    end
    object fldIDSECAO: TDBEdit
      Left = 101
      Top = 145
      Width = 48
      Height = 26
      CharCase = ecUpperCase
      DataField = 'IDSECAO'
      DataSource = dsPrincipal
      TabOrder = 4
      OnChange = fldIDSECAOChange
    end
    object fldPRECO: TDBEdit
      Left = 101
      Top = 176
      Width = 95
      Height = 26
      CharCase = ecUpperCase
      DataField = 'PRECO'
      DataSource = dsPrincipal
      TabOrder = 5
    end
    object chbStatus: TDBCheckBox
      Left = 345
      Top = 22
      Width = 56
      Height = 17
      Caption = 'Ativo'
      DataField = 'STATUS'
      DataSource = dsPrincipal
      TabOrder = 6
      ValueChecked = 'A'
      ValueUnchecked = 'I'
    end
    object lblIDMARCA: TEdit
      Left = 184
      Top = 113
      Width = 217
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
      TabOrder = 7
    end
    object lblIDSECAO: TEdit
      Left = 184
      Top = 145
      Width = 217
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
      TabOrder = 8
    end
  end
  inherited sdsPrincipal: TSQLDataSet
    CommandText = 'SELECT * FROM TBLCDSITE0 WHERE IDITEM = :ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 232
    Top = 208
  end
  inherited dspPrincipal: TDataSetProvider
    Left = 312
    Top = 208
  end
  inherited cdsPrincipal: TClientDataSet
    Left = 392
    Top = 208
    object cdsPrincipalIDITEM: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDITEM'
      Required = True
    end
    object cdsPrincipalNOMEPRO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOMEPRO'
      Required = True
      Size = 40
    end
    object cdsPrincipalCODBARRA: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'CODBARRA'
    end
    object cdsPrincipalIDMARCA: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'IDMARCA'
    end
    object cdsPrincipalIDSECAO: TIntegerField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'IDSECAO'
    end
    object cdsPrincipalPRECO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRECO'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 2
    end
    object cdsPrincipalSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 473
    Top = 208
  end
end
