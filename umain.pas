unit umain;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, BCPanel, ColorSpeedButton, BGRAShape;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    BCPanel1: TBCPanel;
    BGRAShape1: TBGRAShape;
    ColorSpeedButton1: TColorSpeedButton;
    ColorSpeedButton11: TColorSpeedButton;
    ColorSpeedButton12: TColorSpeedButton;
    ColorSpeedButton2: TColorSpeedButton;
    ColorSpeedButton3: TColorSpeedButton;
    ColorSpeedButton4: TColorSpeedButton;
    ColorSpeedButton5: TColorSpeedButton;
    ColorSpeedButton6: TColorSpeedButton;
    ColorSpeedButton7: TColorSpeedButton;
    Image1: TImage;
    Image2: TImage;
    imgLstBlack: TImageList;
    imgLstWhite: TImageList;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    procedure CollapseClick(Sender: TObject);
    procedure ColorSpeedButton1Click(Sender: TObject);
    procedure ColorSpeedButton1MouseEnter(Sender: TObject);
    procedure ColorSpeedButton1MouseLeave(Sender: TObject);
    procedure FormChangeBounds(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FmenuSelection: Integer;
    procedure SetmenuSelection(AValue: Integer);
    procedure ProcessMenuSelection(aValue : Integer);
  private
    property menuSelection : Integer read FmenuSelection write SetmenuSelection;
  public

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.FormResize(Sender: TObject);
begin
//  ScrollBox1.ParentBackground := False;
//  ScrollBox1.ParentBackground := True;
end;

procedure TfrmMain.SetmenuSelection(AValue: Integer);
begin
  if FmenuSelection=AValue then Exit;
  FmenuSelection:=AValue;
  ProcessMenuSelection(aValue);
end;

procedure TfrmMain.ProcessMenuSelection(aValue: Integer);
var i : integer;
begin
  for i := 0 to BCPanel1.ControlCount - 1 do
  begin
     ColorSpeedButton1MouseLeave(BCPanel1.Controls[i]);
  end;
end;

procedure TfrmMain.FormChangeBounds(Sender: TObject);
begin
//  ScrollBox1.ParentBackground := False;
//  ScrollBox1.ParentBackground := True;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  i : integer;
begin
  BCPanel1.Width := 200;
  for i := 0 to PageControl1.PageCount - 1 do
      PageControl1.Pages[i].TabVisible := False;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmMain.ColorSpeedButton1MouseEnter(Sender: TObject);
begin
  if menuSelection <> (Sender as TColorSpeedButton).Tag then
  begin
    (Sender as TColorSpeedButton).Font.Color := clBlack;
    (Sender as TColorSpeedButton).Images := imgLstBlack;
  end;
end;

procedure TfrmMain.ColorSpeedButton1Click(Sender: TObject);
begin
  menuSelection := (Sender as TColorSpeedButton).Tag;
  (Sender as TColorSpeedButton).Font.Color := clyellow;
  (Sender as TColorSpeedButton).Images := imgLstBlack;
end;

procedure TfrmMain.CollapseClick(Sender: TObject);
begin
//  menuSelection := (Sender as TColorSpeedButton).Tag;
  if BCPanel1.Width >= 200 then
  begin
    BCPanel1.Width := 50;
    (Sender as TColorSpeedButton).ImageIndex := 12;
  end
  else
  begin
    BCPanel1.Width := 200;
    (Sender as TColorSpeedButton).ImageIndex := 13;
  end;
end;

procedure TfrmMain.ColorSpeedButton1MouseLeave(Sender: TObject);
begin
  if (Sender as TColorSpeedButton).Tag <> menuSelection then
  begin
    (Sender as TColorSpeedButton).Font.Color := clCream;
    (Sender as TColorSpeedButton).Images := imgLstWhite;
  end;

end;

end.

