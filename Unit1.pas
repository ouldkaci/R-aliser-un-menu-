unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
 Vcl.Grids;

type
  TFrm_menu = class(TForm)
    TreeView1: TTreeView;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Pnl_Top: TPanel;
    Page2: TPanel;
    Page1: TPanel;
    Page3: TPanel;
    TabSheet4: TTabSheet;
    Memo1: TMemo;
    Panel1: TPanel;
    CbxVclStyles: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Memo2: TMemo;
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure CbxVclStylesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Frm_menu: TFrm_menu;

implementation

{$R *.dfm}

uses Vcl.Themes;

procedure OcultarSheets(PageControl: TPageControl);
// Procedure pour masqué les oncle de tout les page control
var
  iPage: Integer;
begin
  for iPage := 0 to PageControl.PageCount - 1 do
    PageControl.Pages[iPage].TabVisible := False;

  if (PageControl.PageCount > 0) then
    PageControl.ActivePage := PageControl.Pages[1];

  PageControl.Style := tsTabs;
  // ----------------------------------------------------------
end;

procedure TFrm_menu.CbxVclStylesChange(Sender: TObject);
begin
  TStyleManager.SetStyle(CbxVclStyles.Text);
  // ----------------------------------------------------------
end;

procedure TFrm_menu.FormCreate(Sender: TObject);
VAR
  StyleName: STRING;
Begin
  // Initialiser le pointeur a la première page
  PageControl1.ActivePageIndex := 0;

  Frm_menu.Position := poDesktopCenter; // Position de la form

  FOR StyleName IN TStyleManager.StyleNames DO
    CbxVclStyles.Items.Add(StyleName);
  CbxVclStyles.ItemIndex := CbxVclStyles.Items.IndexOf
    (TStyleManager.ActiveStyle.Name);

  OcultarSheets(PageControl1); // Masqué les oncle de tout les page control
  CbxVclStyles.Text := 'Auric'; // selection de skin par défaut
  CbxVclStylesChange(Sender); // appliqué le skin
  // ----------------------------------------------------------
end;

procedure TFrm_menu.FormShow(Sender: TObject);
begin
TreeView1.Selected:=TreeView1.Items.Item[3];
end;

procedure TFrm_menu.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  PageControl1.ActivePageIndex := Node.Index;
end;

end.
