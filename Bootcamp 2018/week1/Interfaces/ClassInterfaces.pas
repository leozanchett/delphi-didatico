unit ClassInterfaces;

interface

type
  IWalker = interface
    ['{AC816BE3-1152-413B-81F3-3908F7D9E225}']
    function Walk: string;
    function Run: string;
    procedure SetPos(_AValue: integer);
    function GetPos: Integer;
    property Position: integer read GetPos write SetPos;
  end;

  IJumper = interface
    ['{E6993166-45D9-4F6E-9B60-7FA9C9667FBD}']
    function Jump: string;
    function Walk: string;
    procedure SetPos(_AValue: integer);
    function GetPos: integer;
    property Position: integer read GetPos write SetPos;
  end;

  TRunner = class (TInterfacedObject, IWalker)
    private
      FPos: integer;
    public
      function Walk: string;
      function Run: string;
      procedure SetPos(_AValue: integer);
      function GetPos: Integer;
  end;

  TJumper = class (TInterfacedObject, IJumper)
    private
      FPos: Integer;
    public
      function Walk: string;
      function Jump: string;
      procedure SetPos(_AValue: integer);
      function GetPos: Integer;
  end;


  TMyJumper = class (TInterfacedObject, IJumper)
    private
      FJumper: TJumper;
    public
      constructor Create;
      destructor Destroy; override;
      property Jumper: TJumper read FJumper implements IJumper;
  end;

  TAthelete = class (TInterfacedObject, IWalker, IJumper)
    private
      FJumpImpl : TJumper;
    public
      constructor Create;
      destructor Destroy; override;
      function Run: String; virtual;
      function Walk1: String; virtual;
      function IWalker.walk = Walk1;
      procedure SetPos(_AValue: Integer);
      function GetPos: Integer;
      property Jumper: TJumper read FJumpImpl implements IJumper;
    end;

implementation


{ TRunner }

function TRunner.GetPos: Integer;
begin
   Result := FPos;
end;

function TRunner.Run: string;
begin
  Inc(FPos, 2);
end;

procedure TRunner.SetPos(_AValue: integer);
begin
  FPos := _AValue;
end;

function TRunner.Walk: string;
begin
   Inc(FPos);
end;

{ TJumper }

function TJumper.GetPos: Integer;
begin
   Result := FPos;
end;

function TJumper.Jump: string;
begin
   Inc(FPos, 3);
end;

procedure TJumper.SetPos(_AValue: integer);
begin
    FPos := _AValue;
end;

function TJumper.Walk: string;
begin
   Inc(FPos);
end;

end.
