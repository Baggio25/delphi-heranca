inherited frmCdsMar0: TfrmCdsMar0
  Caption = 'frmCdsMar0'
  ClientHeight = 257
  ClientWidth = 500
  OnCreate = FormCreate
  ExplicitWidth = 516
  ExplicitHeight = 296
  TextHeight = 15
  inherited scrRodape: TScrollBox
    Top = 213
    Width = 500
    ExplicitTop = 213
    ExplicitWidth = 500
    inherited StatusBar1: TStatusBar
      Width = 500
      ExplicitWidth = 500
    end
    inherited pnlToolBarNavigator: TPanel
      Width = 500
      ExplicitWidth = 500
      inherited lblAtalho: TLabel
        Left = 428
        Height = 24
        ExplicitLeft = 428
      end
      inherited toolBarNavigator: TToolBar
        Width = 428
        ExplicitWidth = 428
      end
    end
  end
  inherited pnlLeftButtonMetro: TScrollBox
    Height = 213
    ExplicitHeight = 213
    inherited pnlLeftMetro: TPanel
      Height = 213
      ExplicitHeight = 213
    end
  end
  inherited pnlFront: TScrollBox
    Width = 386
    Height = 213
    ExplicitWidth = 386
    ExplicitHeight = 213
    object Label1: TLabel
      Left = 13
      Top = 18
      Width = 52
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = fldIDMARCA
    end
    object Label2: TLabel
      Left = 21
      Top = 50
      Width = 44
      Height = 18
      Caption = 'Marca'
      FocusControl = fldMARCA
    end
    object fldIDMARCA: TDBEdit
      Left = 68
      Top = 15
      Width = 95
      Height = 26
      DataField = 'IDMARCA'
      DataSource = dsPrincipal
      TabOrder = 0
    end
    object fldMARCA: TDBEdit
      Left = 68
      Top = 47
      Width = 300
      Height = 26
      CharCase = ecUpperCase
      DataField = 'MARCA'
      DataSource = dsPrincipal
      TabOrder = 1
    end
  end
  inherited sdsPrincipal: TSQLDataSet
    CommandText = 'SELECT * FROM TBLCDSMAR0 WHERE IDMARCA = :ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  inherited cdsPrincipal: TClientDataSet
    object cdsPrincipalIDMARCA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDMARCA'
      Required = True
    end
    object cdsPrincipalMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Required = True
      Size = 40
    end
  end
end
