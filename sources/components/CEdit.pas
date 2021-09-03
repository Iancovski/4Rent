unit CEdit;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Winapi.Messages;

type
  { TBoundLabel }
  TBoundLabel = class(TCustomLabel)
  private
    function GetTop: Integer;
    function GetLeft: Integer;
    function GetWidth: Integer;
    function GetHeight: Integer;
    procedure SetHeight(const Value: Integer);
    procedure SetWidth(const Value: Integer);
  protected
    procedure AdjustBounds; override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property BiDiMode;
    property Caption;
    property Color;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Font;
    property Height: Integer read GetHeight write SetHeight;
    property Left: Integer read GetLeft;
    property ParentBiDiMode;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowAccelChar;
    property ShowHint;
    property Top: Integer read GetTop;
    property Touch;
    property Transparent;
    property Layout;
    property WordWrap;
    property Width: Integer read GetWidth write SetWidth;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnGesture;
    property OnMouseActivate;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;

  TLabelPosition = (lpAbove, lpBelow, lpLeft, lpRight);

  { TCustomCEdit }
  TCustomCEdit = class(TEdit)
  private
    FEditLabel: TBoundLabel;
    FLabelPosition: TLabelPosition;
    FLabelSpacing: Integer;
    procedure SetLabelPosition(const Value: TLabelPosition);
    procedure SetLabelSpacing(const Value: Integer);
  protected
    procedure SetParent(AParent: TWinControl); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure SetName(const Value: TComponentName); override;
    procedure CMVisiblechanged(var Message: TMessage);
      message CM_VISIBLECHANGED;
    procedure CMEnabledchanged(var Message: TMessage);
      message CM_ENABLEDCHANGED;
    procedure CMBidimodechanged(var Message: TMessage);
      message CM_BIDIMODECHANGED;
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetBounds(ALeft: Integer; ATop: Integer; AWidth: Integer; AHeight: Integer); override;
    procedure SetupInternalLabel;
    property EditLabel: TBoundLabel read FEditLabel;
    property LabelPosition: TLabelPosition read FLabelPosition write SetLabelPosition default lpAbove;
    property LabelSpacing: Integer read FLabelSpacing write SetLabelSpacing default 3;
  end;

  { TCEdit }
  TCEdit = class(TCustomCEdit)
  published
    property Align;
    property Alignment;
    property AlignWithMargins;
    property Anchors;
    property AutoSelect;
    property AutoSize;
    property BevelEdges;
    property BevelInner;
    property BevelKind;
    property BevelOuter;
    property BevelWidth;
    property BiDiMode;
    property BorderStyle;
    property CharCase;
    property Color;
    property Constraints;
    property Ctl3D;
    property Cursor;
    property CustomHint;
    property DoubleBuffered;
    property DragCursor;
    property DragKind;
    property DragMode;
    property EditLabel;
    property Enabled;
    property Font;
    property Height;
    property HelpContext;
    property HelpKeyword;
    property HelpType;
    property HideSelection;
    property Hint;
    property ImeMode;
    property ImeName;
    property LabelPosition;
    property LabelSpacing;
    property Left;
    property Margins;
    property MaxLength;
    property Name;
    property NumbersOnly;
    property OEMConvert;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentCustomHint;
    property ParentDoubleBuffered;
    property ParentFont;
    property ParentShowHint;
    property PasswordChar;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property StyleElements;
    property StyleName;
    property TabOrder;
    property TabStop;
    property Tag;
    property Text;
    property TextHint;
    property Top;
    property Touch;
    property Visible;
    property Width;

    property OnChange;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGesture;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseActivate;
    property OnMouseDown;
    property OnMouseEnter;
    property OnMouseLeave;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;

procedure Register;

implementation

uses
  System.Types;

procedure Register;
begin
  RegisterComponents('Custom', [TCEdit]);
end;

function AdjustedAlignment(RightToLeftAlignment: Boolean; Alignment: TAlignment): TAlignment;
begin
  Result := Alignment;
  if RightToLeftAlignment then begin
    case Result of
      taLeftJustify: Result := taRightJustify;
      taRightJustify: Result := taLeftJustify;
    end;
  end;
end;

{ TBoundLabel }

constructor TBoundLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Name := 'EditLabel';
  SetSubComponent(True);
  if Assigned(AOwner) then
    Caption := AOwner.Name;
end;

procedure TBoundLabel.AdjustBounds;
begin
  inherited AdjustBounds;
  with Owner as TCustomCEdit do
    SetLabelPosition(LabelPosition);
end;

function TBoundLabel.GetHeight: Integer;
begin
  Result := inherited Height;
end;

function TBoundLabel.GetLeft: Integer;
begin
  Result := inherited Left;
end;

function TBoundLabel.GetTop: Integer;
begin
  Result := inherited Top;
end;

function TBoundLabel.GetWidth: Integer;
begin
  Result := inherited Width;
end;

procedure TBoundLabel.SetHeight(const Value: Integer);
begin
  SetBounds(Left, Top, Width, Value);
end;

procedure TBoundLabel.SetWidth(const Value: Integer);
begin
  SetBounds(Left, Top, Value, Height);
end;

{ TCustomCEdit }

constructor TCustomCEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FLabelPosition := lpAbove;
  FLabelSpacing := 3;
  SetupInternalLabel;
end;

procedure TCustomCEdit.CMBidimodechanged(var Message: TMessage);
begin
  inherited;
  if FEditLabel <> nil then
    FEditLabel.BiDiMode := BiDiMode;
end;

procedure TCustomCEdit.CMEnabledchanged(var Message: TMessage);
begin
  inherited;
  if FEditLabel <> nil then
    FEditLabel.Enabled := Enabled;
end;

procedure TCustomCEdit.CMVisiblechanged(var Message: TMessage);
begin
  inherited;
  if FEditLabel <> nil then
    FEditLabel.Visible := Visible;
end;

procedure TCustomCEdit.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = FEditLabel) and (Operation = opRemove) then
    FEditLabel := nil;
end;

procedure TCustomCEdit.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  inherited SetBounds(ALeft, ATop, AWidth, AHeight);
  SetLabelPosition(FLabelPosition);
end;

procedure TCustomCEdit.SetLabelPosition(const Value: TLabelPosition);
var
  P: TPoint;
begin
  if FEditLabel = nil then Exit;
  FLabelPosition := Value;
  case Value of
    lpAbove:
      case AdjustedAlignment(UseRightToLeftAlignment, Alignment) of
        taLeftJustify: P := Point(Left, Top - FEditLabel.Height - FLabelSpacing);
        taRightJustify: P := Point(Left + Width - FEditLabel.Width,
          Top - FEditLabel.Height - FLabelSpacing);
        taCenter: P := Point(Left + (Width - FEditLabel.Width) div 2,
          Top - FEditLabel.Height - FLabelSpacing);
      end;
    lpBelow:
      case AdjustedAlignment(UseRightToLeftAlignment, Alignment) of
        taLeftJustify: P := Point(Left, Top + Height + FLabelSpacing);
        taRightJustify: P := Point(Left + Width - FEditLabel.Width,
          Top + Height + FLabelSpacing);
        taCenter: P := Point(Left + (Width - FEditLabel.Width) div 2,
          Top + Height + FLabelSpacing);
      end;
    lpLeft : P := Point(Left - FEditLabel.Width - FLabelSpacing,
                    Top + ((Height - FEditLabel.Height) div 2));
    lpRight: P := Point(Left + Width + FLabelSpacing,
                    Top + ((Height - FEditLabel.Height) div 2));
  end;
  FEditLabel.SetBounds(P.x, P.y, FEditLabel.Width, FEditLabel.Height);
end;

procedure TCustomCEdit.SetLabelSpacing(const Value: Integer);
begin
  FLabelSpacing := Value;
  SetLabelPosition(FLabelPosition);
end;

procedure TCustomCEdit.SetName(const Value: TComponentName);
var
  LClearText: Boolean;
begin
  if (csDesigning in ComponentState) and (FEditLabel <> nil) and
     ((FEditlabel.GetTextLen = 0) or
     (CompareText(FEditLabel.Caption, Name) = 0)) then
    FEditLabel.Caption := Value;
  LClearText := (csDesigning in ComponentState) and (Text = '');
  inherited SetName(Value);
  if LClearText then
    Text := '';
end;

procedure TCustomCEdit.SetParent(AParent: TWinControl);
begin
  inherited SetParent(AParent);
  if FEditLabel = nil then exit;
  FEditLabel.Parent := AParent;
  FEditLabel.Visible := True;
end;

procedure TCustomCEdit.SetupInternalLabel;
begin
  if Assigned(FEditLabel) then exit;
  FEditLabel := TBoundLabel.Create(Self);
  FEditLabel.FreeNotification(Self);
  FEditLabel.FocusControl := Self;
end;

end.
