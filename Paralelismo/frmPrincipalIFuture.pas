unit frmPrincipalIFuture;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation,System.Threading, FMX.Edit, players;

type
  TForm3 = class(TForm)
    btnTeste: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnIFuture: TButton;
    Timer1: TTimer;
    edtPlayer1: TEdit;
    barHPP1: TProgressBar;
    barHPP2: TProgressBar;
    lblAcaoP1: TLabel;
    lblAcaoP2: TLabel;
    lblFimDeJogo: TLabel;
    gbDificuldade: TGroupBox;
    rbFacil: TRadioButton;
    rbMedio: TRadioButton;
    rbDificil: TRadioButton;
    lblP1Escudo: TLabel;
    lblP2Escudo: TLabel;
    lblP1PtsEscudo: TLabel;
    lblP2PtsEscudo: TLabel;
    lblHPP1: TLabel;
    lblHPP2: TLabel;
    procedure btnIFutureClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FPlayer1: TPlayer;
    FPlayer2: TPlayer;
    FDmgP2: IFuture<Single>;
    procedure MostrarResultados(const _APlayer: TPlayer; const _ALabel: TLabel);
    function VerificaStatusCompletos(_APlayerStatus: TTaskStatus): boolean;
    function ifthenDinamico<T>(_Acondicao: Boolean; T1, T2: T): T;
    function VerificaFimDeJogo(_APLayer: TPlayer): boolean;
    function DificuldadeInimigo: Integer;
    function RetornaDMG(_Apos: Integer): Integer;
    function ConfiguraGame: boolean;
    procedure TurnoPlayers(_APlayer: TPlayer);
    procedure AlvoDoAtaque(const _APLayer: TPlayer);
    procedure AjustaLblEscudo(_ALBL: TLabel);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Winapi.Windows, StrUtils;

{$R *.fmx}

function Tform3.RetornaDMG(_Apos: Integer): Integer;
begin
  case _Apos of
    1 : Result := 10;
    2 : Result := 20;
    3 : Result := 50;
  end;
end;

function TForm3.DificuldadeInimigo: Integer;
var i : integer;
begin
    for I := 0 to pred(gbDificuldade.Children.Count) do begin
      if TradioButton(gbDificuldade.Children.Items[i]).IsChecked then begin
        result :=  RetornaDMG(i);
        exit;
      end;
  end;
end;

procedure TForm3.TurnoPlayers(_APlayer: TPlayer);
var
  ADefender: Integer;
begin
  TTask.Run(
    procedure
    begin
      _APlayer.Acao := TTask.Future<TAcao>(
       function : TAcao
       begin
          _APlayer.Speed := (random(3) * 1000);
          Sleep(_APlayer.Speed);
          ADefender := random(5);
          result := ifthendinamico<TAcao>(ADefender > 3, TAcao.Defender, TAcao.Atacar);
          if result = atacar then begin
            if _APlayer = FPlayer1 then
              _APlayer.PontosAcao := Random(30)
            else
            _APlayer.PontosAcao := Random(DificuldadeInimigo).ToSingle;
          end else
            _APlayer.PontosAcao := Random(30);
       end
      );
    end
  )
end;

procedure TForm3.btnIFutureClick(Sender: TObject);
begin
  ConfiguraGame;
  lblFimDeJogo.Text := '';
  edtPlayer1.Enabled := false;
  btnIFuture.Enabled := false;
  gbDificuldade.Enabled := false;
  FPlayer1.Nome := edtPlayer1.Text;
  Timer1.Enabled := true;
  TurnoPlayers(FPlayer1);
  TurnoPlayers(FPlayer2);
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FPlayer1);
  FreeAndNil(FPlayer2);
end;

procedure TForm3.FormShow(Sender: TObject);
begin
   ConfiguraGame;
end;

function TForm3.ifthenDinamico<T>(_Acondicao: Boolean; T1, T2: T): T;
begin
  if _Acondicao then
    result := T1
  else
    result := T2;
end;

procedure TForm3.AjustaLblEscudo(_ALBL: TLabel);
begin
  _ALBL.TextSettings.FontColor :=  TAlphaColorRec.Black;
  _ALBL.TextSettings.Font.Size := 15;
  _ALBL.TextSettings.Font.Style := TFontStyleExt.Create(TFontWeight.Bold);
  Application.ProcessMessages;
end;

procedure TForm3.AlvoDoAtaque(const _APLayer: TPlayer);
var ASobraDMG: Integer;
begin
  if _APlayer = FPlayer1 then begin
    if StrToInt(lblP2PtsEscudo.Text) > 0 then begin
      if (StrToInt(lblP2PtsEscudo.Text) - _APLayer.PontosAcao) < 0 then begin
        barHPP2.Value := ( (barHPP2.Value + StrToInt(lblP2PtsEscudo.Text) ) - _APlayer.PontosAcao);
        lblP2PtsEscudo.Text := '0';
        AjustaLblEscudo(lblP2PtsEscudo);
      end else
        lblP2PtsEscudo.Text := (StrToInt(lblP2PtsEscudo.Text) - _APLayer.PontosAcao).ToString;
    end else
        barHPP2.Value := barHPP2.Value - _APLayer.PontosAcao;
    _APLayer.Hp := barHPP1.Value;
    lblHPP2.Text := barHPP2.Value.ToString;
  end else begin
    if StrToInt(lblP1PtsEscudo.Text) > 0 then begin
      if (StrToInt(lblP1PtsEscudo.Text) - _APLayer.PontosAcao) < 0 then begin
        barHPP1.Value := ( (barHPP1.Value + StrToInt(lblP1PtsEscudo.Text)) - _APlayer.PontosAcao);
        lblP1PtsEscudo.Text := '0';
        AjustaLblEscudo(lblP1PtsEscudo);
      end else
        lblP1PtsEscudo.Text := (StrToInt(lblP1PtsEscudo.Text) - _APLayer.PontosAcao).ToString;
    end else
        barHPP1.Value := barHPP1.Value - _APLayer.PontosAcao;
    _APLayer.Hp := barHPP2.Value;
    lblHPP1.Text := barHPP1.Value.ToString;
  end;
end;

procedure TForm3.MostrarResultados(const _APlayer: TPlayer; const _ALabel: TLabel);
begin
  if VerificaFimDeJogo(_APlayer) then
    exit;
  if(_APlayer.Acao.Status = TTaskStatus.Completed) then begin
    case _APlayer.Acao.Value of
      Atacar: begin
        if _APlayer.PontosAcao = 0 then begin
          _ALabel.Text := concat('O inimigo se esquivou do ataque !');
          exit;
        end;
        _ALabel.Text := concat(_APlayer.Nome,' causou ',_APlayer.PontosAcao.ToString,' de dano');
        AlvoDoAtaque(_APlayer);
      end;
      Defender :
      begin
        _ALabel.Text := concat(_APlayer.Nome, ' usou ', _APlayer.PontosAcao.ToString,' de escudo');
        if _APlayer = FPlayer1 then begin
          lblP1PtsEscudo.Text := (StrToInt(lblP1PtsEscudo.Text) + _APlayer.PontosAcao).ToString;
          AjustaLblEscudo(lblP1PtsEscudo);
        end else begin
          lblP2PtsEscudo.Text := (StrToInt(lblP2PtsEscudo.Text) + _APlayer.PontosAcao).ToString;
          AjustaLblEscudo(lblP2PtsEscudo);
        end;
      end;
    end;
  end else
    _ALabel.Text := concat('...');
end;

function TForm3.VerificaStatusCompletos(_APlayerStatus: TTaskStatus): boolean;
begin
  Result := false;
  if (_APlayerStatus = TTaskStatus.Completed) then
    Result := true;
end;

function TForm3.ConfiguraGame: boolean;
begin
  barHPP1.Value := 100;
  barHPP2.Value := 100;

  FPlayer2 := TPlayer.create;
  FPlayer2.Nome := 'Aldeão';
  lblHPP2.Text := '100';
  FPlayer2.Hp := 100;
  lblP2PtsEscudo.Text := '0';

  FPlayer1 := Tplayer.create;
  FPlayer1.Hp := 100;
  lblHPP1.Text := '100';
  lblP1PtsEscudo.Text := '0';
  btnIFuture.Enabled := true;
  gbDificuldade.Enabled := true;
  Result := true;
end;

function TForm3.VerificaFimDeJogo(_APLayer: TPlayer): boolean;
begin
  result := false;
  if _APLayer.Hp <= 0 then begin
    lblFimDeJogo.Text := ifthen(_APLayer = FPlayer1, 'Você Morreu !', 'Você Sobreviveu desta vez');
    lblFimDeJogo.FontColor := ifthenDinamico<Integer>(_APLayer = FPlayer1, TAlphaColorRec.Red, TAlphaColorRec.Darkgreen);
    Timer1.Enabled := false;
    Result := ConfiguraGame;
  end;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  if VerificaFimDeJogo(FPlayer1) then
    exit;
  if VerificaFimDeJogo(FPlayer2) then
    exit;
  MostrarResultados(FPlayer1, lblAcaoP1);
  MostrarResultados(FPlayer2, lblAcaoP2);
  if VerificaStatusCompletos(FPlayer1.Acao.Status) then
    TurnoPlayers(FPlayer1);
  if VerificaStatusCompletos(FPlayer2.Acao.Status) then
    TurnoPlayers(FPlayer2);
end;

end.
