object Frm_menu: TFrm_menu
  Left = 0
  Top = 0
  Caption = 'AppTip_menu'
  ClientHeight = 475
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TreeView1: TTreeView
    Left = 0
    Top = 41
    Width = 177
    Height = 434
    Align = alLeft
    Indent = 19
    TabOrder = 0
    OnChange = TreeView1Change
    Items.NodeData = {
      03040000002A0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      0000000000010643006F006D00700074006500300000000000000000000000FF
      FFFFFFFFFFFFFF00000000000000000000000001094F007000E9007200610074
      0069006F006E003C0000000000000000000000FFFFFFFFFFFFFFFF0000000000
      00000000000000010F4200610073006500200064006500200044006F006E006E
      00E90065007300260000000000000000000000FFFFFFFFFFFFFFFF0000000000
      0000000000000001044100690064006500}
  end
  object PageControl1: TPageControl
    Left = 177
    Top = 41
    Width = 606
    Height = 434
    ActivePage = TabSheet4
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'Compte'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 48
        Top = 80
        Width = 36
        Height = 13
        Caption = 'Banque'
      end
      object Label2: TLabel
        Left = 48
        Top = 111
        Width = 36
        Height = 13
        Caption = 'Agence'
      end
      object Label3: TLabel
        Left = 48
        Top = 138
        Width = 37
        Height = 13
        Caption = 'Compte'
      end
      object Page1: TPanel
        Left = 0
        Top = 0
        Width = 598
        Height = 41
        Align = alTop
        Caption = 'Page Compte'
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 144
        Top = 76
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 144
        Top = 103
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 144
        Top = 130
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object Memo2: TMemo
        Left = 0
        Top = 208
        Width = 598
        Height = 200
        Align = alBottom
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Op'#233'ration '
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Page2: TPanel
        Left = 0
        Top = 0
        Width = 598
        Height = 41
        Align = alTop
        Caption = 'Page op'#233'ration'
        TabOrder = 0
      end
      object Button1: TButton
        Left = 491
        Top = 359
        Width = 75
        Height = 25
        Caption = 'Valider'
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Base de Donn'#233'es'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Page3: TPanel
        Left = 0
        Top = 0
        Width = 598
        Height = 41
        Align = alTop
        Caption = 'Page Base de donn'#233'es'
        TabOrder = 0
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 41
        Width = 598
        Height = 367
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 184
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Aide ?'
      ImageIndex = 3
      object Memo1: TMemo
        Left = 0
        Top = 41
        Width = 598
        Height = 367
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'R'#233'aliser un menu avec un arbre et un tableau d'#8217'ongle pour une '
          'application multifen'#234'tre sur la m'#234'me fiche.'
          
            'Ca donneras l'#8217'impression simple, essai le d'#233'roulement et lib'#233'rer' +
            ' votre '
          'imagination'
          ''
          ''
          ''
          
            'Create a menu with a tree and tabsheet for a multi-window applic' +
            'ation '
          'on the same sheet.'
          'It will look simple, try it out and free your imagination')
        ParentFont = False
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 598
        Height = 41
        Align = alTop
        Caption = 'Page d'#39'aide'
        TabOrder = 1
      end
    end
  end
  object Pnl_Top: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 41
    Align = alTop
    TabOrder = 2
    object CbxVclStyles: TComboBox
      Left = 16
      Top = 11
      Width = 161
      Height = 21
      TabOrder = 0
      Text = 'CbxVclStyles'
      OnChange = CbxVclStylesChange
    end
  end
end
