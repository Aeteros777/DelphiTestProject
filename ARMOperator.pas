unit ARMOperator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FrameFindPeople,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, uARMObjects, System.Actions,
  Vcl.ActnList, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters, cxInplaceContainer, cxGraphics, Oracle, Data.DB,
  OracleData, cxTextEdit, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit;

type
  TfrmOperator = class(TForm)
    frameFind: TframeFind;
    pnlMain: TPanel;
    pnlAddPeople: TPanel;
    lblPeopleCaption: TLabel;
    pnlAddFamilia: TPanel;
    lblFamilia: TLabel;
    pnlBirthday: TPanel;
    lblBirthday: TLabel;
    dtpBirth: TDateTimePicker;
    btnSave: TButton;
    pnlSaveButton: TPanel;
    edtFamilia: TEdit;
    pnlAddName: TPanel;
    lblName: TLabel;
    edtName: TEdit;
    pnlThName: TPanel;
    lblThName: TLabel;
    edtThName: TEdit;
    pnlDateRec: TPanel;
    lblDateRec: TLabel;
    dtpDateRec: TDateTimePicker;
    pnlAddSpr: TPanel;
    lblAddSpr: TLabel;
    pnlAddSprButton: TPanel;
    btnAddSpr: TButton;
    ActionList1: TActionList;
    actSavePeople: TAction;
    actAddReference: TAction;
    GetPeopleOracleDataSet: TOracleDataSet;
    InsertPeopleOracleQuery: TOracleQuery;
    InsertPeopleReferencesOracleQuery: TOracleQuery;
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
    GetReferenceOracleDataSet: TOracleDataSet;
    cxReferenceComboBox: TcxComboBox;
    GetPeopleReferencesOracleDataSet: TOracleDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actSavePeopleExecute(Sender: TObject);
    procedure actAddReferenceExecute(Sender: TObject);
    procedure cxPeopleTreeListCanSelectNode(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; var Allow: Boolean);
  private
    PeopleItems: TPeopleItems;
    ReferenceItems: TReferenceItems;
    PeopleReferences: TReferenceItems;
    procedure DrawReferencePeopleTreeList(aIDPeople: Integer);
    procedure DrawPeopleTreeList;
    procedure FillReferenceComboBox;
    procedure ClearAddPeopleData;
    procedure SearchClickEvent(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmOperator: TfrmOperator;

implementation

uses
  MainForm;

{$R *.dfm}

procedure TfrmOperator.actAddReferenceExecute(Sender: TObject);
var
  IDPeople, IDReference: Integer;
  DateAdded: TDateTime;
begin
  if Assigned(cxPeopleTreeList.FocusedNode) and Assigned(TObject(cxPeopleTreeList.FocusedNode.Data)) and (TObject(cxPeopleTreeList.FocusedNode.Data) is TPeople) then
  begin
    if cxReferenceComboBox.ItemIndex > -1 then
    begin
      IDPeople := TPeople(cxPeopleTreeList.FocusedNode.Data).ID;
      IDReference := TReference(cxReferenceComboBox.ItemObject).ID;
      DateAdded := Now;
      try
        InsertPeopleReferencesOracleQuery.SetVariable('ID_PEOPLE', IDPeople);
        InsertPeopleReferencesOracleQuery.SetVariable(':ID_REFERENCE', IDReference);
        InsertPeopleReferencesOracleQuery.SetVariable('DATE_ADDED', DateAdded);
        InsertPeopleReferencesOracleQuery.Execute;
        frmMain.OracleSession1.Commit;
        DrawReferencePeopleTreeList(IDPeople);
      except
        ShowMessage('Ошибка при добавлении человека в базу!');
      end;
    end
    else
      ShowMessage('Выберите требуемую справку!');
  end
  else
    ShowMessage('Выберите человека!');
end;

procedure TfrmOperator.actSavePeopleExecute(Sender: TObject);
var
  Surname, Name, ThirdName: string;
  DateBirth, DateAdded: TDateTime;
begin
  if (edtFamilia.Text <> EmptyStr) and (edtName.Text <> EmptyStr) and (edtThName.Text <> EmptyStr) and
     (dtpBirth.DateTime < Now) and (dtpDateRec.DateTime < Now) then
  begin
    Surname := edtFamilia.Text;
    Name := edtName.Text;
    ThirdName := edtThName.Text;
    DateBirth := dtpBirth.DateTime;
    DateAdded := dtpDateRec.DateTime;
    try
      InsertPeopleOracleQuery.SetVariable('SURNAME_PEOPLE', Surname);
      InsertPeopleOracleQuery.SetVariable('NAME_PEOPLE', Name);
      InsertPeopleOracleQuery.SetVariable('THIRD_NAME_PEOPLE', ThirdName);
      InsertPeopleOracleQuery.SetVariable('DATE_BIRTH_PEOPLE', DateBirth);
      InsertPeopleOracleQuery.SetVariable('DATE_ADDED_PEOPLE', DateAdded);
      InsertPeopleOracleQuery.Execute;
      frmMain.OracleSession1.Commit;
      ClearAddPeopleData;
      DrawPeopleTreeList;
    except
      ShowMessage('Ошибка при добавлении человека в базу!');
    end;
  end
  else
    ShowMessage('Заполните все поля!');
end;

procedure TfrmOperator.ClearAddPeopleData;
begin
  edtFamilia.Text := EmptyStr;
  edtName.Text := EmptyStr;
  edtThName.Text := EmptyStr;
  dtpBirth.DateTime := Now;
  dtpDateRec.DateTime := Now;
end;

procedure TfrmOperator.cxPeopleTreeListCanSelectNode(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; var Allow: Boolean);
begin
  if Assigned(cxPeopleTreeList.FocusedNode) and Assigned(TObject(cxPeopleTreeList.FocusedNode.Data)) and (TObject(cxPeopleTreeList.FocusedNode.Data) is TPeople) then
  begin
    lblAddSpr.Caption := 'Добавить справку для ' + TPeople(cxPeopleTreeList.FocusedNode.Data).Surname + ' ' + TPeople(cxPeopleTreeList.FocusedNode.Data).Name;
    DrawReferencePeopleTreeList(TPeople(cxPeopleTreeList.FocusedNode.Data).ID);
  end;
end;

procedure TfrmOperator.DrawPeopleTreeList;
var
  People: TPeople;
  Node: TcxTreeListNode;

  procedure LoadPeoples;
  begin
    GetPeopleOracleDataSet.Active := False;
    GetPeopleOracleDataSet.Active := True;
    try
      if Assigned(GetPeopleOracleDataSet) then
      begin
        PeopleItems.Clear;
        while not GetPeopleOracleDataSet.Eof do
        begin
          People := TPeople.Create;
          People.ID := GetPeopleOracleDataSet.FieldByName('id_people').AsInteger;
          People.Surname := GetPeopleOracleDataSet.FieldByName('surname_people').AsString;
          People.Name := GetPeopleOracleDataSet.FieldByName('name_people').AsString;
          People.ThirdName := GetPeopleOracleDataSet.FieldByName('third_name_people').AsString;
          People.DateBirthDay := GetPeopleOracleDataSet.FieldByName('date_birth_people').AsDateTime;
          People.DateAdded := GetPeopleOracleDataSet.FieldByName('date_added_people').AsDateTime;
          PeopleItems.AddPeople(People);
          GetPeopleOracleDataSet.Next;
        end;
      end;
    finally
      GetPeopleOracleDataSet.Active := False;;
    end;
  end;

begin
  cxPeopleTreeList.Clear;
  cxPeopleTreeList.BeginUpdate;
  try
    LoadPeoples;
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

procedure TfrmOperator.DrawReferencePeopleTreeList(aIDPeople: Integer);
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

procedure TfrmOperator.FillReferenceComboBox;
var
  Reference: TReference;

  procedure LoadReferences;
  begin
    ReferenceItems.Clear;
    GetReferenceOracleDataSet.Active := False;
    GetReferenceOracleDataSet.Active := True;
    try
      if Assigned(GetReferenceOracleDataSet) then
      begin
        ReferenceItems.Clear;
        while not GetReferenceOracleDataSet.Eof do
        begin
          Reference := TReference.Create;
          Reference.ID := GetReferenceOracleDataSet.FieldByName('id_reference').AsInteger;
          Reference.Name := GetReferenceOracleDataSet.FieldByName('name').AsString;
          Reference.DateAdded := GetReferenceOracleDataSet.FieldByName('date_added').AsDateTime;
          ReferenceItems.AddReference(Reference);
          GetReferenceOracleDataSet.Next;
        end;
      end;
    finally
      GetReferenceOracleDataSet.Active := False;
    end;
  end;

begin
  LoadReferences;
  for Reference in ReferenceItems.ReferenceDict.Values do
    cxReferenceComboBox.Properties.Items.AddObject(Reference.Name, Reference);
end;

procedure TfrmOperator.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(PeopleItems);
  FreeAndNil(ReferenceItems);
  FreeAndNil(PeopleReferences);
  Action := caFree;
end;

procedure TfrmOperator.FormCreate(Sender: TObject);
begin
  inherited;
  dtpBirth.DateTime := Now;
  dtpDateRec.DateTime := Now;
  PeopleItems := TPeopleItems.Create;
  ReferenceItems := TReferenceItems.Create;
  PeopleReferences := TReferenceItems.Create;
  FrameFind.OnSearchClick := SearchClickEvent;
  FillReferenceComboBox;
  DrawPeopleTreeList;
end;

procedure TfrmOperator.SearchClickEvent(Sender: TObject);
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
