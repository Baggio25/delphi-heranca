unit untClassIte0;

interface

uses Classes, untDtmDados, SqlExpr, SysUtils, Dialogs, untDados, untConstantes;

type tItens = class

   IdItem   : Integer;
   NomePro  : String;
   CodBarra : String;
   IdMarca  : Integer;
   IdSecao  : Integer;
   Preco    : Real;
   Status   : String;
   Unidade  : String;

   constructor Create( sCodBarra : String );
   destructor  Destroy;

   private
      sCodLocalizar : String;

      procedure LocateDadosItem;
      procedure AppendValue;

   public

end;


implementation

{ tItens }

procedure tItens.AppendValue;
begin
   IdItem   := 0;
   NomePro  := '';
   CodBarra := '';
   IdMarca  := 0;
   IdSecao  := 0;
   Preco    := 0;
   Status   := '';
   Unidade  := '';
end;

constructor tItens.Create(sCodBarra: String);
begin
   sCodLocalizar := sCodBarra;
   AppendValue;
   LocateDadosItem;
end;

destructor tItens.Destroy;
begin
end;

procedure tItens.LocateDadosItem;
var sCodigo : string;
    qrySel  : TSqlQuery;
begin

   sCodigo := SearchRecordDados('IDITEM', 'TBLCDSITE0', 'WHERE CODBARRA = ' + QuotedStr(sCodLocalizar));
   if sCodigo = '' then begin
      sCodigo := SearchRecordDados('IDITEM', 'TBLCDSITE0', 'WHERE IDITEM = ' + sCodLocalizar);
   end;

   if sCodigo <> '' then begin
      qrySel               := TSqlQuery.Create(nil);
      qrySel.SQLConnection := dtmDados.cnxEstoque;

      with qrySel do begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT IDITEM, NOMEPRO, CODBARRA, IDMARCA, IDSECAO, PRECO, STATUS, UNIDADE');
         Sql.Add('FROM TBLCDSITE0 WHERE IDITEM = ' + sCodigo );
         Open;

         IdItem   := FieldByName('IDITEM').AsInteger;
         NomePro  := FieldByName('NOMEPRO').AsString;
         CodBarra := FieldByName('CODBARRA').AsString;
         IdMarca  := FieldByName('IDMARCA').AsInteger;
         IdSecao  := FieldByName('IDSECAO').AsInteger;
         Preco    := FieldByName('PRECO').AsFloat;
         Status   := FieldByName('STATUS').AsString;
         Unidade  := FieldByName('UNIDADE').AsString;

         Close;
      end;

      qrySel.Close;
      FreeAndNil(qrySel)
   end;

end;



end.
