inherited frmCdsPre0: TfrmCdsPre0
  Caption = 'frmCdsPre0'
  ClientHeight = 260
  ClientWidth = 550
  OnCreate = FormCreate
  ExplicitWidth = 566
  ExplicitHeight = 299
  TextHeight = 15
  inherited scrRodape: TScrollBox
    Top = 216
    Width = 550
    ExplicitTop = 216
    ExplicitWidth = 550
    inherited StatusBar1: TStatusBar
      Width = 550
      ExplicitWidth = 550
    end
    inherited pnlToolBarNavigator: TPanel
      Width = 550
      ExplicitWidth = 550
      inherited lblAtalho: TLabel
        Left = 478
        Height = 24
        ExplicitLeft = 478
      end
      inherited toolBarNavigator: TToolBar
        Width = 478
        ExplicitWidth = 478
      end
    end
  end
  inherited pnlLeftButtonMetro: TScrollBox
    Height = 216
    ExplicitHeight = 216
    inherited pnlLeftMetro: TPanel
      Height = 216
      ExplicitHeight = 216
      inherited btnMetroProcurar: TMetroTile
        OnClick = btnMetroProcurarClick
      end
    end
  end
  inherited pnlFront: TScrollBox
    Width = 436
    Height = 216
    ExplicitTop = 0
    ExplicitWidth = 436
    ExplicitHeight = 216
    object Label1: TLabel
      Left = 68
      Top = 20
      Width = 52
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = fldIDTABPRECO
    end
    object Label2: TLabel
      Left = 9
      Top = 52
      Width = 114
      Height = 18
      Caption = 'Tabela de Pre'#231'o'
      FocusControl = fldTABPRECO
    end
    object fldIDTABPRECO: TDBEdit
      Left = 126
      Top = 17
      Width = 95
      Height = 26
      DataField = 'IDTABPRECO'
      DataSource = dsPrincipal
      TabOrder = 0
    end
    object fldTABPRECO: TDBEdit
      Left = 126
      Top = 49
      Width = 300
      Height = 26
      CharCase = ecUpperCase
      DataField = 'TABPRECO'
      DataSource = dsPrincipal
      TabOrder = 1
    end
  end
  inherited imgNavigator: TImageList
    Left = 596
  end
  inherited sdsPrincipal: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'    PRE0.IDTABPRECO,'#13#10'    PRE0.TABPRECO'#13#10'FROM TBLCDSPRE0' +
      ' PRE0'#13#10'WHERE PRE0.IDTABPRECO = :ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 144
    Top = 176
  end
  inherited dspPrincipal: TDataSetProvider
    Left = 224
    Top = 176
  end
  inherited cdsPrincipal: TClientDataSet
    Left = 304
    Top = 176
    object cdsPrincipalIDTABPRECO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDTABPRECO'
      Required = True
    end
    object cdsPrincipalTABPRECO: TStringField
      DisplayLabel = 'Tabela de Pre'#231'o'
      FieldName = 'TABPRECO'
      Required = True
      Size = 40
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 377
  end
end
