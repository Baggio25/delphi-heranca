object frmCnsCid0: TfrmCnsCid0
  Left = 0
  Top = 0
  Caption = 'Consulta de Cidades'
  ClientHeight = 441
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 18
  object pnlRodape: TPanel
    Left = 0
    Top = 406
    Width = 784
    Height = 35
    Align = alBottom
    Color = 16446693
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 129
    Height = 406
    Align = alLeft
    Color = 16446693
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object pnlFundo: TPanel
    Left = 129
    Top = 0
    Width = 655
    Height = 406
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 312
    ExplicitTop = 224
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 655
      Height = 41
      Align = alTop
      Color = 16446693
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 232
      ExplicitTop = 184
      ExplicitWidth = 185
      object Label1: TLabel
        Left = 24
        Top = 11
        Width = 114
        Height = 18
        Alignment = taRightJustify
        Caption = 'Texto Pesquisar'
      end
      object btnPesquisar: TButton
        Left = 544
        Top = 9
        Width = 105
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 0
      end
      object edtPesquisa: TEdit
        Left = 144
        Top = 11
        Width = 394
        Height = 24
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object dbgCid: TDBGrid
      Left = 0
      Top = 41
      Width = 655
      Height = 365
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
    end
  end
end
