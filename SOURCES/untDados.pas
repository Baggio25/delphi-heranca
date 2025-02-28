unit untDados;

interface

uses Forms, Windows, SqlExpr, untDtmDados, SysUtils;

const
  WC_MB_MSGYES = 1;
  WC_MB_MSGNO  = 2;

  function MsgYesNo(sTexto : string; sCabecalho:string='Pergunta'; iBotaoDefault: Integer = WC_MB_MSGYES):boolean;
  function SearchRecordDados(sCampo, sTabela, sCondicao: String): String;


implementation

function MsgYesNo(sTexto : string;sCabecalho:string='Pergunta'; iBotaoDefault: Integer = WC_MB_MSGYES):boolean;
var
  msg : string;
begin

   if sCabecalho = '' then begin
      msg := 'Confirmação';
   end else begin
      msg := sCabecalho;
   end;

   if ( iBotaoDefault = WC_MB_MSGYES ) then begin
      Result := Application.MessageBox(pchar(sTexto), pchar(sCabecalho), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = IDYES;
   end else begin
      Result := Application.MessageBox(pchar(sTexto), pchar(sCabecalho), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES;
   end;

end;

function SearchRecordDados(sCampo, sTabela, sCondicao: String): String;
var qrySel : tSqlQuery;
begin

  qrySel               := TSQLQuery.Create(nil);
  qrySel.SQLConnection := dtmDados.cnxEstoque;

  with qrySel do begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT ' + sCampo + ' FROM ' + sTabela);

    if (sCondicao <> '') then Sql.Add(' ' + sCondicao);

    Open;
    Result := Fields[0].AsString;
    Close;
  end;

  qrySel.close;
  FreeAndNil(qrySel);
end;
end.
