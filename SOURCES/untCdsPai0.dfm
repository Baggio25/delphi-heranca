inherited frmCdsPai0: TfrmCdsPai0
  Caption = 'FrmCdsPai0'
  ClientHeight = 255
  ClientWidth = 504
  OnCreate = FormCreate
  ExplicitWidth = 520
  ExplicitHeight = 294
  TextHeight = 15
  inherited scrRodape: TScrollBox
    Top = 211
    Width = 504
    ExplicitTop = 211
    ExplicitWidth = 504
    inherited StatusBar1: TStatusBar
      Width = 504
      ExplicitWidth = 504
    end
    inherited pnlToolBarNavigator: TPanel
      Width = 504
      ExplicitWidth = 504
      inherited lblAtalho: TLabel
        Left = 432
        ExplicitLeft = 432
      end
      inherited toolBarNavigator: TToolBar
        Width = 432
        ExplicitWidth = 432
      end
    end
  end
  inherited pnlLeftButtonMetro: TScrollBox
    Height = 211
    ExplicitHeight = 211
    inherited pnlLeftMetro: TPanel
      Height = 211
      ExplicitHeight = 211
    end
  end
  inherited pnlFront: TScrollBox
    Width = 390
    Height = 211
    ExplicitWidth = 390
    ExplicitHeight = 211
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 52
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = fldIDPAIS
    end
    object Label2: TLabel
      Left = 37
      Top = 45
      Width = 31
      Height = 18
      Caption = 'Pa'#237's'
      FocusControl = fldPAIS
    end
    object Label3: TLabel
      Left = 32
      Top = 74
      Width = 36
      Height = 18
      Caption = 'Sigla'
      FocusControl = fldSIGLA
    end
    object fldIDPAIS: TDBEdit
      Left = 72
      Top = 13
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'IDPAIS'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 0
    end
    object fldPAIS: TDBEdit
      Left = 72
      Top = 42
      Width = 300
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PAIS'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 1
    end
    object fldSIGLA: TDBEdit
      Left = 72
      Top = 71
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'SIGLA'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  inherited sdsPrincipal: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'    PAI0.IDPAIS,'#13#10'    PAI0.PAIS,'#13#10'    PAI0.SIGLA'#13#10'FROM T' +
      'BLCDSPAI0 PAI0'#13#10'WHERE PAI0.IDPAIS = :ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 144
    Top = 156
  end
  inherited dspPrincipal: TDataSetProvider
    Left = 224
    Top = 156
  end
  inherited cdsPrincipal: TClientDataSet
    Left = 304
    Top = 156
    object cdsPrincipalIDPAIS: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPAIS'
      Required = True
    end
    object cdsPrincipalPAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'PAIS'
      Required = True
      Size = 40
    end
    object cdsPrincipalSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Size = 3
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 377
    Top = 156
  end
end
