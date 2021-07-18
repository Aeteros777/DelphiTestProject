unit ARMStatist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FrameFindPeople,
  Vcl.Grids, Vcl.StdCtrls, Vcl.ComCtrls, uARMObjects, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters, cxInplaceContainer,
  cxTextEdit, Data.DB, OracleData;

type
  TfrmStatist = class(TForm)
    frameFind: TframeFind;
    pnlMain: TPanel;
    pnlFind: TPanel;
    pnlSearchPeople: TPanel;
    lblSearchDate: TLabel;
    pnlSearchByDate: TPanel;
    lblPeriodDate: TLabel;
    lblWithPeriodDate: TLabel;
    dtpBegin: TDateTimePicker;
    dtpEnd: TDateTimePicker;
    chkPeriodDate: TCheckBox;
    pnlSearchBirthday: TPanel;
    lblSearchBirthday: TLabel;
    lblWithBirth: TLabel;
    dtpBeginBirth: TDateTimePicker;
    dtpEndBirth: TDateTimePicker;
    chkBirth: TCheckBox;
    pnlSearchButton: TPanel;
    btnSearchPeople: TButton;
    cxPeopleTreeList: TcxTreeList;
    cxFamiliaPeopleTLColumn: TcxTreeListColumn;
    cxNamePeopleTLColumn: TcxTreeListColumn;
    cxThirdNamePeopleTLColumn: TcxTreeListColumn;
    cxDateBirthPeopleTLColumn: TcxTreeListColumn;
    cxDateAddedPeopleTLColumn: TcxTreeListColumn;
    splPeoplegrid: TSplitter;
    lblCaptiondoc: TLabel;
    cxReferenceTreeList: TcxTreeList;
    cxNameReferenceTLColumn: TcxTreeListColumn;
    cxDateAddedReferenceTLColumn: TcxTreeListColumn;
    GetPeopleByDateOracleDataSet: TOracleDataSet;
    GetPeopleReferencesOracleDataSet: TOracleDataSet;
    GetPeopleByBirthOracleDataSet: TOracleDataSet;
    GetPeopleAllDateOracleDataSet: TOracleDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchPeopleClick(Sender: TObject);
    procedure chkPeriodDateClick(Sender: TObject);
    procedure chkBirthClick(Sender: TObject);
    procedure cxPeopleTreeListCanSelectNode(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; var Allow: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    PeopleItems: TPeopleItems;
    PeopleReferences: TReferenceItems;
    procedure DrawReferencePeopleTreeList(aIDPeople: Integer);
    procedure DrawPeopleTreeList;
    procedure SearchClickEvent(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmStatist: TfrmStatist;

implementation

uses
  MainForm;

{$R *.dfm}

procedure TfrmStatist.btnSearchPeopleClick(Sender: TObject);
var
  People: TPeople;
  DateBegin, DateEnd, DateBeginBirth, DateEndBirth: TDateTime;
begin
  if chkPeriodDate.Checked and chkBirth.Checked then
  begin
    if (dtpBegin.DateTime <= Now) or (dtpEnd.DateTime <= Now) or (dtpBeginBirth.DateTime <= Now) or (dtpEndBirth.DateTime <= Now) then // фильтр по обеим периодам
    begin
      GetPeopleAllDateOracleDataSet.Active := False;
      DateBegin := dtpBegin.DateTime;
      DateEnd := dtpEnd.DateTime;
      DateBeginBirth := dtpBeginBirth.DateTime;
      DateEndBirth := dtpEndBirth.DateTime;
      GetPeopleAllDateOracleDataSet.SetVariable('DATE_BEGIN', DateBegin);
      GetPeopleAllDateOracleDataSet.SetVariable('DATE_END', DateEnd);
      GetPeopleAllDateOracleDataSet.SetVariable('DATE_BEGIN_BIRTH', DateBeginBirth);
      GetPeopleAllDateOracleDataSet.SetVariable('DATE_END_BIRTH', DateEndBirth);
      GetPeopleAllDateOracleDataSet.Active := True;
      try
        if Assigned(GetPeopleAllDateOracleDataSet) then
        begin
          PeopleItems.Clear;
          while not GetPeopleAllDateOracleDataSet.Eof do
          begin
            People := TPeople.Create;
            People.ID := GetPeopleAllDateOracleDataSet.FieldByName('id_people').AsInteger;
            People.Surname := GetPeopleAllDateOracleDataSet.FieldByName('surname_people').AsString;
            People.Name := GetPeopleAllDateOracleDataSet.FieldByName('name_people').AsString;
            People.ThirdName := GetPeopleAllDateOracleDataSet.FieldByName('third_name_people').AsString;
            People.DateBirthDay := GetPeopleAllDateOracleDataSet.FieldByName('date_birth_people').AsDateTime;
            People.DateAdded := GetPeopleAllDateOracleDataSet.FieldByName('date_added_people').AsDateTime;
            PeopleItems.AddPeople(People);
            GetPeopleAllDateOracleDataSet.Next;
          end;
        end;
      finally
        GetPeopleAllDateOracleDataSet.Active := False;
      end;
      DrawPeopleTreeList;
    end
    else
      ShowMessage('Даты не должны быть больше текущей даты!');
  end
  else if chkPeriodDate.Checked and not chkBirth.Checked then // фильтр по периоду занесения
  begin
    if (dtpBegin.DateTime <= Now) or (dtpEnd.DateTime <= Now) then
    begin
      GetPeopleByDateOracleDataSet.Active := False;
      DateBegin := dtpBegin.DateTime;
      DateEnd := dtpEnd.DateTime;
      GetPeopleByDateOracleDataSet.SetVariable('DATE_BEGIN', DateBegin);
      GetPeopleByDateOracleDataSet.SetVariable('DATE_END', DateEnd);
      GetPeopleByDateOracleDataSet.Active := True;
      try
        if Assigned(GetPeopleByDateOracleDataSet) then
        begin
          PeopleItems.Clear;
          while not GetPeopleByDateOracleDataSet.Eof do
          begin
            People := TPeople.Create;
            People.ID := GetPeopleByDateOracleDataSet.FieldByName('id_people').AsInteger;
            People.Surname := GetPeopleByDateOracleDataSet.FieldByName('surname_people').AsString;
            People.Name := GetPeopleByDateOracleDataSet.FieldByName('name_people').AsString;
            People.ThirdName := GetPeopleByDateOracleDataSet.FieldByName('third_name_people').AsString;
            People.DateBirthDay := GetPeopleByDateOracleDataSet.FieldByName('date_birth_people').AsDateTime;
            People.DateAdded := GetPeopleByDateOracleDataSet.FieldByName('date_added_people').AsDateTime;
            PeopleItems.AddPeople(People);
            GetPeopleByDateOracleDataSet.Next;
          end;
        end;
      finally
        GetPeopleByDateOracleDataSet.Active := False;
      end;
      DrawPeopleTreeList;
    end
    else
      ShowMessage('Даты не должны быть больше текущей даты!');
  end
  else if not chkPeriodDate.Checked and chkBirth.Checked then // фильтр по дням рождения
  begin
    if (dtpBeginBirth.DateTime <= Now) or (dtpEndBirth.DateTime <= Now) then
    begin
      GetPeopleByBirthOracleDataSet.Active := False;
      DateBeginBirth := dtpBeginBirth.DateTime;
      DateEndBirth := dtpEndBirth.DateTime;
      GetPeopleByBirthOracleDataSet.SetVariable('DATE_BEGIN_BIRTH', DateBeginBirth);
      GetPeopleByBirthOracleDataSet.SetVariable('DATE_END_BIRTH', DateEndBirth);
      GetPeopleByBirthOracleDataSet.Active := True;
      try
        if Assigned(GetPeopleByBirthOracleDataSet) then
        begin
          PeopleItems.Clear;
          while not GetPeopleByBirthOracleDataSet.Eof do
          begin
            People := TPeople.Create;
            People.ID := GetPeopleByBirthOracleDataSet.FieldByName('id_people').AsInteger;
            People.Surname := GetPeopleByBirthOracleDataSet.FieldByName('surname_people').AsString;
            People.Name := GetPeopleByBirthOracleDataSet.FieldByName('name_people').AsString;
            People.ThirdName := GetPeopleByBirthOracleDataSet.FieldByName('third_name_people').AsString;
            People.DateBirthDay := GetPeopleByBirthOracleDataSet.FieldByName('date_birth_people').AsDateTime;
            People.DateAdded := GetPeopleByBirthOracleDataSet.FieldByName('date_added_people').AsDateTime;
            PeopleItems.AddPeople(People);
            GetPeopleByBirthOracleDataSet.Next;
          end;
        end;
      finally
        GetPeopleByBirthOracleDataSet.Active := False;
      end;
      DrawPeopleTreeList;
    end
    else
      ShowMessage('Даты не должны быть больше текущей даты!');
  end;
end;

procedure TfrmStatist.chkBirthClick(Sender: TObject);
begin
  btnSearchPeople.Enabled := chkPeriodDate.Checked or chkBirth.Checked;
end;

procedure TfrmStatist.chkPeriodDateClick(Sender: TObject);
begin
  btnSearchPeople.Enabled := chkPeriodDate.Checked or chkBirth.Checked;
end;

procedure TfrmStatist.cxPeopleTreeListCanSelectNode(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; var Allow: Boolean);
begin
  if Assigned(cxPeopleTreeList.FocusedNode) and Assigned(TObject(cxPeopleTreeList.FocusedNode.Data)) and (TObject(cxPeopleTreeList.FocusedNode.Data) is TPeople) then
    DrawReferencePeopleTreeList(TPeople(cxPeopleTreeList.FocusedNode.Data).ID);
end;

procedure TfrmStatist.DrawPeopleTreeList;
var
  People: TPeople;
  Node: TcxTreeListNode;
begin
  cxPeopleTreeList.Clear;
  cxPeopleTreeList.BeginUpdate;
  try
    for People in PeopleItems.PeopleDict.Values do
    begin
      Node := cxPeopleTreeList.Root.AddChild;
      Node.Texts[cxFamiliaPeopleTLColumn.ItemIndex] := People.Surname;
      Node.Texts[cxNamePeopleTLColumn.ItemIndex] := People.Name;
      Node.Texts[cxThirdNamePeopleTLColumn.ItemIndex] := People.ThirdName;
      Node.Texts[cxDateBirthPeopleTLColumn.ItemIndex] := DateTimeToStr(People.DateBirthDay);
      Node.Texts[cxDateAddedPeopleTLColumn.ItemIndex] := DateTimeToStr(People.DateAdded);
      Node.Data := People;
    end;
  finally
    cxPeopleTreeList.EndUpdate;
  end;
end;

procedure TfrmStatist.DrawReferencePeopleTreeList(aIDPeople: Integer);
var
  Reference: TReference;
  Node: TcxTreeListNode;

  procedure LoadPeopleReferences;
  begin
    GetPeopleReferencesOracleDataSet.Active := False;
    GetPeopleReferencesOracleDataSet.SetVariable('ID_PEOPLE', aIDPeople);
    GetPeopleReferencesOracleDataSet.Active := True;
    try
      if Assigned(GetPeopleReferencesOracleDataSet) then
      begin
        PeopleReferences.Clear;
        while not GetPeopleReferencesOracleDataSet.Eof do
        begin
          Reference := TReference.Create;
          Reference.ID := GetPeopleReferencesOracleDataSet.FieldByName('id_reference').AsInteger;
          Reference.Name := GetPeopleReferencesOracleDataSet.FieldByName('name').AsString;
          Reference.DateAdded := GetPeopleReferencesOracleDataSet.FieldByName('date_added').AsDateTime;
          PeopleReferences.AddReference(Reference);
          GetPeopleReferencesOracleDataSet.Next;
        end;
      end;
    finally
      GetPeopleReferencesOracleDataSet.Active := False;
    end;
  end;

begin
  cxReferenceTreeList.Clear;
  cxReferenceTreeList.BeginUpdate;
  try
    LoadPeopleReferences;
    for Reference in PeopleReferences.ReferenceDict.Values do
    begin
      Node := cxReferenceTreeList.Root.AddChild;
      Node.Texts[cxNameReferenceTLColumn.ItemIndex] := Reference.Name;
      Node.Texts[cxDateAddedReferenceTLColumn.ItemIndex] := DateTimeToStr(Reference.DateAdded);
      Node.Data := Reference;
    end;
  finally
    cxReferenceTreeList.EndUpdate;
  end;
end;
procedure TfrmStatist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(PeopleReferences);
  FreeAndNil(PeopleItems);
  Action := caFree;
end;

procedure TfrmStatist.FormCreate(Sender: TObject);
begin
  inherited;
  dtpBegin.DateTime := Now;
  dtpEnd.DateTime := Now;
  dtpBeginBirth.DateTime := Now;
  dtpEndBirth.DateTime := Now;
  PeopleItems := TPeopleItems.Create;
  PeopleReferences := TReferenceItems.Create;
  FrameFind.OnSearchClick := SearchClickEvent;
end;

procedure TfrmStatist.SearchClickEvent(Sender: TObject);
var
  i: Integer;
  SearchText, TextNode: string;
begin
  if (FrameFind.SearchText <> EmptyStr) and (cxPeopleTreeList.AbsoluteCount > 0) then
  begin
    SearchText := FrameFind.SearchText;
    for i := 0 to Pred(cxPeopleTreeList.AbsoluteCount) do
    begin
      TextNode := cxPeopleTreeList.AbsoluteItems[i].Texts[0];
      if AnsiPos(SearchText, TextNode) > 0 then
      begin
        cxPeopleTreeList.AbsoluteItems[i].Focused := True;
        cxPeopleTreeList.TopVisibleNode := cxPeopleTreeList.AbsoluteItems[i];
      end;
    end;
  end;
end;

end.
