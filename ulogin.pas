unit uLogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  ExtCtrls, Buttons, BGRAShape, ColorSpeedButton, uMain;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    BGRAShape1: TBGRAShape;
    ColorSpeedButton1: TColorSpeedButton;
    ColorSpeedButton2: TColorSpeedButton;
    edtUsername: TEdit;
    edtPasswort: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblError: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure BGRAShape1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ColorSpeedButton1Click(Sender: TObject);
    procedure ColorSpeedButton2Click(Sender: TObject);
    procedure ColorSpeedButton2MouseLeave(Sender: TObject);
    procedure ColorSpeedButton2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtUsernameEnter(Sender: TObject);
    procedure edtUsernameMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.ColorSpeedButton1Click(Sender: TObject);
begin
  if (edtUsername.Text = 'Mustermann') and
     (edtPasswort.Text = 'Max') then
  begin
    Self.Hide;
    frmMain.ShowModal;
    close;
  end
  else
    lblError.Show;
end;

procedure TForm1.BGRAShape1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lblError.Hide;
end;

procedure TForm1.ColorSpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.ColorSpeedButton2MouseLeave(Sender: TObject);
begin
  (Sender as TColorSpeedButton).Font.Color := clBlack;
end;

procedure TForm1.ColorSpeedButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  (Sender as TColorSpeedButton).Font.Color := clWhite;
end;

procedure TForm1.edtUsernameEnter(Sender: TObject);
begin
  lblError.Hide;
end;

procedure TForm1.edtUsernameMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lblError.Hide;
end;


procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);
begin
  lblError.Hide;
  if Key = #13 then
  begin
    ColorSpeedButton1Click(Sender);
    Key := #0;
  end;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lblError.Hide;
end;

end.

