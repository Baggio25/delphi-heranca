object frmCnsUsr0: TfrmCnsUsr0
  Left = 0
  Top = 0
  Caption = 'Consulta de Usu'#225'rios'
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
      Left = 39
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
      Text = 'Usu'#225'rio'
      Items.Strings = (
        'C'#243'digo'
        'Usu'#225'rio'
        'Login')
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
      Text = 'Usu'#225'rio'
      Items.Strings = (
        'C'#243'digo'
        'Usu'#225'rio'
        'Login')
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
      DataSource = dsUsr0
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = dbgPaisDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'IDUSUARIO'
          Title.Alignment = taRightJustify
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Caption = 'Usu'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGIN'
          Title.Caption = 'Login'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'ADM'
          Visible = True
        end>
    end
  end
  object sdsUsr0: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'    USR0.ADM,'#13#10'    USR0.IDUSUARIO,'#13#10'    USR0.USUARIO,'#13#10' ' +
      '   USR0.LOGIN,'#13#10'    USR0.STATUS'#13#10'FROM TBLCDSUSR0 USR0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmDados.cnxEstoque
    Left = 216
    Top = 408
  end
  object dspUsr0: TDataSetProvider
    DataSet = sdsUsr0
    Left = 288
    Top = 408
  end
  object cdsUsr0: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsr0'
    Left = 352
    Top = 408
    object cdsUsr0ADM: TSmallintField
      FieldName = 'ADM'
    end
    object cdsUsr0IDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Required = True
    end
    object cdsUsr0USUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 40
    end
    object cdsUsr0LOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object cdsUsr0STATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dsUsr0: TDataSource
    AutoEdit = False
    DataSet = cdsUsr0
    Left = 426
    Top = 408
  end
end
