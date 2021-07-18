unit uARMObjects;

interface

uses
  System.Generics.Collections, SysUtils;

type
  TCustomObject = class(TObject)
  public
    ID: Integer;
    Name: string;
  end;

  TReference = class(TCustomObject)
  public
    DateAdded: TDateTime;
    constructor Create;
  end;

  TReferenceItems = class(TObject)
  private
    FReferenceDict: TObjectDictionary<Integer, TReference>;

  public
    procedure AddReference(aReference: TReference);
    procedure Clear;
    constructor Create;
    destructor Destroy; override;
    property ReferenceDict: TObjectDictionary<Integer, TReference> read FReferenceDict;
  end;

  TPeople = class(TCustomObject)
  public
    DateBirthDay: TDateTime;
    Surname: string;
    ThirdName: string;
    DateAdded: TDateTime;
    constructor Create;
  end;

  TPeopleItems = class(TObject)
  private
    FPeopleDict: TObjectDictionary<Integer, TPeople>;
  public
    procedure AddPeople(aPeople: TPeople);
    procedure Clear;
    constructor Create;
    destructor Destroy; override;
    property PeopleDict: TObjectDictionary<Integer, TPeople> read FPeopleDict;
  end;

implementation

{ TPeople }

constructor TPeople.Create;
begin
  ID := -1;
  Name := '';
  DateBirthDay := 0;
  Surname := '';
  ThirdName := '';
  DateAdded := 0;
end;

{ TReference }

constructor TReference.Create;
begin
  ID := -1;
  Name := '';
  DateAdded := 0;
end;

{ TReferenceItems }

procedure TReferenceItems.AddReference(aReference: TReference);
begin
  if not FReferenceDict.ContainsKey(aReference.ID) then
    FReferenceDict.Add(aReference.ID, aReference);
end;

procedure TReferenceItems.Clear;
begin
  FReferenceDict.Clear;
end;

constructor TReferenceItems.Create;
begin
  FReferenceDict := TObjectDictionary<Integer, TReference>.Create([doOwnsValues]);
end;

destructor TReferenceItems.Destroy;
begin
  FreeAndNil(FReferenceDict);
  inherited;
end;

{ TPeopleItems }

procedure TPeopleItems.AddPeople(aPeople: TPeople);
begin
  if not FPeopleDict.ContainsKey(aPeople.ID) then
    FPeopleDict.Add(aPeople.ID, aPeople);
end;

procedure TPeopleItems.Clear;
begin
  FPeopleDict.Clear;
end;

constructor TPeopleItems.Create;
begin
  FPeopleDict := TObjectDictionary<Integer, TPeople>.Create([doOwnsValues]);
end;

destructor TPeopleItems.Destroy;
begin
  FreeAndNil(FPeopleDict);
  inherited;
end;

end.
