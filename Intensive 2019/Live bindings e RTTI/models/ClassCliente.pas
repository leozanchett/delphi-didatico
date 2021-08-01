unit ClassCliente;

interface

type
  TCliente = class
    private
      FCodigo: integer;
      FNome: String;
      FEndereco: String;
    public
      property Codigo: integer read FCodigo write FCodigo;
      property Nome: String read FNome write FNome;
      property Endereco: String read FEndereco write FEndereco;
  end;

implementation


end.
