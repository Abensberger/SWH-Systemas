unit umain;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, BCPanel,
  ColorSpeedButton, BGRAShape;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    BCPanel1: TBCPanel;
    BGRAShape1: TBGRAShape;
    ColorSpeedButton1: TColorSpeedButton;
    ColorSpeedButton10: TColorSpeedButton;
    ColorSpeedButton11: TColorSpeedButton;
    ColorSpeedButton2: TColorSpeedButton;
    ColorSpeedButton3: TColorSpeedButton;
    ColorSpeedButton4: TColorSpeedButton;
    ColorSpeedButton5: TColorSpeedButton;
    ColorSpeedButton6: TColorSpeedButton;
    ColorSpeedButton7: TColorSpeedButton;
    ColorSpeedButton8: TColorSpeedButton;
    ColorSpeedButton9: TColorSpeedButton;
    Edit1: TEdit;
    imgLstBlack: TImageList;
    imgLstWhite: TImageList;
    ScrollBox1: TScrollBox;
    procedure ColorSpeedButton1MouseEnter(Sender: TObject);
    procedure ColorSpeedButton1MouseLeave(Sender: TObject);
    procedure ColorSpeedButton8Click(Sender: TObject);
    procedure FormChangeBounds(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private

  public

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.FormResize(Sender: TObject);
begin
  ScrollBox1.ParentBackground := False;
  ScrollBox1.ParentBackground := True;
end;

procedure TfrmMain.FormChangeBounds(Sender: TObject);
begin
//  ScrollBox1.ParentBackground := False;
  ScrollBox1.ParentBackground := True;
end;

procedure TfrmMain.ColorSpeedButton8Click(Sender: TObject);
begin
  if ScrollBox1.Width >= 200 then
     ScrollBox1.Width := 50
  else
    ScrollBox1.Width := 200;

end;

procedure TfrmMain.ColorSpeedButton1MouseEnter(Sender: TObject);
begin
  (Sender as TColorSpeedButton).Font.Color := clyellow;
  (Sender as TColorSpeedButton).Images := imgLstBlack;
end;

procedure TfrmMain.ColorSpeedButton1MouseLeave(Sender: TObject);
begin
  (Sender as TColorSpeedButton).Font.Color := clCream;
  (Sender as TColorSpeedButton).Images := imgLstWhite;

end;

end.

