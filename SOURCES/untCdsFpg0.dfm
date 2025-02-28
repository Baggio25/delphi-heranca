inherited frmCdsFpg0: TfrmCdsFpg0
  Caption = 'frmCdsFpg0'
  ClientWidth = 555
  OnCreate = FormCreate
  ExplicitWidth = 571
  TextHeight = 15
  inherited scrRodape: TScrollBox
    Width = 555
    inherited StatusBar1: TStatusBar
      Width = 555
    end
    inherited pnlToolBarNavigator: TPanel
      Width = 555
      inherited lblAtalho: TLabel
        Left = 483
        Height = 24
      end
      inherited toolBarNavigator: TToolBar
        Width = 483
      end
    end
  end
  inherited pnlFront: TScrollBox
    Width = 441
    ExplicitTop = -6
    ExplicitWidth = 441
    object Label1: TLabel
      Left = 69
      Top = 23
      Width = 52
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = fldIDFORMAPAG
    end
    object Label2: TLabel
      Left = 16
      Top = 55
      Width = 105
      Height = 18
      Caption = 'Forma de Pgto'
      FocusControl = fldFORMPAG
    end
    object fldIDFORMAPAG: TDBEdit
      Left = 127
      Top = 20
      Width = 95
      Height = 26
      DataField = 'IDFORMPAG'
      DataSource = dsPrincipal
      TabOrder = 0
    end
    object fldFORMPAG: TDBEdit
      Left = 127
      Top = 52
      Width = 300
      Height = 26
      CharCase = ecUpperCase
      DataField = 'FORMPAG'
      DataSource = dsPrincipal
      TabOrder = 1
    end
  end
  inherited sdsPrincipal: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'    FPG0.IDFORMPAG,'#13#10'    FPG0.FORMPAG'#13#10'FROM TBLCDSFPG0 F' +
      'PG0'#13#10'WHERE FPG0.IDFORMPAG = :ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  inherited cdsPrincipal: TClientDataSet
    object cdsPrincipalIDFORMPAG: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDFORMPAG'
      Required = True
    end
    object cdsPrincipalFORMPAG: TStringField
      DisplayLabel = 'Forma de Pgto'
      FieldName = 'FORMPAG'
      Required = True
      Size = 40
    end
  end
end
