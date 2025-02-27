object frmCnsCid0: TfrmCnsCid0
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Cidades'
  ClientHeight = 556
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  TextHeight = 18
  object pnlRodape: TPanel
    Left = 0
    Top = 521
    Width = 1008
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
    ExplicitTop = 406
    ExplicitWidth = 784
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 170
    Height = 521
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
    ExplicitLeft = -6
    ExplicitTop = -6
    object Label2: TLabel
      Left = 5
      Top = 11
      Width = 140
      Height = 18
      Caption = 'Campo a Pesquisar'
    end
    object Label3: TLabel
      Left = 5
      Top = 71
      Width = 122
      Height = 18
      Caption = 'Tipo de Pesquisa'
    end
    object Label4: TLabel
      Left = 5
      Top = 195
      Width = 52
      Height = 18
      Caption = 'Campo'
    end
    object Label5: TLabel
      Left = 5
      Top = 159
      Width = 155
      Height = 19
      Alignment = taCenter
      Caption = 'Ordena'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmbCampoFiltrar: TComboBox
      Left = 5
      Top = 31
      Width = 155
      Height = 26
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 0
      Text = 'Descri'#231#227'o'
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o'
        'UF')
    end
    object cmbTipoPesquisa: TComboBox
      Left = 5
      Top = 91
      Width = 155
      Height = 26
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Qualquer parte'
      Items.Strings = (
        'Iniciais'
        'Qualquer parte'
        'Exata')
    end
    object cmbCampoOrdem: TComboBox
      Left = 5
      Top = 215
      Width = 155
      Height = 26
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 2
      Text = 'Descri'#231#227'o'
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o')
    end
    object rdgOrdem: TRadioGroup
      Left = 5
      Top = 263
      Width = 155
      Height = 105
      Caption = 'Ordem'
      ItemIndex = 0
      Items.Strings = (
        'Crescente'
        'Descrescente')
      TabOrder = 3
    end
  end
  object pnlFundo: TPanel
    Left = 170
    Top = 0
    Width = 838
    Height = 521
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
      Width = 838
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
        TabOrder = 1
        OnClick = btnPesquisarClick
      end
      object edtPesquisa: TEdit
        Left = 144
        Top = 9
        Width = 394
        Height = 24
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object dbgCid: TDBGrid
      Left = 0
      Top = 41
      Width = 838
      Height = 480
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsCid0
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDCIDADE'
          Title.Alignment = taRightJustify
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Width = 352
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGOIBGE'
          Title.Alignment = taRightJustify
          Title.Caption = 'C'#243'd. Ibge'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'POPULACAO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Popula'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDPAIS'
          Title.Alignment = taRightJustify
          Title.Caption = 'Pa'#237's'
          Visible = True
        end>
    end
  end
  object sdsCid0: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'    CID0.IDCIDADE,'#13#10'    CID0.CIDADE,'#13#10'    CID0.UF,'#13#10'    ' +
      'CID0.CODIGOIBGE,'#13#10'    CID0.POPULACAO,'#13#10'    CID0.IDPAIS'#13#10'FROM TBL' +
      'CDSCID0 CID0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmDados.cnxEstoque
    Left = 264
    Top = 336
  end
  object dspCid0: TDataSetProvider
    DataSet = sdsCid0
    Left = 360
    Top = 336
  end
  object cdsCid0: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCid0'
    Left = 461
    Top = 336
    object cdsCid0IDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Required = True
    end
    object cdsCid0CIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
    object cdsCid0UF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsCid0CODIGOIBGE: TIntegerField
      FieldName = 'CODIGOIBGE'
    end
    object cdsCid0POPULACAO: TIntegerField
      FieldName = 'POPULACAO'
    end
    object cdsCid0IDPAIS: TIntegerField
      FieldName = 'IDPAIS'
      Required = True
    end
  end
  object dsCid0: TDataSource
    AutoEdit = False
    DataSet = cdsCid0
    Left = 549
    Top = 336
  end
end
