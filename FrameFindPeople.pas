unit FrameFindPeople;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxStyles, cxTL, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters,
  cxInplaceContainer, uARMObjects, DB, cxTextEdit;

type
  //TNotifyEvent = procedure(Sender: TObject) of object;

  TframeFind = class(TFrame)
    pnlMain: TPanel;
    lblCaption: TLabel;
    pnlSearch: TPanel;
    edtSearch: TEdit;
    btnSearch: TButton;
    procedure btnSearchClick(Sender: TObject);
  private
    FOnSearchClick: TNotifyEvent;
    //procedure SetSearchClickEvent(ASearchClickEvent: TNotifyEvent);
    function GetSearchText: string;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property OnSearchClick: TNotifyEvent read FOnSearchClick write FOnSearchClick;
    property SearchText: string read GetSearchText;
  end;

implementation

{$R *.dfm}

procedure TframeFind.btnSearchClick(Sender: TObject);
begin
  if Assigned(FOnSearchClick) then
    FOnSearchClick(Self);
end;

constructor TframeFind.Create(AOwner: TComponent);
begin
  inherited;
  FOnSearchClick := nil;
end;

destructor TframeFind.Destroy;
begin
  inherited;
end;

function TframeFind.GetSearchText: string;
begin
  Result := edtSearch.Text;
end;

{
procedure TframeFind.SetSearchClickEvent(ASearchClickEvent: TNotifyEvent);
begin
  btnSearch.OnClick := ASearchClickEvent;
end; }

end.
