inherited frmCdsCid0: TfrmCdsCid0
  Caption = 'frmCdsCid0'
  OnCreate = FormCreate
  TextHeight = 15
  inherited pnlFront: TScrollBox
    object Label1: TLabel
      Left = 18
      Top = 16
      Width = 52
      Height = 18
      Alignment = taRightJustify
      Caption = 'C'#243'digo'
      FocusControl = fldIDCIDADE
    end
    object Label2: TLabel
      Left = 18
      Top = 48
      Width = 52
      Height = 18
      Alignment = taRightJustify
      Caption = 'Cidade'
      FocusControl = fldCIDADE
    end
    object Label3: TLabel
      Left = 49
      Top = 80
      Width = 21
      Height = 18
      Alignment = taRightJustify
      Caption = 'UF'
      FocusControl = fldUF
    end
    object Label4: TLabel
      Left = 185
      Top = 80
      Width = 75
      Height = 18
      Caption = 'Popula'#231#227'o'
      FocusControl = fldPOPULACAO
    end
    object Label5: TLabel
      Left = 227
      Top = 112
      Width = 31
      Height = 18
      Alignment = taRightJustify
      Caption = 'Pa'#237's'
      FocusControl = fldIDPAIS
    end
    object Label6: TLabel
      Left = 40
      Top = 112
      Width = 30
      Height = 18
      Caption = 'Ibge'
      FocusControl = fldCODIGOIBGE
    end
    object fldIDCIDADE: TDBEdit
      Left = 74
      Top = 13
      Width = 95
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'IDCIDADE'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 0
    end
    object fldCIDADE: TDBEdit
      Left = 74
      Top = 45
      Width = 300
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CIDADE'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 1
    end
    object fldUF: TDBEdit
      Left = 74
      Top = 77
      Width = 34
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'UF'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 2
    end
    object fldPOPULACAO: TDBEdit
      Left = 264
      Top = 77
      Width = 110
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'POPULACAO'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 3
    end
    object fldIDPAIS: TDBEdit
      Left = 264
      Top = 109
      Width = 110
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'IDPAIS'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 5
    end
    object fldCODIGOIBGE: TDBEdit
      Left = 74
      Top = 109
      Width = 95
      Height = 24
      Ctl3D = False
      DataField = 'CODIGOIBGE'
      DataSource = dsPrincipal
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  inherited sdsPrincipal: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM TBLCDSCID0 CID0'#13#10'WHERE CID0.IDCIDADE = :ID'
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 144
    Top = 184
  end
  inherited dspPrincipal: TDataSetProvider
    Left = 224
    Top = 184
  end
  inherited cdsPrincipal: TClientDataSet
    Left = 304
    Top = 184
    object cdsPrincipalIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCIDADE'
      Required = True
    end
    object cdsPrincipalCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
    object cdsPrincipalUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsPrincipalCODIGOIBGE: TIntegerField
      DisplayLabel = 'Ibge'
      FieldName = 'CODIGOIBGE'
    end
    object cdsPrincipalPOPULACAO: TIntegerField
      DisplayLabel = 'Popula'#231#227'o'
      FieldName = 'POPULACAO'
    end
    object cdsPrincipalIDPAIS: TIntegerField
      DisplayLabel = 'C'#243'd. Pa'#237's'
      FieldName = 'IDPAIS'
      Required = True
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 381
    Top = 184
  end
end
