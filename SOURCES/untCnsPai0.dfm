object frmCnsPai0: TfrmCnsPai0
  Left = 0
  Top = 0
  Caption = 'Consulta de Pa'#237'ses'
  ClientHeight = 556
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
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
    TabOrder = 0
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
      Left = 35
      Top = 159
      Width = 84
      Height = 19
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
      Text = 'Pa'#237's'
      Items.Strings = (
        'C'#243'digo'
        'Pa'#237's'
        'Sigla')
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
      Text = 'Pa'#237's'
      Items.Strings = (
        'C'#243'digo'
        'Pa'#237's')
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
    TabOrder = 1
  end
  object pnlFundo: TPanel
    Left = 170
    Top = 0
    Width = 838
    Height = 521
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 836
      Height = 41
      Align = alTop
      Color = 16446693
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 27
        Top = 11
        Width = 111
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
    object dbgPais: TDBGrid
      Left = 1
      Top = 42
      Width = 836
      Height = 478
      Align = alClient
      DataSource = dsPai0
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDPAIS'
          Title.Alignment = taRightJustify
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAIS'
          Title.Caption = 'Pa'#237's'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGLA'
          Title.Caption = 'Sigla'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object sdsPai0: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'    PAI0.IDPAIS,'#13#10'    PAI0.PAIS,'#13#10'    PAI0.SIGLA'#13#10'FROM T' +
      'BLCDSPAI0 PAI0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmDados.cnxEstoque
    Left = 216
    Top = 408
  end
  object dspPai0: TDataSetProvider
    DataSet = sdsPai0
    Left = 288
    Top = 408
  end
  object cdsPai0: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPai0'
    Left = 352
    Top = 408
    object cdsPai0IDPAIS: TIntegerField
      FieldName = 'IDPAIS'
      Required = True
    end
    object cdsPai0PAIS: TStringField
      FieldName = 'PAIS'
      Required = True
      Size = 40
    end
    object cdsPai0SIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 3
    end
  end
  object dsPai0: TDataSource
    AutoEdit = False
    DataSet = cdsPai0
    Left = 426
    Top = 408
  end
end
