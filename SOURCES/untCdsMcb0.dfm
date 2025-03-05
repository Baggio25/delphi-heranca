inherited frmCdsMcb0: TfrmCdsMcb0
  Caption = 'frmCdsMcb0'
  ClientHeight = 255
  ClientWidth = 570
  OnCreate = FormCreate
  ExplicitWidth = 586
  ExplicitHeight = 294
  TextHeight = 15
  inherited scrRodape: TScrollBox
    Top = 211
    Width = 570
    ExplicitTop = 211
    ExplicitWidth = 570
    inherited StatusBar1: TStatusBar
      Width = 570
      ExplicitWidth = 570
    end
    inherited pnlToolBarNavigator: TPanel
      Width = 570
      ExplicitWidth = 570
      inherited lblAtalho: TLabel
        Left = 498
        ExplicitLeft = 498
      end
      inherited toolBarNavigator: TToolBar
        Width = 498
        ExplicitWidth = 498
      end
    end
  end
  inherited pnlLeftButtonMetro: TScrollBox
    Height = 211
    ExplicitHeight = 211
    inherited pnlLeftMetro: TPanel
      Height = 211
      ExplicitHeight = 211
      inherited btnMetroProcurar: TMetroTile
        OnClick = btnMetroProcurarClick
      end
    end
  end
  inherited pnlFront: TScrollBox
    Width = 456
    Height = 211
    ExplicitWidth = 456
    ExplicitHeight = 211
    object Label1: TLabel
      Left = 84
      Top = 16
      Width = 52
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = fldIDMEIOCOB
    end
    object Label2: TLabel
      Left = 6
      Top = 45
      Width = 130
      Height = 18
      Caption = 'Meio de Cobran'#231'a'
      FocusControl = fldMEIOCOB
    end
    object fldIDMEIOCOB: TDBEdit
      Left = 142
      Top = 13
      Width = 95
      Height = 26
      DataField = 'IDMEIOCOB'
      DataSource = dsPrincipal
      TabOrder = 0
    end
    object fldMEIOCOB: TDBEdit
      Left = 142
      Top = 45
      Width = 300
      Height = 26
      CharCase = ecUpperCase
      DataField = 'MEIOCOB'
      DataSource = dsPrincipal
      TabOrder = 1
    end
  end
  inherited sdsPrincipal: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'    MCB0.IDMEIOCOB,'#13#10'    MCB0.MEIOCOB'#13#10'FROM TBLCDSMCB0 M' +
      'CB0'#13#10'WHERE MCB0.IDMEIOCOB = :ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  inherited cdsPrincipal: TClientDataSet
    object cdsPrincipalIDMEIOCOB: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDMEIOCOB'
      Required = True
    end
    object cdsPrincipalMEIOCOB: TStringField
      DisplayLabel = 'Meio de Cobran'#231'a'
      FieldName = 'MEIOCOB'
      Required = True
      Size = 40
    end
  end
end
