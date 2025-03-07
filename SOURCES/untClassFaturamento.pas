unit untClassFaturamento;

interface

uses Classes, untDtmDados, SqlExpr, SysUtils, Dialogs;

type

   tpStatusFat  = ( tpSNone, tpSInsert, tpSEdit, tpSDelete );

   tFaturamento = class ( tComponent )

      private
         FStatusFat: tpStatusFat;
         FSerie: String;
         FNota: Integer;
         FVlrTotal: Real;
         FIdCliente: Integer;
         FDtEmissao: TDate;
         FIdFatEnt: Integer;
         procedure SetStatusFat(const Value: tpStatusFat);
         procedure AppendValue;
         procedure SetNota(const Value: Integer);
         procedure SetSerie(const Value: String);
         procedure SetDtEmissao(const Value: TDate);
         procedure SetIdCliente(const Value: Integer);
         procedure SetVlrTotal(const Value: Real);
    procedure SetIdFatEnt(const Value: Integer);
      public
         property StatusFat : tpStatusFat read FStatusFat write SetStatusFat;
         property Serie     : String read FSerie write SetSerie;
         property Nota      : Integer read FNota write SetNota;
         property IdCliente : Integer read FIdCliente write SetIdCliente;
         property DtEmissao : TDate read FDtEmissao write SetDtEmissao;
         property VlrTotal  : Real read FVlrTotal write SetVlrTotal;
         property IdFatEnt  : Integer read FIdFatEnt write SetIdFatEnt;

         procedure ZeraClasse;
         procedure LoadFields;
         procedure GravaDados;
         function LocateFaturamento : Boolean;

         constructor Create( Aowner : tComponent ); Override;
         destructor  Destroy; override;

   end;

implementation

{ tFaturamento }

procedure tFaturamento.AppendValue;
begin
   FStatusFat := tpSNone;
   FSerie     := '';
   FNota      := 0;
   FIdCliente := 0;
   FDtEmissao := Date;
   FVlrTotal  := 0;
   FIdFatEnt  := 0;
end;

constructor tFaturamento.Create(Aowner: tComponent);
begin
   inherited;
   AppendValue;
end;

destructor tFaturamento.Destroy;
begin

  inherited;
end;

procedure tFaturamento.GravaDados;
var qryFat : TSQLQuery;
begin

   qryFat               := TSQLQuery.Create(Self);
   qryFat.SQLConnection := dtmDados.cnxEstoque;

   with qryFat do begin
      Sql.Clear;
      Sql.Add('INSERT INTO TBLMVMFAT0 ( SERIE, NOTA, DTEMISSAO, IDCLIENTE, VLRTOTAL )');
      Sql.Add('VALUES ( :SERIE, :NOTA, :DTEMISSAO, :IDCLIENTE, :VLRTOTAL )');

      ParamByName('SERIE').AsString          := FSerie;
      ParamByName('NOTA').AsInteger          := FNota;
      ParamByName('IDCLIENTE').AsInteger     := FIdCliente;
      ParamByName('DTEMISSAO').AsDateTime    := FDtEmissao;
      ParamByName('VLRTOTAL').AsFloat        := FVlrTotal;

      ExecSQL();
   end;

end;

procedure tFaturamento.LoadFields;
var qryFat  : TSQLQuery;
begin
   qryFat               := TSQLQuery.Create(Self);
   qryFat.SQLConnection := dtmDados.cnxEstoque;

   with qryFat do begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TBLMVMFAT0 WHERE IDFATENT = ' + IntToStr(FIdFatEnt));
      Open;

      FSerie      := FieldByName('SERIE').AsString;
      FNota       := FieldByName('NOTA').AsInteger;
      FIdCliente  := FieldByName('IDCLIENTE').AsInteger;
      FDtEmissao  := FieldByName('DTEMISSAO').AsDateTime;
      FVlrTotal   := FieldByName('VLRTOTAL').AsFloat;
      Close;
   end;

   FreeAndNil(qryFat);
end;

function tFaturamento.LocateFaturamento: Boolean;
var qryFat  : TSQLQuery;
    bResult : Boolean;
begin
   bResult              := False;
   qryFat               := TSQLQuery.Create(Self);
   qryFat.SQLConnection := dtmDados.cnxEstoque;

   with qryFat do begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT IDFATENT FROM TBLMVMFAT0 WHERE SERIE = :SERIE');
      Sql.Add('AND NOTA = :NOTA');
      ParamByName('SERIE').AsString := FSerie;
      ParamByName('NOTA').AsInteger := FNota;
      Open;

      FIdFatEnt := FieldByName('IDFATENT').AsInteger;

      if IsEmpty then begin
         if FStatusFat = tpSInsert then begin
            bResult := True;
         end else begin
            bResult := False;
            ShowMessage('Nota fiscal não econtrada');
         end;
      end else begin
         if FStatusFat = tpSInsert then begin
            bResult := False;
            ShowMessage('Nota fiscal já lançada');
         end else begin
            bResult := True;
            LoadFields;
         end;
      end;

      Close;
   end;

   FreeAndNil(qryFat);
   Result := bResult;
end;

procedure tFaturamento.SetDtEmissao(const Value: TDate);
begin
  FDtEmissao := Value;
end;

procedure tFaturamento.SetIdCliente(const Value: Integer);
begin
  FIdCliente := Value;
end;

procedure tFaturamento.SetIdFatEnt(const Value: Integer);
begin
  FIdFatEnt := Value;
end;

procedure tFaturamento.SetNota(const Value: Integer);
begin
  FNota := Value;
end;

procedure tFaturamento.SetSerie(const Value: String);
begin
  FSerie := Value;
end;

procedure tFaturamento.SetStatusFat(const Value: tpStatusFat);
begin
  FStatusFat := Value;
end;

procedure tFaturamento.SetVlrTotal(const Value: Real);
begin
  FVlrTotal := Value;
end;

procedure tFaturamento.ZeraClasse;
begin
   AppendValue;
end;

end.
