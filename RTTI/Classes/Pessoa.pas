unit Pessoa;

interface

uses
  RttiUteis;

type
  TPessoa = class
    private
    FIdade: Integer;
    FNome: String;
    FEndereco: String;
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetEndereco(const Value: String);
    public
      constructor Create;
      // TIpo do componente, Name , width
      [Form(tcEdit, 'Nome', 350)]
      [NotNull('O nome não pode ser nulo')]
      [MininoLength(5,'O nome não pode ser menor que 5 caracteres')]
      property Nome: String read FNome write SetNome;
      [Form(tcEdit, 'Idade', 350)]
      property Idade: Integer read FIdade write SetIdade;
      [NotNull('O endereço não pode ser nulo')]
      [MininoLength(3,'O endereço não pode ser menor que 3 caracteres')]
      [Form(tcMemo, 'Endereço', 350)]
      property Endereco: String read FEndereco write SetEndereco;
  end;

implementation

constructor TPessoa.Create;
begin
   FNome := 'AULA 01';
   FIdade := 29;
   FEndereco := 'Rua Delphi';
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
