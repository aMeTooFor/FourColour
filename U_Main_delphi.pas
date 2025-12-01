unit U_Main;

interface
顔色总数
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzLine, DB, ADODB, ExtCtrls, ShellAPI,
  StdCtrls, ComCtrls, RzButton,
  RzBHints, Math, DateUtils, Buttons, StrUtils, Grids, IdHashMessageDigest,
  OleCtrls, SHDocVw, mshtml, RzLabel, RzRadChk, RzTabs, System.hash,
  Vcl.ExtDlgs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, dxWheelPicker,
  dxNumericWheelPicker, Vcl.Mask, RzEdit, RzSpnEdt, Vcl.Menus, dxScreenTip,
  cxClasses, dxCustomHint, cxHint;

type
  TFC = class(TForm)
    ADOConnection1: TADOConnection;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    selectPicture: TButton;
    edgesss: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    refreshh: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    RzLine1: TRzLine;
    Shape1: TShape;
    CheckBox1: TCheckBox;
    Memo1111: TMemo;
    adotemp: TADOQuery;
    ProgressBar1: TProgressBar;
    Userdata: TRzButton;
    help1: TRzButton;
    help2: TRzButton;
    Memo_SaveToTxT: TMemo;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    Label2: TLabel;
    Memo1: TMemo;
    RzLabel1: TRzLabel;
    RzSpinEdit1: TRzSpinEdit;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N3331houseASC: TMenuItem;
    N5551fold: TMenuItem;
    shiftPoints: TSpeedButton;
    shiftEdges: TSpeedButton;
    run: TRzMenuButton;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    ProgressBar2: TProgressBar;
    N31test: TMenuItem;
    pMenu: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N21birdDESC: TMenuItem;
    N51: TMenuItem;
    N61onebyone: TMenuItem;
    BTNexitOut: TButton;
    RzButton1: TRzButton;
    drawBMP1: TMenuItem;
    KePup: TMenuItem;
    RzButton2: TRzButton;
    userclick1: TMenuItem;
    fromL1: TMenuItem;
    fromLred1: TMenuItem;
    Label3: TLabel;
    stepTime: TRzNumericEdit;
    addonepoint: TButton;
    pointsXYpos: TButton;
    N7: TMenuItem;
    KePuPlay5circle: TMenuItem;
    KePuPlay5circle222: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure pointsXYposClick(Sender: TObject);
    procedure edgesssClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure refreshhClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure selectPictureClick(Sender: TObject);
    procedure RadiorefreshhClick(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure help2Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure RzLine1MouseEnter(Sender: TObject);
    procedure RzLine1MouseLeave(Sender: TObject);
    procedure RzNumericEdit1Change(Sender: TObject);
    procedure runClick(Sender: TObject);
    procedure shiftPointsClick(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shiftEdgesClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5551foldClick(Sender: TObject);
    procedure N31testClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N21birdDESCClick(Sender: TObject);
    procedure N3331houseASCClick(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N61onebyoneClick000(Sender: TObject);
    procedure N61onebyoneClick(Sender: TObject);
    procedure BTNexitOutClick(Sender: TObject);
    procedure addonepointClick(Sender: TObject);
    procedure RzButton1OLDClick(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure drawBMP1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure KePupClick(Sender: TObject);
    procedure shiftPointsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shiftEdgesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure userclick1Click(Sender: TObject);
    procedure fromL1Click(Sender: TObject);
    procedure fromLred1Click(Sender: TObject);
    procedure Label3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure KePuPlay5circleClick(Sender: TObject);
    procedure KePuPlay5circle222Click(Sender: TObject);
  private
    { Private declarations }
  public
    isdebug: Integer;
    alreadyLength: double;
    dprid, beginp, endp, FFF, ALLPATH2, MEMO2, ALLLength2: string;
    PPP: TstringList;
    oriP: Tpoint;
    userclick: boolean;
    LabelsCaptions: TstringList;
    function MoveLineLi(eee: TRzLine; p1x, p1y, p2x, p2y: Integer;
      truelength222, direct: string): boolean;

    { Public declarations }
    procedure houseBirds(Sender: TObject; AD: string);
    procedure houseBirdsSUB(Sender: TObject; AD: string);
    procedure refreshoneP(ccolor: string; pcode: string; iitime1000: Integer;
      ccclred: TColor);
    procedure AutorefreshALLP;
    procedure looktime(iitime1000: Integer);
    procedure savetoLabelcaption;
    procedure fromLabelcaption;
    procedure fromLabelcaptionC(onlyc: TColor);
  end;

var
  FC: TFC;
  userid: string;
  demoid: string;
  AllPath, AllPath_: TstringList;
  tempList: TstringList;
  Origin: Tpoint;
  LineBeforeColor, LableBeforeColor, MyLineColor: TColor;
  mouseMoveCount, PCount, curPcount: Integer;
  wwwname: string;
  shiftPointsB, shiftEdgesB: boolean;
  shiftPointsL, shiftEdgesL: TstringList;
  exitOut: boolean;
  isTest5Chain: Integer; // 实例且改代码才可测五环肯普链涟漪
  isTest5ChainReturnOK: Integer; // 实例且改代码才可测五环肯普链涟漪

implementation

uses U_P, U_E, U_OK, U_A1, U_A2, U_A3, TxtReader;
{$R *.dfm}

function GetAveCharSize(Canvas: TCanvas): Tpoint;
var
  I: Integer;
  Buffer: array [0 .. 51] of Char;
begin
  for I := 0 to 25 do
    Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do
    Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.X := Result.X div 52;
end;

function InputQueryLi(const ACaption, APrompt: string;
  var Value: string): boolean;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TMemo;
  DialogUnits: Tpoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := False;
  // InputQuery();
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.X, 4) * 2;
      // height:= height*2;
      Position := poScreenCenter;
      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
        Parent := Form;
        Caption := APrompt;
        Left := MulDiv(8, DialogUnits.X, 4);
        Top := MulDiv(8, DialogUnits.Y, 8);
        Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);
        WordWrap := True;
      end;
      Edit := TMemo.Create(Form);

      Edit.Parent := Form;
      Edit.Left := Prompt.Left;
      Edit.Top := Prompt.Top + Prompt.Height + 5;
      Edit.Width := MulDiv(164, DialogUnits.X, 4) * 2;
      Edit.Height := 100;
      Edit.ScrollBars := ssVertical;
      Edit.Lines.Text := Value;
      // Edit.SelectAll;

      ButtonTop := Edit.Top + Edit.Height + 15;
      ButtonWidth := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do
      begin
        Parent := Form;

        Caption := '确定';

        ModalResult := mrcancel;
        Cancel := True;

        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := '取消';
        if Application.MainForm.Tag <> 1 then
        begin
          if Application.MainForm.Tag = 111 then
            Caption := '取消'
          else
            Caption := '保存结果，下次不用再运算。';
        end;
        ModalResult := mrOk;
        Default := True;

        SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,
          ButtonWidth * 3, ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      if ShowModal = mrOk then
      begin
        Value := Edit.Text;
        Result := True;
      end;
    finally
      Form.Free;
    end;
end;

procedure TFC.runClick(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
begin

  // N2Click(nil); // 原始算法

  // N3Click(nil); // 测试新算法

  N5551foldClick(nil); // 测试新算法

  exit; // 以下不再执行，调式中

  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC')) then
      begin
        self.Components[I].Free;
        continue;
      end;
    end;

  end;

  if 1 = 2 then // 这段令等于序号，要变动
  begin
    /// ////////////////////////
    for I := self.ComponentCount - 1 downto 0 do
    begin
      // if ((self.Components[i] is tshape) or (self.Components[i] is TRzLine)) then
      if ((self.Components[I] is TShape)) then
      begin
        if uppercase(self.Components[I].Name[1]) = 'P' then
        begin
          // tshape(self.Components[i]).BringToFront;

          ttt := TLabel.Create(self);

          ttt.Name := 'FC' + TShape(self.Components[I]).Name;
          ttt.Caption := stringreplace(TShape(self.Components[I]).Name,
            'P', '', []);
          ttt.Left := TShape(self.Components[I]).Left +
            trunc((TShape(self.Components[I]).Width - ttt.Width) / 2);
          ttt.Top := TShape(self.Components[I]).Top +
            trunc((TShape(self.Components[I]).Height - ttt.Height) / 2);
          ttt.Transparent := True;
          ttt.Font.Color := clBlack;
          ttt.Parent := self.ScrollBox1;

          ttt.Font.Name := '宋体';
          ttt.Font.Size := 10;
          ttt.BringToFront;
          continue;
        end;

      end;
    end;
  end;

  // fflag := '原始算法';
  fflag := '原始算法2';

  if (fflag = '原始算法') then // if (fflag = '原始算法') then
  begin
    // if (1 = 1) then
    if (1 = 2) then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
        + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
        + 'from points as p where  p.dprid=' + dprid +
        ') as pp order by pp.cccc desc ';
      ADOQuery1.Open;
      ADOQuery1.First;
      I := -1;
      while not ADOQuery1.Eof do
      begin
        I := I + 1;
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=' +
          inttostr(I) + ',CCC=' + ADOQuery1.FieldByName('cccc').AsString +
          ' where pcode=''' + ADOQuery1.FieldByName('pcode').AsString +
          ''' and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;
        ADOQuery1.Next;
      end;
    end;
    // if (1 = 2) then
    if (1 = 1) then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Text :=
        'update points set C=Cint(right(pcode,len(pcode)-1)),FC=Cint(right(pcode,len(pcode)-1)) where dprid='
        + dprid + ' ';
      ADOQuery2.ExecSQL;
    end;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;
    // exit;
    /// ////以上为初始化 color fourcolor
    adotemp.Close;
    adotemp.Connection := self.ADOConnection1;
    bbb := True;
    maxc := -1;
    while bbb do
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select eee.* from (select e.relationex2,e.id ,e.ecode,e.pcode1,e.pcode2,e.relation,'
        + ' (select p.C from points as p where p.dprid=e.dprid and p.pcode=e.pcode1) as p1c,'
        + ' (select p.fC from points as p where p.dprid=e.dprid and p.pcode=e.pcode1) as p1fc,'
        + '(select p.C from points as p where p.dprid=e.dprid and p.pcode=e.pcode2) as p2c,'
        + '(select p.FC from points as p where p.dprid=e.dprid and p.pcode=e.pcode2) as p2fc    from edges as e where (not e.relationex2) '
        + ' and e.dprid=' + dprid + ') as eee order by eee.p1c,eee.p2c';
      ADOQuery1.Open;
      if ADOQuery1.RecordCount > 0 then
      begin
        bbb := True;
        if maxc = -1 then
        begin
          maxc := ADOQuery1.RecordCount;
          ProgressBar1.Max := maxc;
          ProgressBar1.Min := 0;
          ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
          RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
            '条数据要即将处理......';
          self.ProgressBar1.Visible := True;
          self.RzLabel1.Visible := True;

        end;
        ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
        RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
          '条数据要即将处理......';
        Application.ProcessMessages;
      end
      else
      begin
        bbb := False;
        self.ProgressBar1.Visible := False;
        self.RzLabel1.Visible := False;
      end;
      if bbb then
      begin
        ADOQuery1.First;
        // while not ADOQuery1.Eof do
        // begin
        // ADOQuery1.Next;
        // end;
        fcp1 := ADOQuery1.FieldByName('p1fc').AsInteger;
        fcp2 := ADOQuery1.FieldByName('p2fc').AsInteger;
        cp1 := ADOQuery1.FieldByName('p1c').AsInteger;
        cp2 := ADOQuery1.FieldByName('p2c').AsInteger;
        if (((fcp1 = cp1) and (fcp2 = cp2)) and (fcp1 <> fcp2)) then
        begin

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update points set fc=' + inttostr(fcp1) +
            ' where pcode=''' + ADOQuery1.FieldByName('pcode2')
            .AsString + ''' ';
          ADOQuery2.ExecSQL;

          adotemp.Close;
          adotemp.SQL.Text :=
            'select e.relation,e.id ,e.ecode,e.pcode1,e.pcode2    from edges as e where e.pcode1='''
            + ADOQuery1.FieldByName('pcode2').AsString +
            ''' and ( e.relation) and e.dprid=' + dprid + ' ';
          adotemp.Open;
          adotemp.First;
          while not adotemp.Eof do
          begin
            ADOQuery2.Close;
            ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
              ' where pcode1=''' + ADOQuery1.FieldByName('pcode1').AsString +
              ''' and pcode2=''' + adotemp.FieldByName('pcode2')
              .AsString + '''';
            ADOQuery2.ExecSQL;
            /// //
            // ADOQuery2.Close;
            // ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
            // ' where pcode2=''' + ADOQuery1.FieldByName('pcode1').AsString +
            // ''' and pcode1=''' + adotemp.FieldByName('pcode2').AsString + '''';
            // ADOQuery2.ExecSQL;
            /// //
            adotemp.Next;
          end;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' +
            ADOQuery1.FieldByName('pcode2').AsString + '''  and dprid=' +
            dprid + ' ';
          ADOQuery2.ExecSQL;
        end;

        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update edges set relationex2=true where id=' +
          ADOQuery1.FieldByName('id').AsString + ' ';
        ADOQuery2.ExecSQL;
      end;
    end;
    showmessage('ok');

  end; // if (fflag = '原始算法') then
  /// //////////////////////////////////////////////////////////////////////////////////////////////////
  /// /////////////////////////////////////////////////////////////////////////////////////////////////
  if (fflag = '原始算法2') then // if (fflag = '原始算法2') then
  begin
    // if (1 = 1) then
    // if (1 = 2) then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
        + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
        + 'from points as p where  p.dprid=' + dprid +
        ') as pp order by pp.cccc desc ';
      ADOQuery1.Open;
      ADOQuery1.First;
      I := -1;
      while not ADOQuery1.Eof do
      begin
        I := I + 1;
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=' +
          inttostr(I) + ',CCC=' + ADOQuery1.FieldByName('cccc').AsString +
          ' where pcode=''' + ADOQuery1.FieldByName('pcode').AsString +
          ''' and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;
        ADOQuery1.Next;
      end;
    end;

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;
    // exit;
    /// ////以上为初始化 color fourcolor
    adotemp.Close;
    adotemp.Connection := self.ADOConnection1;
    bbb := True;
    maxc := -1;
    while bbb do
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select eee.* from (select e.relationex2,e.id ,e.ecode,e.pcode1,e.pcode2,e.relation,'
        + ' (select p.C from points as p where p.dprid=e.dprid and p.pcode=e.pcode1) as p1c,'
        + ' (select p.fC from points as p where p.dprid=e.dprid and p.pcode=e.pcode1) as p1fc,'
        + '(select p.C from points as p where p.dprid=e.dprid and p.pcode=e.pcode2) as p2c,'
        + '(select p.FC from points as p where p.dprid=e.dprid and p.pcode=e.pcode2) as p2fc '
        + '   from edges as e where (not e.relationex2) ' + ' and e.dprid=' +
        dprid + ') as eee order by eee.p1c,eee.p2c';
      ADOQuery1.Open;
      if ADOQuery1.RecordCount > 0 then
      begin
        bbb := True;
        if maxc = -1 then
        begin
          maxc := ADOQuery1.RecordCount;
          ProgressBar1.Max := maxc;
          ProgressBar1.Min := 0;
          ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
          RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
            '条数据要即将处理......';
          self.ProgressBar1.Visible := True;
          self.RzLabel1.Visible := True;

        end;
        ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
        RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
          '条数据要即将处理......';
        Application.ProcessMessages;
      end
      else
      begin
        bbb := False;
        self.ProgressBar1.Visible := False;
        self.RzLabel1.Visible := False;
      end;
      if bbb then
      begin
        ADOQuery1.First;
        // while not ADOQuery1.Eof do
        // begin
        // ADOQuery1.Next;
        // end;
        fcp1 := ADOQuery1.FieldByName('p1fc').AsInteger;
        fcp2 := ADOQuery1.FieldByName('p2fc').AsInteger;
        cp1 := ADOQuery1.FieldByName('p1c').AsInteger;
        cp2 := ADOQuery1.FieldByName('p2c').AsInteger;
        if (((fcp1 = cp1) and (fcp2 = cp2)) and (fcp1 < fcp2)) then
        begin

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update points set fc=' + inttostr(fcp1) +
            ' where pcode=''' + ADOQuery1.FieldByName('pcode2')
            .AsString + ''' ';
          ADOQuery2.ExecSQL;

          adotemp.Close;
          adotemp.SQL.Text :=
            'select e.relation,e.id ,e.ecode,e.pcode1,e.pcode2    from edges as e where e.pcode1='''
            + ADOQuery1.FieldByName('pcode2').AsString +
            ''' and ( e.relation) and e.dprid=' + dprid + ' ';
          adotemp.Open;
          adotemp.First;
          while not adotemp.Eof do
          begin
            ADOQuery2.Close;
            ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
              ' where pcode1=''' + ADOQuery1.FieldByName('pcode1').AsString +
              ''' and pcode2=''' + adotemp.FieldByName('pcode2')
              .AsString + '''';
            ADOQuery2.ExecSQL;
            /// //
            ADOQuery2.Close;
            ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
              ' where pcode2=''' + ADOQuery1.FieldByName('pcode1').AsString +
              ''' and pcode1=''' + adotemp.FieldByName('pcode2')
              .AsString + '''';
            ADOQuery2.ExecSQL;
            /// //
            adotemp.Next;
          end;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' +
            ADOQuery1.FieldByName('pcode2').AsString + '''  and dprid=' +
            dprid + ' ';
          ADOQuery2.ExecSQL;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text :=
            'update edges set relationex2=true where pcode2=''' +
            ADOQuery1.FieldByName('pcode2').AsString + '''  and dprid=' +
            dprid + ' ';
          ADOQuery2.ExecSQL;

        end;
        // if (1 = 2) then
        if (((fcp1 = cp1) and (fcp2 = cp2)) and (fcp1 > fcp2)) then
        begin

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update points set fc=' + inttostr(fcp2) +
            ' where pcode=''' + ADOQuery1.FieldByName('pcode1')
            .AsString + ''' ';
          ADOQuery2.ExecSQL;

          adotemp.Close;
          adotemp.SQL.Text :=
            'select e.relation,e.id ,e.ecode,e.pcode1,e.pcode2    from edges as e where e.pcode2='''
            + ADOQuery1.FieldByName('pcode1').AsString +
            ''' and ( e.relation) and e.dprid=' + dprid + ' ';
          adotemp.Open;
          adotemp.First;
          while not adotemp.Eof do
          begin
            ADOQuery2.Close;
            ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
              ' where pcode1=''' + ADOQuery1.FieldByName('pcode1').AsString +
              ''' and pcode2=''' + adotemp.FieldByName('pcode2')
              .AsString + '''';
            ADOQuery2.ExecSQL;
            /// //
            ADOQuery2.Close;
            ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
              ' where pcode2=''' + ADOQuery1.FieldByName('pcode1').AsString +
              ''' and pcode1=''' + adotemp.FieldByName('pcode2')
              .AsString + '''';
            ADOQuery2.ExecSQL;
            /// //
            adotemp.Next;
          end;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' +
            ADOQuery1.FieldByName('pcode1').AsString + '''  and dprid=' +
            dprid + ' ';
          ADOQuery2.ExecSQL;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text :=
            'update edges set relationex2=true where pcode2=''' +
            ADOQuery1.FieldByName('pcode1').AsString + '''  and dprid=' +
            dprid + ' ';
          ADOQuery2.ExecSQL;

        end;
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update edges set relationex2=true where id=' +
          ADOQuery1.FieldByName('id').AsString + ' ';
        ADOQuery2.ExecSQL;
      end;
    end;
    // showmessage('ok');

  end; // if (fflag = '原始算法2') then

  refreshhClick(nil);

  adotemp.Close;
  adotemp.SQL.Text :=
    'select min(p.fc) as fff,count(*) as cccount    from points as p where  p.dprid='
    + dprid + ' group by p.fc ';
  adotemp.Open;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('最后剩余如下' + inttostr(adotemp.RecordCount) + '种颜色：');
  adotemp.First;
  while not adotemp.Eof do
  begin
    Memo1.Lines.Add('颜色：' + (adotemp.FieldByName('fff').AsString) + '  数量：' +
      adotemp.FieldByName('cccount').AsString);
    adotemp.Next;
  end;
end;

procedure TFC.Button1Click(Sender: TObject);
var
  www1: TMemoryStream;
begin

  if not FileExists('说明.txt') then
  begin
    Memo_SaveToTxT.Lines.SaveToFile('说明.txt');
  end;
  if FileExists('说明.txt') then
  begin
    ShellExecute(self.Handle, 'open', '说明.txt', '', nil, SW_SHOWNORMAL);
  end
  else
    showmessage('找不到说明文件');
end;

procedure TFC.FormCreate(Sender: TObject);
begin

  MyLineColor := clGrayText; // clSilver;
  // refreshhClick(nil);
  AllPath := TstringList.Create;
  AllPath_ := TstringList.Create;
  tempList := TstringList.Create;
  PPP := TstringList.Create;

  shiftPointsB := False;
  shiftEdgesB := False;
  shiftPointsL := TstringList.Create;
  shiftEdgesL := TstringList.Create;
  LabelsCaptions := TstringList.Create;
end;

procedure TFC.RadioButton1Click(Sender: TObject);
begin
  dprid := demoid; // 演示
  self.Tag := 1;
  self.Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '演示地图.jpg');
  refreshhClick(nil);
end;

procedure TFC.RadioButton2Click(Sender: TObject);
begin
  dprid := userid; // 用户
  if FFF = 'OK' then
    self.Tag := 111
  else
    self.Tag := 0;
  self.Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '用户地图.jpg');
  refreshhClick(nil);
end;

procedure TFC.pointsXYposClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: boolean;
  I: Integer;
begin
  if dprid = userid then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'select * from points where dprid=' + userid;
    ADOQuery1.Open;
    if ADOQuery1.RecordCount = 0 then
    begin
      NewString := '';
      ClickedOK := InputQuery('总质点个数不能小于6个', '请输入总的质点个数', NewString);
      if ClickedOK then
      begin
        if strtoint(NewString) < 6 then
          exit;
        ProgressBar1.Visible := True;
        ProgressBar1.Min := 0; // ：=1，结果出错于0时。
        ProgressBar1.Max := strtoint(NewString);
        for I := 1 to strtoint(NewString) do
        begin
          ADOQuery1.Append;
          ADOQuery1.FieldByName('dprid').AsString := dprid;
          ADOQuery1.FieldByName('pcode').AsString := 'P' + inttostr(I);
          ADOQuery1.FieldByName('pname').AsString := 'P' + inttostr(I);
          ADOQuery1.FieldByName('px').AsInteger := 100 + I * 10;
          ADOQuery1.FieldByName('py').AsInteger := 100 + I * 10;
          ADOQuery1.Post;
          ProgressBar1.Position := I;
        end;
        ProgressBar1.Visible := False;
      end;

      if dprid = userid then
      begin
        ADOQuery1.Close;
        ADOQuery1.SQL.Text := 'select * from edges where dprid=' + userid;
        ADOQuery1.Open;
        if ADOQuery1.RecordCount = 0 then
        begin

          ADOQuery3.Close;
          ADOQuery3.SQL.Text := 'select * from points where dprid=' + userid +
            '  order by id';
          ADOQuery3.Open;
          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'select * from points where dprid=' + userid +
            '  order by id';
          ADOQuery2.Open;
          ADOQuery2.First;
          ProgressBar1.Visible := True;
          ProgressBar1.Min := 0;
          ProgressBar1.Position := 0;
          ProgressBar1.Max := ADOQuery3.RecordCount * ADOQuery2.RecordCount;
          while not ADOQuery2.Eof do
          begin
            ADOQuery3.First;
            while not ADOQuery3.Eof do
            begin
              ProgressBar1.Position := ProgressBar1.Position + 1;
              if ADOQuery3.FieldByName('id').AsInteger <=
                ADOQuery2.FieldByName('id').AsInteger then
              begin
                ADOQuery3.Next;
                continue;
              end;

              ADOQuery1.Append;

              ADOQuery1.FieldByName('dprid').AsString := userid;
              ADOQuery1.FieldByName('ecode').AsString :=
                ADOQuery2.FieldByName('pcode').AsString +
                ADOQuery3.FieldByName('pcode').AsString;
              ADOQuery1.FieldByName('pcode1').AsString :=
                ADOQuery2.FieldByName('pcode').AsString;
              ADOQuery1.FieldByName('pcode2').AsString :=
                ADOQuery3.FieldByName('pcode').AsString;
              ADOQuery1.FieldByName('pname1').AsString :=
                ADOQuery2.FieldByName('pname').AsString;
              ADOQuery1.FieldByName('pname2').AsString :=
                ADOQuery3.FieldByName('pname').AsString;
              ADOQuery1.FieldByName('Relation').AsBoolean := False;
              // ADOQuery1.FieldByName('direct').AsString := '双向或者无方向<-->';

              ADOQuery1.Post;

              ADOQuery3.Next;
            end;
            ADOQuery2.Next;
          end;

        end;
      end;

      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'select * from points where dprid=' + userid +
        '  order by id';
      ADOQuery2.Open;
      ADOQuery2.First;
      ProgressBar1.Visible := True;
      ProgressBar1.Min := 0;
      ProgressBar1.Position := 0;
      ProgressBar1.Max := ADOQuery2.RecordCount;
      while not ADOQuery2.Eof do
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        ADOQuery1.Close;
        ADOQuery1.SQL.Text := 'update edges set pname1="' +
          ADOQuery2.FieldByName('pname').AsString + '" where dprid=' + userid +
          ' and pcode1="' + ADOQuery2.FieldByName('pcode').AsString + '"';
        ADOQuery1.ExecSQL;
        ADOQuery1.Close;
        ADOQuery1.SQL.Text := 'update edges set pname2="' +
          ADOQuery2.FieldByName('pname').AsString + '" where dprid=' + userid +
          ' and pcode2="' + ADOQuery2.FieldByName('pcode').AsString + '"';
        ADOQuery1.ExecSQL;
        ADOQuery2.Next;
      end;

    end
    else if ADOQuery1.RecordCount > 0 then
    begin
      NewString := '';
      ClickedOK := InputQuery('是否要增加一个质点', '新的质点坐标x=500;y=500', NewString);
      if ClickedOK then
      begin
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'select * from points where dprid=' + userid +
          '  order by id';
        ADOQuery2.Open;
        ADOQuery1.Append;
        ADOQuery1.FieldByName('dprid').AsString := dprid;
        ADOQuery1.FieldByName('pcode').AsString :=
          'P' + inttostr(ADOQuery1.RecordCount + 1);
        ADOQuery1.FieldByName('pname').AsString :=
          'P' + inttostr(ADOQuery1.RecordCount + 1);
        ADOQuery1.FieldByName('px').AsInteger := 500;
        ADOQuery1.FieldByName('py').AsInteger := 500;
        ADOQuery1.Post;

        ADOQuery3.Close;
        ADOQuery3.SQL.Text := 'select * from edges where dprid=' + userid;
        ADOQuery3.Open;

        ADOQuery2.First;

        while not ADOQuery2.Eof do
        begin

          ADOQuery3.Append;

          ADOQuery3.FieldByName('dprid').AsString := userid;
          ADOQuery3.FieldByName('ecode').AsString :=
            ADOQuery2.FieldByName('pcode').AsString + ADOQuery1.FieldByName
            ('pcode').AsString;
          ADOQuery3.FieldByName('pcode1').AsString :=
            ADOQuery2.FieldByName('pcode').AsString;
          ADOQuery3.FieldByName('pcode2').AsString :=
            ADOQuery1.FieldByName('pcode').AsString;
          ADOQuery3.FieldByName('pname1').AsString :=
            ADOQuery2.FieldByName('pname').AsString;
          ADOQuery3.FieldByName('pname2').AsString :=
            ADOQuery1.FieldByName('pname').AsString;
          ADOQuery3.FieldByName('Relation').AsBoolean := False;

          ADOQuery3.Post;

          ADOQuery2.Next;
        end;

      end;

    end;

  end;
  refreshhClick(nil);
  U_P.F_P.initdata;
  U_P.F_P.ShowModal;

  refreshhClick(nil);
end;

procedure TFC.edgesssClick(Sender: TObject);
begin
  if dprid = userid then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'select * from edges where dprid=' + userid;
    ADOQuery1.Open;
    if ADOQuery1.RecordCount = 0 then
    begin

      ADOQuery3.Close;
      ADOQuery3.SQL.Text := 'select * from points where dprid=' + userid +
        '  order by id';
      ADOQuery3.Open;
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'select * from points where dprid=' + userid +
        '  order by id';
      ADOQuery2.Open;
      ADOQuery2.First;
      ProgressBar1.Visible := True;
      ProgressBar1.Min := 0;
      ProgressBar1.Position := 0;
      ProgressBar1.Max := ADOQuery3.RecordCount * ADOQuery2.RecordCount;
      while not ADOQuery2.Eof do
      begin
        ADOQuery3.First;
        while not ADOQuery3.Eof do
        begin
          ProgressBar1.Position := ProgressBar1.Position + 1;
          if ADOQuery3.FieldByName('id').AsInteger <= ADOQuery2.FieldByName
            ('id').AsInteger then
          begin
            ADOQuery3.Next;
            continue;
          end;

          ADOQuery1.Append;

          ADOQuery1.FieldByName('dprid').AsString := userid;
          ADOQuery1.FieldByName('ecode').AsString :=
            ADOQuery2.FieldByName('pcode').AsString + ADOQuery3.FieldByName
            ('pcode').AsString;
          ADOQuery1.FieldByName('pcode1').AsString :=
            ADOQuery2.FieldByName('pcode').AsString;
          ADOQuery1.FieldByName('pcode2').AsString :=
            ADOQuery3.FieldByName('pcode').AsString;
          ADOQuery1.FieldByName('pname1').AsString :=
            ADOQuery2.FieldByName('pname').AsString;
          ADOQuery1.FieldByName('pname2').AsString :=
            ADOQuery3.FieldByName('pname').AsString;
          ADOQuery1.FieldByName('Relation').AsBoolean := False;
          // ADOQuery1.FieldByName('direct').AsString := '双向或者无方向<-->';

          ADOQuery1.Post;

          ADOQuery3.Next;
        end;
        ADOQuery2.Next;
      end;

    end;
  end;

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'select * from points where dprid=' + userid +
    '  order by id';
  ADOQuery2.Open;
  ADOQuery2.First;
  ProgressBar1.Visible := True;
  ProgressBar1.Min := 0;
  ProgressBar1.Position := 0;
  ProgressBar1.Max := ADOQuery2.RecordCount;
  while not ADOQuery2.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'update edges set pname1="' + ADOQuery2.FieldByName
      ('pname').AsString + '" where dprid=' + userid + ' and pcode1="' +
      ADOQuery2.FieldByName('pcode').AsString + '"';
    ADOQuery1.ExecSQL;
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'update edges set pname2="' + ADOQuery2.FieldByName
      ('pname').AsString + '" where dprid=' + userid + ' and pcode2="' +
      ADOQuery2.FieldByName('pcode').AsString + '"';
    ADOQuery1.ExecSQL;
    ADOQuery2.Next;
  end;
  // ADOQuery1.Close;
  // ADOQuery1.SQL.Text := 'update edges set direct="双向或者无方向<-->"  ';// where dprid=' + userid ;
  // ADOQuery1.ExecSQL;
  ProgressBar1.Visible := False;
  refreshhClick(nil);
  U_E.F_E.initdata;
  // U_E.F_E.Show;
  U_E.F_E.ShowModal;
  refreshhClick(nil);
end;

procedure TFC.addonepointClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: boolean;
  I: Integer;
begin
  if dprid = userid then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'select * from points where dprid=' + userid;
    ADOQuery1.Open;
    if ADOQuery1.RecordCount > 0 then
    begin
      NewString := '';
      ClickedOK := InputQuery('是否要增加一个质点', '新的质点坐标x=500;y=500', NewString);
      if ClickedOK then
      begin
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'select * from points where dprid=' + userid +
          '  order by id';
        ADOQuery2.Open;
        ADOQuery1.Append;
        ADOQuery1.FieldByName('dprid').AsString := dprid;
        ADOQuery1.FieldByName('pcode').AsString :=
          'P' + inttostr(ADOQuery1.RecordCount + 1);
        ADOQuery1.FieldByName('pname').AsString :=
          'P' + inttostr(ADOQuery1.RecordCount + 1);
        ADOQuery1.FieldByName('px').AsInteger := 500;
        ADOQuery1.FieldByName('py').AsInteger := 500;
        ADOQuery1.Post;

        ADOQuery3.Close;
        ADOQuery3.SQL.Text := 'select * from edges where dprid=' + userid;
        ADOQuery3.Open;

        ADOQuery2.First;

        while not ADOQuery2.Eof do
        begin

          ADOQuery3.Append;

          ADOQuery3.FieldByName('dprid').AsString := userid;
          ADOQuery3.FieldByName('ecode').AsString :=
            ADOQuery2.FieldByName('pcode').AsString + ADOQuery1.FieldByName
            ('pcode').AsString;
          ADOQuery3.FieldByName('pcode1').AsString :=
            ADOQuery2.FieldByName('pcode').AsString;
          ADOQuery3.FieldByName('pcode2').AsString :=
            ADOQuery1.FieldByName('pcode').AsString;
          ADOQuery3.FieldByName('pname1').AsString :=
            ADOQuery2.FieldByName('pname').AsString;
          ADOQuery3.FieldByName('pname2').AsString :=
            ADOQuery1.FieldByName('pname').AsString;
          ADOQuery3.FieldByName('Relation').AsBoolean := False;

          ADOQuery3.Post;

          ADOQuery2.Next;
        end;

      end;

    end;

  end;
  refreshhClick(nil);
  U_P.F_P.initdata;
  U_P.F_P.ShowModal;

  refreshhClick(nil);
end;

procedure TFC.AutorefreshALLP;
var
  ijk, ii: Integer;
  ccolor: string;
  ccclred: TColor;
begin
  // 没有现成的橙色orange，事先自备才可
  if 1 = 2 then
    if ((ccclred = clFuchsia) or (ccclred = cllime) or (ccclred = clyellow) or
      (ccclred = clskyblue) or (ccclred = clsilver)) then
    begin
      if ccolor = '1' then
        ccclred := cllime;
      if ccolor = '2' then
        ccclred := clFuchsia;
      if ccolor = '3' then
        ccclred := clyellow;
      if ccolor = '4' then
        ccclred := clskyblue;
      if ccolor = '5' then
        ccclred := clsilver;

    end;

  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TLabel)) then
      if ((uppercase(TLabel(self.Components[ijk]).Name)[1] +
        uppercase(TLabel(self.Components[ijk]).Name)[2]) = 'FC') then
      begin
        ccolor := TLabel(self.Components[ijk]).Caption;
        ccclred := clOlive;
        if ccolor = '1' then
          ccclred := cllime;
        if ccolor = '2' then
          ccclred := clFuchsia;
        if ccolor = '3' then
          ccclred := clyellow;
        if ccolor = '4' then
          ccclred := clskyblue;
        if ccolor = '5' then
          ccclred := clsilver;

        TLabel(self.Components[ijk]).Color := ccclred; // clred;
        TLabel(self.Components[ijk]).Transparent := False;
        for ii := self.ComponentCount - 1 downto 0 do
        begin
          if ((self.Components[ii] is TShape)) then
          begin
            if uppercase(TLabel(self.Components[ijk]).Name) = 'FC' +
              uppercase(self.Components[ii].Name) then
              TShape(self.Components[ii]).Brush.Color := ccclred; // clred;
          end;
        end;
        Application.ProcessMessages;

      end;
  end;

end;

procedure TFC.BTNexitOutClick(Sender: TObject);
begin
  exitOut := True;
  Close;
end;

procedure TFC.Button4Click(Sender: TObject);
begin
  if not RadioButton2.Checked then
  begin
    showmessage('请先选择用户项目，而不是演示项目');
    exit;
  end;
  if Application.MessageBox('是否清空用户项目数据？', '是否继续？', MB_YESNO) <> IDYES then
    exit;

  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'delete * from points where dprid=' + userid;
  ADOQuery1.ExecSQL;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'delete * from edges where dprid=' + userid + '';
  ADOQuery1.ExecSQL;

  FFF := '';
  self.Tag := 0;
  refreshhClick(nil);
  showmessage('已清空用户项目数据！');
end;

procedure TFC.refreshhClick(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt, FC: TLabel;
  I, www, hhh: Integer;
  lengthcal: real;
  pcode, truelength, curp: string;
  p1x, p1y, p2x, p2y: Integer;
begin
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if ((uppercase(self.Components[I].Name[1]) = 'M') or
        ((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC')) then
      begin
        self.Components[I].Free;
        continue;
      end;
    end;
    if ((self.Components[I] is TShape) or (self.Components[I] is TRzLine)) then
    begin
      if uppercase(self.Components[I].Name[1]) = 'P' then
      begin
        self.Components[I].Free;
        continue;
      end;

    end;
  end;

  truelength := 'length';

  /// /// CheckBox1   显示拓扑图中标签和提示
  /// ///在这里总是显示的，因为用户易误操作，以为无此功能就更大事，这小事不理无妨
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'select * from points where dprid=' + dprid;
  ADOQuery1.Open;
  ADOQuery1.First;
  self.ProgressBar1.Visible := True;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := ADOQuery1.RecordCount;
  ProgressBar1.Position := 0;
  // www:=20;
  // hhh:=20;
  www := trunc(RzSpinEdit1.Value);
  hhh := trunc(RzSpinEdit1.Value);
  while not ADOQuery1.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    PPP := TShape.Create(self);
    PPP.Width := www;
    PPP.Height := hhh;
    PPP.Shape := stCircle;
    PPP.Hint := ADOQuery1.FieldByName('pname').AsString;
    PPP.ShowHint := True;
    PPP.Left := ADOQuery1.FieldByName('px').AsInteger - trunc(www / 2);
    PPP.Top := ADOQuery1.FieldByName('py').AsInteger - trunc(hhh / 2);
    PPP.Name := ADOQuery1.FieldByName('pcode').AsString;
    if ADOQuery1.FieldByName('isbegin').AsBoolean then
      PPP.Brush.Color := clred;
    if ADOQuery1.FieldByName('isend').AsBoolean then
      PPP.Brush.Color := clblue;
    PPP.OnMouseDown := self.Shape1.OnMouseDown;
    PPP.OnMouseMove := self.Shape1.OnMouseMove;
    PPP.OnMouseUp := self.Shape1.OnMouseUp;
    PPP.Parent := self.ScrollBox1;

    // if  self.CheckBox1.Checked then
    begin
      ttt := TLabel.Create(self);
      ttt.Caption := PPP.Hint;
      ttt.Name := 'M' + PPP.Name;
      ttt.Left := PPP.Left + www;
      ttt.Top := PPP.Top;
      ttt.Transparent := True;
      ttt.Font.Color := clBlack;
      ttt.Parent := self.ScrollBox1;
    end;
    if self.CheckBox1.Checked then
      ttt.Visible := True
    else
      ttt.Visible := False;

    FC := TLabel.Create(self);

    FC.Name := 'FC' + PPP.Name;
    FC.Caption := ADOQuery1.FieldByName('FC').AsString;
    FC.Left := PPP.Left + trunc((PPP.Width - FC.Width) / 2);
    FC.Top := PPP.Top + trunc((PPP.Height - FC.Height) / 2);
    FC.Transparent := True;
    FC.Font.Color := clBlack;
    FC.Parent := self.ScrollBox1;

    FC.Font.Name := '宋体';
    FC.Font.Size := 10;
    FC.BringToFront;

    ADOQuery1.Next;
  end;

  ADOQuery1.Close;
  ADOQuery1.SQL.Text :=
    'select e.*,(select p.px  from points as p where p.pcode=e.pcode1 and dprid='
    + dprid + ') as p1x,(select p.px  from points as p where p.pcode=e.pcode2 and dprid='
    + dprid + ') as p2x,' +
    '(select p.py  from points as p where p.pcode=e.pcode1 and dprid=' + dprid +
    ') as p1y,(select p.py  from points as p where p.pcode=e.pcode2 and dprid='
    + dprid + ') as p2y from edges as e where Relation=True and dprid=' + dprid;
  ADOQuery1.Open;
  ADOQuery1.First;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := ADOQuery1.RecordCount;
  ProgressBar1.Position := 0;
  while not ADOQuery1.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    p1x := ADOQuery1.FieldByName('p1x').AsInteger;
    p1y := ADOQuery1.FieldByName('p1y').AsInteger;
    p2x := ADOQuery1.FieldByName('p2x').AsInteger;
    p2y := ADOQuery1.FieldByName('p2y').AsInteger;
    eee := TRzLine.Create(self);
    // eee.Width:=max(abs(p1x-p2x),10);
    // eee.Height:=max(abs(p1y-p2y),10);
    eee.LineWidth := 2;
    eee.ArrowLength := 0;
    if (((Min(p1x, p2x) = p1x) and (Min(p1y, p2y) = p1y)) or
      ((Min(p1x, p2x) = p2x) and (Min(p1y, p2y) = p2y))) then
      eee.LineSlope := lsDown // ;//  lsDown   lsUp
    else
      eee.LineSlope := lsUp;
    eee.Hint := stringreplace
      (format('%f', [ADOQuery1.FieldByName(truelength).AsFloat]),
      '.00', '', []);
    if pos('-', eee.Hint) > 0 then
      eee.Hint := '(' + eee.Hint + ')';
    eee.ShowHint := True;
    eee.Left := Min(p1x, p2x);
    eee.Top := Min(p1y, p2y);
    // eee.Name := ADOQuery1.fieldbyname('ecode').AsString;
    eee.Name := ADOQuery1.FieldByName('ecode').AsString; // + 'E';
    // eee.Caption:=eee.Hint;
    // eee.Caption:='fuck';
    eee.Caption := '';
    /// 高版本在此
    // eee.Font.Assign(RzLine1.Font);
    // 查了很久才找到，原来其字体颜色为白色，所以没显示出来！！
    // 线条垂直时，其CAPTION显示有BUG！不如我自制的标签好！
    eee.Parent := self.ScrollBox1;
    if 1 = 2 then
      if fuckLine = nil then
      begin
        fuckLine := TRzLine.Create(self);
        fuckLine.LineWidth := 2;
        fuckLine.ArrowLength := 0;
        fuckLine.Left := 100;
        fuckLine.Top := 100;
        fuckLine.Width := 100;
        fuckLine.Height := 100;
        fuckLine.LineSlope := lsUp;
        fuckLine.Name := 'RzLine22';
        fuckLine.Caption := 'FUCK';
        fuckLine.LineStyle := psSolid;
        fuckLine.ParentShowHint := False;
        fuckLine.Font.Assign(RzLine1.Font);
        fuckLine.Parent := self.ScrollBox1;
      end;

    // if 1=2 then
    begin
      eee.Width := Max(abs(p1x - p2x), 2); // 先setparent再width=1才终于生效，否则不生效，草。
      eee.Height := Max(abs(p1y - p2y), 2);
      if ((eee.Width = 2) or (eee.Height = 2)) then
        eee.LineWidth := 4;
      eee.Left := Min(p1x, p2x);
      eee.Top := Min(p1y, p2y);
      // eee.Tag := 0;
      // eee.LineColor:=clblue;
      eee.LineColor := MyLineColor;
      eee.OnMouseEnter := self.RzLine1.OnMouseEnter;
      eee.OnMouseLeave := self.RzLine1.OnMouseLeave;
    end;

    /// ///本来这段代码要封装成一个函数，不理了，没体力。。。
    ADOQuery1.Next;
  end;
  ProgressBar1.Visible := False;

  // if 1=2 then
  begin
    /// ////////////////////////
    for I := self.ComponentCount - 1 downto 0 do
    begin
      // if ((self.Components[i] is tshape) or (self.Components[i] is TRzLine)) then
      if ((self.Components[I] is TShape)) then
      begin
        if uppercase(self.Components[I].Name[1]) = 'P' then
        begin
          TShape(self.Components[I]).BringToFront;
          continue;
        end;

      end;

      if ((self.Components[I] is TLabel)) then
      begin
        if ((uppercase(self.Components[I].Name[1]) = 'M') or
          ((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
          .Name[2])) = 'FC')) then
        begin
          TLabel(self.Components[I]).Font.Name := '宋体';
          TLabel(self.Components[I]).Font.Size := 10;
          // tlabel(self.Components[i]).Font.Style:=[fsBold];
          // tlabel(self.Components[i]).Transparent:=true;
          // tlabel(self.Components[i]).Font.Color:=clBlack;
          TLabel(self.Components[I]).BringToFront;
          // tlabel(self.Components[i]).SendToBack;
          Application.ProcessMessages;
          ttt := TLabel(self.Components[I]);
          ttt.Parent := self.ScrollBox1;

          ttt.Font.Name := '宋体';
          ttt.Font.Size := 10;
          ttt.BringToFront;

          continue;
        end;
      end;

    end;
  end;
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC')) then
      begin
        // self.Components[I].Free;
        ttt := TLabel(self.Components[I]);
        ttt.Parent := self.ScrollBox1;

        ttt.Font.Name := '宋体';
        ttt.Font.Size := 10;
        ttt.BringToFront;

        continue;
      end;
    end;

  end;

  adotemp.Close;
  adotemp.SQL.Text :=
    'select min(p.fc) as fff,count(*) as cccount    from points as p where  p.dprid='
    + dprid + ' group by p.fc ';
  adotemp.Open;
  Memo1.Lines.Clear;
  // Memo1.Lines.Add('算法6：穷举法：');
  Memo1.Lines.Add('最后剩余如下' + inttostr(adotemp.RecordCount) + '种颜色：');
  adotemp.First;
  while not adotemp.Eof do
  begin
    Memo1.Lines.Add('颜色：' + (adotemp.FieldByName('fff').AsString) + '  数量：' +
      adotemp.FieldByName('cccount').AsString);
    adotemp.Next;
  end;

  AutorefreshALLP;
end;

procedure TFC.CheckBox1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if uppercase(self.Components[I].Name[1]) = 'M' then
      begin
        if self.CheckBox1.Checked then
          TLabel(self.Components[I]).Visible := True
        else
          TLabel(self.Components[I]).Visible := False;
      end;

    end;

  end;
end;

procedure TFC.drawBMP1Click(Sender: TObject);
var
  www: tbitmap;
  I, j, k, m, n: Integer;
begin
  if self.OpenPictureDialog1.Execute() then
  begin

    www := tbitmap.Create;
    www.LoadFromFile(OpenPictureDialog1.FileName);
    for I := 0 to www.Width - 1 do
      for j := 0 to www.Height - 1 do
      begin // clRed
        // if www.Canvas.Pixels[I, j] <> RGB(255, 0, 0) then
        // www.Canvas.Pixels[I, j] := clwhite;

        if www.Canvas.Pixels[I, j] = RGB(255, 0, 0) then
          // www.Canvas.Pixels[I, j] := clGray;
          www.Canvas.Pixels[I, j] := clblue;
      end;
    www.SaveToFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TFC.savetoLabelcaption;
var
  ijk, ii: Integer;
begin
  LabelsCaptions.Clear;
  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TLabel)) then
    begin
      if ((uppercase(self.Components[ijk].Name[1]) +
        uppercase(self.Components[ijk].Name[2])) = uppercase('FC')) then
      begin
        LabelsCaptions.Add(uppercase(self.Components[ijk].Name) + '=' +
          TLabel(self.Components[ijk]).Caption);
      end;
    end;
  end;

end;

procedure TFC.selectPictureClick(Sender: TObject);
begin
  if self.RadioButton1.Checked then
  begin
    showmessage('用户项目才可以换地图，演示项目不可以换地图');
    exit;
  end;

  if self.OpenPictureDialog1.Execute then
  begin
    self.Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    CopyFile(pchar(OpenPictureDialog1.FileName),
      pchar(extractfilepath(paramstr(0)) + '用户地图.jpg'), False);

  end;
end;

procedure TFC.RadiorefreshhClick(Sender: TObject);
begin
  refreshhClick(nil);
end;

procedure TFC.RadioButton4Click(Sender: TObject);
begin
  refreshhClick(nil);
end;

procedure TFC.FormShow(Sender: TObject);
var
  md5, md50: ansistring;
begin
  ADOConnection1.Close;
  ADOConnection1.Open;

  oriP.X := self.Shape1.Left;
  oriP.Y := self.Shape1.Top;
  wwwname := '开发者：孝感动天/卧冰求鲤';
  // wwwname := '开发者：四色定要治理/四邻不安/相邻必反/草木皆兵/围棋紧箍/不是我~干的/和我无关  ';
  // wwwname := '开发者：不是我/不是我干的，和我无关/与我无关，身无分文/心无罣碍，路人甲/打酱油，老矮丑穷/身矮面丑一米八九  ';
  // wwwname := '开发者：不/不是我/不是我干的/不是我干的好事/孝感动天';
  self.Caption := '四色(定理/猜想)染色算法小软件Version1.11 2025.6.26 ' + wwwname +
    '   广东吴川梅菉';
  Application.Title := self.Caption;
  // 四色定理染色算法小软件Version1.11 2025.6.13 开发者：不是我/不是我干的，和我无关/与我无关，身无分文/心无罣碍，路人甲/打酱油
  // userid := '2';
  // demoid := '1';
  userid := '1';
  demoid := '2';
  dprid := userid;
  if RadioButton1.Checked then
  begin
    dprid := demoid;
    self.Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '演示地图.jpg');
  end;
  if RadioButton2.Checked then
  begin
    dprid := userid;
    self.Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '用户地图.jpg');
  end;
  refreshhClick(nil);
end;

procedure TFC.fromL1Click(Sender: TObject);
begin
  self.fromLabelcaption;
end;

procedure TFC.fromLabelcaption;
var
  ijk, ii: Integer;
begin
  // LabelsCaptions.Clear;
  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TShape)) then
    begin
      if (uppercase(self.Components[ijk].Name[1]) = uppercase('p')) then
      begin
        TShape(self.Components[ijk]).Brush.Color := clwhite; // clred;
      end;
    end;
  end;
  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TLabel)) then
    begin
      if ((uppercase(self.Components[ijk].Name[1]) +
        uppercase(self.Components[ijk].Name[2])) = uppercase('FC')) then
      begin
        // LabelsCaptions.Add(uppercase(self.Components[ijk].Name)+'='+TLabel(self.Components[ijk]).Caption);
        TLabel(self.Components[ijk]).Caption := LabelsCaptions.Values
          [uppercase(self.Components[ijk].Name)];
        TLabel(self.Components[ijk]).Color := clwhite;
        TLabel(self.Components[ijk]).Transparent := True;
        TLabel(self.Components[ijk]).BringToFront;
      end;
    end;
  end;

end;

procedure TFC.fromLabelcaptionC(onlyc: TColor);
var
  ijk, ii: Integer;
begin
  // LabelsCaptions.Clear;
  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TShape)) then
    begin
      if (uppercase(self.Components[ijk].Name[1]) = uppercase('p')) then
      begin
        if TShape(self.Components[ijk]).Brush.Color = onlyc then
          TShape(self.Components[ijk]).Brush.Color := clwhite; // clred;
      end;
    end;
  end;
  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TLabel)) then
    begin
      if ((uppercase(self.Components[ijk].Name[1]) +
        uppercase(self.Components[ijk].Name[2])) = uppercase('FC')) then
      begin
        // LabelsCaptions.Add(uppercase(self.Components[ijk].Name)+'='+TLabel(self.Components[ijk]).Caption);
        if TLabel(self.Components[ijk]).Color = onlyc then
        begin
          TLabel(self.Components[ijk]).Caption := LabelsCaptions.Values
            [uppercase(self.Components[ijk].Name)];
          TLabel(self.Components[ijk]).Color := clwhite;
          TLabel(self.Components[ijk]).Transparent := True;
          TLabel(self.Components[ijk]).BringToFront;
        end;
      end;
    end;
  end;

end;

procedure TFC.fromLred1Click(Sender: TObject);
begin
  self.fromLabelcaptionC(clred);
end;

procedure TFC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AllPath.Free;
  tempList.Free;
  PPP.Free;
  shiftPointsL.Free;
  shiftEdgesL.Free;
  LabelsCaptions.Free;
end;

procedure TFC.help2Click(Sender: TObject);
begin

  U_OK.F_OK.initdata;
  U_OK.F_OK.ShowModal;
end;

procedure TFC.houseBirds(Sender: TObject; AD: string);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh, curcolor: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag, id, pc1, pc2: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb, ggg: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
  curp0, nextcolor, aroundcolor, nextp: string;
  function seleP0: string;
  var
    I: Integer;
  begin
    for I := self.ComponentCount - 1 downto 0 do
    begin
      if ((self.Components[I] is TLabel)) then
      begin
        if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components
          [I].Name[2])) = 'FC')) then
        begin
          self.Components[I].Free;
          continue;
        end;
      end;
    end;
    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
      + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
      + 'from points as p where  p.dprid=' + dprid +
    // ') as pp order by pp.cccc desc '; // 若不用倒序，实测用色更多
    // ') as pp order by pp.cccc '; // 若不用倒序，实测用色更少！！！
      ') as pp order by pp.cccc ' + AD;

    ADOQuery1.Open;
    ADOQuery1.First;
    Result := ADOQuery1.FieldByName('pcode').AsString;
    I := -1;
    while not ADOQuery1.Eof do
    begin
      I := I + 1;
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=0' +
      /// FC=0这里与边数倒序法不同
        ',CCC=' + ADOQuery1.FieldByName('cccc').AsString + ' where pcode=''' +
        ADOQuery1.FieldByName('pcode').AsString + ''' and dprid=' + dprid + ' ';
      ADOQuery2.ExecSQL;
      ADOQuery1.Next;
    end;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;
    /// ////以上为初始化 color fourcolor
  end;
  function seleP: string;
  var
    I: Integer;
    sss: string;
  begin

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
      + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
      + 'from points as p where p.fc=0 and p.dprid=' + dprid +
    // ') as pp order by pp.cccc desc '; // 若不用倒序，实测用色更多
    // ') as pp order by pp.cccc '; // 若不用倒序，实测用色更少！！！
      ') as pp order by pp.cccc ' + AD;
    ADOQuery1.Open;
    ADOQuery1.First;
    sss := ADOQuery1.FieldByName('pcode').AsString;
    aroundcolor := ';';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select min(e.p2fc) as cc  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
      + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
      + ' where e.dprid=' + dprid + ' and e.pcode1=''' + sss +
      ''' and e.relation group by e.p2fc';
    ADOQuery1.Open;
    ADOQuery1.First;
    aroundcolor := ';';
    while not ADOQuery1.Eof do
    begin
      aroundcolor := aroundcolor + ';' + ADOQuery1.FieldByName('cc').AsString;
      ADOQuery1.Next;
    end;
    aroundcolor := aroundcolor + ';';
    Result := sss;
  end;
  function color1(curpp, FC: string): string;
  var
    ado1, ado2, adotemp1: TADOQuery;
    g1, b1: boolean;
    cpc1, cpc2: string;
    cfcp1, cfcp2, ccp1, ccp2: Integer;
  begin
    if exitOut then
      exit;
    ado1 := TADOQuery.Create(self);
    ado2 := TADOQuery.Create(self);
    adotemp1 := TADOQuery.Create(self);
    ado1.Connection := self.ADOConnection1;
    ado2.Connection := self.ADOConnection1;
    adotemp1.Connection := self.ADOConnection1;

    ado2.Close;
    ado2.SQL.Text := 'update points set fc=' + (FC) + ' where dprid=' + dprid +
      ' and pcode=''' + curpp + '''';
    ado2.ExecSQL;

    ado2.Close;
    ado2.SQL.Text :=
      'update edges  as e ,points  as p set e.p1c=p.c,e.p1fc=p.fc  where p.dprid=e.dprid and  e.dprid='
      + dprid + '  and e.pcode1=p.pcode';
    ado2.ExecSQL;
    ado2.Close;
    ado2.SQL.Text :=
      'update edges as e ,points as p set e.p2c=p.c,e.p2fc=p.fc  where p.dprid=e.dprid and  e.dprid='
      + dprid + '  and e.pcode2=p.pcode';
    ado2.ExecSQL;

    bbb := True;

    // while bbb do
    begin
      ado1.Close;
      ado1.SQL.Text :=
        'select e.*  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
        + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
        + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpp +
        ''' and e.relation and e.p2fc<>' + (FC);
      ado1.Open;
      ado1.First;
      maxc := -1;
      if ado1.RecordCount = 0 then
      begin
        bbb := False;
        exit;
      end;
      if maxc = -1 then
        maxc := ado1.RecordCount;

      begin
        ProgressBar2.Max := maxc;
        ProgressBar2.Min := 0;
        ProgressBar2.Position := ProgressBar2.Max - ado1.RecordCount;
        self.ProgressBar2.Visible := True;
        RzLabel2.Caption := '颜色 ' + FC;
        self.RzLabel2.Visible := True;
        RzLabel2.BringToFront;

      end;
      Application.ProcessMessages;

      while not ado1.Eof do
      begin
        ProgressBar2.Position := ProgressBar2.Position + 1;
        ado2.Close;
        ado2.SQL.Text :=
          'select e.*  from (select 12 as wayissay,e1.id,  e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
          + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
          + ' where e.dprid=' + dprid + ' and e.pcode1=''' +
          ado1.FieldByName('Pcode2').AsString +
          ''' and e.relation and e.p2fc<>' + (FC);
        ado2.Open;
        ado2.First;

        self.RzLabel3.Visible := True;

        RzLabel3.Caption := '还剩余' + inttostr(ado2.RecordCount) +
          '条数据要即将处理......';
        Application.ProcessMessages;
        while not ado2.Eof do
        begin
          ggg := False;
          // id := ado1.FieldByName('id').AsString;

          fcp1 := ado1.FieldByName('p1fc').AsInteger;
          cp1 := ado1.FieldByName('p1c').AsInteger;
          pc1 := ado1.FieldByName('pcode1').AsString;

          fcp2 := ado2.FieldByName('p2fc').AsInteger;
          cp2 := ado2.FieldByName('p2c').AsInteger;
          pc2 := ado2.FieldByName('pcode2').AsString;

          /// ////下面开始迷芒了。芒种时节迷惘
          // if not((fcp1 > 0) and (fcp2 > 0)) then // 是不是狭义中义相刢

          // 狭义与中义是不是相邻，是无条件乎
          adotemp1.Close;
          adotemp1.SQL.Text :=
            'select e.*  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
            + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
            + ' where e.dprid=' + dprid + ' and e.pcode1=''' + pc1 +
            ''' and e.pcode2=''' + pc2 +
            ''' and (e.relation or e.RelationEX2  )';
          adotemp1.Open; // 从零开始的或曾经刚才已赋值过的，狭义与中义
          if (adotemp1.RecordCount > 0) then
            ggg := True;

          if ((fcp1 = fcp2) and (fcp1 > 0)) then
            ggg := True;

          if ((fcp1 > 0) and (fcp2 > 0)) then
            if 1 = 1 then
            begin
              if not ggg then
              begin

                try
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'drop table www';
                  adotemp1.ExecSQL;
                finally

                end;
                try
                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                    + dprid + ' and e.relation';
                  adotemp1.ExecSQL;
                finally

                end;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p1=true where pcode1 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp1.ExecSQL;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p2=true  where pcode2 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
                adotemp1.ExecSQL;
                adotemp1.Close;
                adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp1.Open;
                if adotemp1.RecordCount > 0 then
                  ggg := True;
              end;

              if not ggg then
              begin

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p2=true where pcode2 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp1.ExecSQL;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p1=true  where pcode1 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
                adotemp1.ExecSQL;
                adotemp1.Close;
                adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp1.Open;
                if adotemp1.RecordCount > 0 then
                  ggg := True;
              end;
            end;

          /// /////////////////////////////

          if not ggg then
            if ((fcp1 > 0) and (fcp2 = 0)) then
              if 1 = 1 then
              begin
                if not ggg then
                begin

                  try
                    adotemp1.Close;
                    adotemp1.SQL.Text := 'drop table www';
                    adotemp1.ExecSQL;
                  finally

                  end;
                  try
                    adotemp1.Close;
                    adotemp1.SQL.Text :=
                      'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                      + dprid + ' and e.relation';
                    adotemp1.ExecSQL;
                  finally

                  end;

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p1=true where pcode1 in (select pcode from points where dprid='
                    + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                  adotemp1.ExecSQL;

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p2=true  where pcode2 =''' + pc2 + ''' ';
                  adotemp1.ExecSQL;
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                  adotemp1.Open;
                  if adotemp1.RecordCount > 0 then
                    ggg := True;
                end;

                if not ggg then
                begin

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p2=true where pcode2 in (select pcode from points where dprid='
                    + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                  adotemp1.ExecSQL;

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p1=true  where pcode1 =''' + pc2 + ''' ';
                  adotemp1.ExecSQL;
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                  adotemp1.Open;
                  if adotemp1.RecordCount > 0 then
                    ggg := True;
                end;
              end;
          // 以下判断是不是广义相邻相连接

          if ggg then // 当成已经相邻，所以处理不同
          begin
            ado2.Next;
            continue;
          end;

          adotemp1.Close;
          adotemp1.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' + pc1 +
            ''' and pcode2=''' + pc2 + '''';

          adotemp1.ExecSQL;
          adotemp1.Close;
          adotemp1.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' + pc2 +
            ''' and pcode2=''' + pc1 + '''';

          adotemp1.ExecSQL;

          adotemp1.Close;
          adotemp1.SQL.Text := 'update points set fc=' + (FC) + '  where dprid='
            + dprid + ' and pcode=''' + pc2 + '''';
          adotemp1.ExecSQL;

          ado2.Next;
          color1(pc2, FC);
        end;

        ado1.Next;
      end;

    end;

    ado1.Free;
    ado2.Free;
    adotemp1.Free;

  end;

begin
  /// ///函数主体开始
  // curp0 := seleP0;
  //
  // color1(curp0, '1');
  // nextp := seleP;
  // while pos(';1;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '1');
  // nextp := seleP;
  // end;
  //
  // // color1(seleP, '2');
  // // nextp := seleP;
  // while pos(';1;', aroundcolor) * pos(';2;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '2');
  // nextp := seleP;
  // end;
  //
  // // color1(seleP, '3');
  // // nextp := seleP;
  // while pos(';1;', aroundcolor) * pos(';2;', aroundcolor) *
  // pos(';3;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '3');
  // nextp := seleP;
  // end;
  // // nextp := seleP;
  // // color1(seleP, '4');
  // while pos(';1;', aroundcolor) * pos(';2;', aroundcolor) *
  // pos(';3;', aroundcolor) * pos(';4;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '4');
  // nextp := seleP;
  // end;
  // // nextp := seleP;
  // while pos(';1;', aroundcolor) * pos(';2;', aroundcolor) *
  // pos(';3;', aroundcolor) * pos(';4;', aroundcolor) *
  // pos(';5;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '5');
  // nextp := seleP;
  // end;
  // color1(seleP, '6');
  // color1(seleP, '7');
  // color1(seleP, '8');
  // color1(seleP, '9');
  // color1(seleP, '10');
  if 1 = 2 then
  begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update points set fc=1  where dprid=' + dprid +
      ' and pcode=''' + curp0 + '''';
    ADOQuery2.ExecSQL;

    ADOQuery2.Close;
    ADOQuery2.SQL.Text :=
      'update edges  as e ,points  as p set e.p1c=p.c,e.p1fc=p.fc  where p.dprid=e.dprid and  e.dprid='
      + dprid + '  and e.pcode1=p.pcode';
    ADOQuery2.ExecSQL;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text :=
      'update edges as e ,points as p set e.p2c=p.c,e.p2fc=p.fc  where p.dprid=e.dprid and  e.dprid='
      + dprid + '  and e.pcode2=p.pcode';
    ADOQuery2.ExecSQL;

    bbb := True;

    // while bbb do
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select e.*  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
        + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
        + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curp0 +
        ''' and e.relation and e.p2fc=0';
      ADOQuery1.Open;
      ADOQuery1.First;
      maxc := -1;
      if ADOQuery1.RecordCount = 0 then
      begin
        bbb := False;
        // break;
      end;
      while not ADOQuery1.Eof do
      begin
        ADOQuery2.Close;
        ADOQuery2.SQL.Text :=
          'select e.*  from (select 12 as wayissay,e1.id,  e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
          + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
          + ' where e.dprid=' + dprid + ' and e.pcode1=''' +
          ADOQuery1.FieldByName('Pcode2').AsString +
          ''' and e.relation and e.p2fc=0';
        ADOQuery2.Open;
        ADOQuery2.First;
        maxc := -1;
        if maxc = -1 then
          maxc := ADOQuery2.RecordCount;

        begin

          ProgressBar1.Max := maxc;
          ProgressBar1.Min := 0;
          ProgressBar1.Position := ProgressBar1.Max - ADOQuery2.RecordCount;
          RzLabel1.Caption := '还剩余' + inttostr(ADOQuery2.RecordCount) +
            '条数据要即将处理......';
          self.ProgressBar1.Visible := True;
          self.RzLabel1.Visible := True;

        end;
        ProgressBar1.Position := ProgressBar1.Max - ADOQuery2.RecordCount;
        RzLabel1.Caption := '还剩余' + inttostr(ADOQuery2.RecordCount) +
          '条数据要即将处理......';
        Application.ProcessMessages;
        while not ADOQuery2.Eof do
        begin
          ggg := False;
          // id := ADOQuery1.FieldByName('id').AsString;

          fcp1 := ADOQuery1.FieldByName('p1fc').AsInteger;
          cp1 := ADOQuery1.FieldByName('p1c').AsInteger;
          pc1 := ADOQuery1.FieldByName('pcode1').AsString;

          fcp2 := ADOQuery2.FieldByName('p2fc').AsInteger;
          cp2 := ADOQuery2.FieldByName('p2c').AsInteger;
          pc2 := ADOQuery2.FieldByName('pcode2').AsString;

          /// ////下面开始迷芒了。芒种时节迷惘
          // if not((fcp1 > 0) and (fcp2 > 0)) then // 是不是狭义中义相刢

          // 狭义与中义是不是相邻，是无条件乎
          adotemp.Close;
          adotemp.SQL.Text :=
            'select e.*  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
            + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
            + ' where e.dprid=' + dprid + ' and e.pcode1=''' + pc1 +
            ''' and e.pcode2=''' + pc2 +
            ''' and (e.relation or e.RelationEX2  )';
          adotemp.Open; // 从零开始的或曾经刚才已赋值过的，狭义与中义
          if (adotemp.RecordCount > 0) then
            ggg := True;

          if ((fcp1 = fcp2) and (fcp1 > 0)) then
            ggg := True;

          if ((fcp1 > 0) and (fcp2 > 0)) then
            if 1 = 1 then
            begin
              if not ggg then
              begin

                try
                  adotemp.Close;
                  adotemp.SQL.Text := 'drop table www';
                  adotemp.ExecSQL;
                finally

                end;
                try
                  adotemp.Close;
                  adotemp.SQL.Text :=
                    'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                    + dprid + ' and e.relation';
                  adotemp.ExecSQL;
                finally

                end;

                adotemp.Close;
                adotemp.SQL.Text :=
                  'update www set p1=true where pcode1 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp.ExecSQL;

                adotemp.Close;
                adotemp.SQL.Text :=
                  'update www set p2=true  where pcode2 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
                adotemp.ExecSQL;
                adotemp.Close;
                adotemp.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp.Open;
                if adotemp.RecordCount > 0 then
                  ggg := True;
              end;

              if not ggg then
              begin

                adotemp.Close;
                adotemp.SQL.Text :=
                  'update www set p2=true where pcode2 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp.ExecSQL;

                adotemp.Close;
                adotemp.SQL.Text :=
                  'update www set p1=true  where pcode1 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
                adotemp.ExecSQL;
                adotemp.Close;
                adotemp.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp.Open;
                if adotemp.RecordCount > 0 then
                  ggg := True;
              end;
            end;

          /// /////////////////////////////

          if not ggg then
            if ((fcp1 > 0) and (fcp2 = 0)) then
              if 1 = 1 then
              begin
                if not ggg then
                begin

                  try
                    adotemp.Close;
                    adotemp.SQL.Text := 'drop table www';
                    adotemp.ExecSQL;
                  finally

                  end;
                  try
                    adotemp.Close;
                    adotemp.SQL.Text :=
                      'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                      + dprid + ' and e.relation';
                    adotemp.ExecSQL;
                  finally

                  end;

                  adotemp.Close;
                  adotemp.SQL.Text :=
                    'update www set p1=true where pcode1 in (select pcode from points where dprid='
                    + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                  adotemp.ExecSQL;

                  adotemp.Close;
                  adotemp.SQL.Text := 'update www set p2=true  where pcode2 ='''
                    + pc2 + ''' ';
                  adotemp.ExecSQL;
                  adotemp.Close;
                  adotemp.SQL.Text := 'select * from www where p1 and p2 ';
                  adotemp.Open;
                  if adotemp.RecordCount > 0 then
                    ggg := True;
                end;

                if not ggg then
                begin

                  adotemp.Close;
                  adotemp.SQL.Text :=
                    'update www set p2=true where pcode2 in (select pcode from points where dprid='
                    + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                  adotemp.ExecSQL;

                  adotemp.Close;
                  adotemp.SQL.Text := 'update www set p1=true  where pcode1 ='''
                    + pc2 + ''' ';
                  adotemp.ExecSQL;
                  adotemp.Close;
                  adotemp.SQL.Text := 'select * from www where p1 and p2 ';
                  adotemp.Open;
                  if adotemp.RecordCount > 0 then
                    ggg := True;
                end;
              end;
          // 以下判断是不是广义相邻相连接

          if ggg then // 当成已经相邻，所以处理不同
          begin
            ADOQuery2.Next;
            continue;
          end;

          adotemp.Close;
          adotemp.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' + pc1 +
            ''' and pcode2=''' + pc2 + '''';

          adotemp.ExecSQL;
          adotemp.Close;
          adotemp.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' + pc2 +
            ''' and pcode2=''' + pc1 + '''';

          adotemp.ExecSQL;

          adotemp.Close;
          adotemp.SQL.Text := 'update points set fc=1  where dprid=' + dprid +
            ' and pcode=''' + pc2 + '''';
          adotemp.ExecSQL;

          ADOQuery2.Next;
        end;

        ADOQuery1.Next;
      end;

    end;
  end;

  curp0 := seleP0;

  color1(curp0, '1');
  // nextp := seleP;
  while True do
  begin
    curcolor := 0;
    nextp := seleP;
    if nextp = '' then
      break;
    while True do
    begin

      curcolor := curcolor + 1;
      if pos(';' + inttostr(curcolor) + ';', aroundcolor) = 0 then
      begin
        color1(nextp, inttostr(curcolor));
        // nextp := seleP;
        break;
      end;
    end;
  end;

  self.ProgressBar2.Visible := False;
  self.RzLabel2.Visible := False;
  self.RzLabel3.Visible := False;
  refreshhClick(nil);

  adotemp.Close;
  adotemp.SQL.Text :=
    'select min(p.fc) as fff,count(*) as cccount    from points as p where  p.dprid='
    + dprid + ' group by p.fc ';
  adotemp.Open;
  Memo1.Lines.Clear;
  // Memo1.Lines.Add('算法2：映像广义马踏全城/马踏飞燕贪心法（最值法）：');
  if AD = ' desc ' then
    Memo1.Lines.Add('算法2：映像广义马踏全城/马踏飞燕贪心法（最小值法顺序）：');
  if AD = ' asc ' then
    Memo1.Lines.Add('算法3：映像广义马踏全城/马踏飞燕贪心法（最大值法倒序）：');
  // Memo1.Lines.Add('最后结果如果是多个孤立的点的不同染色，可能要手工合并成一种颜色');
  Memo1.Lines.Add('最后结果可能不止四色，这个我也说不清楚咋回事，我是按我自想出来的算法来染色地图的');
  Memo1.Lines.Add('最后剩余如下' + inttostr(adotemp.RecordCount) + '种颜色：');
  adotemp.First;
  while not adotemp.Eof do
  begin
    Memo1.Lines.Add('颜色：' + (adotemp.FieldByName('fff').AsString) + '  数量：' +
      adotemp.FieldByName('cccount').AsString);
    adotemp.Next;
  end;
end;

procedure TFC.houseBirdsSUB(Sender: TObject; AD: string);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag, id, pc1, pc2: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb, ggg: boolean;
  fcp1, fcp2, cp1, cp2, maxc, curcolor: Integer;
  curp0, nextcolor, aroundcolor, nextp: string;
  function seleP0: string;
  var
    I: Integer;
  begin
    for I := self.ComponentCount - 1 downto 0 do
    begin
      if ((self.Components[I] is TLabel)) then
      begin
        if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components
          [I].Name[2])) = 'FC')) then
        begin
          self.Components[I].Free;
          continue;
        end;
      end;
    end;
    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
      + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
      + 'from points as p where  p.dprid=' + dprid +
    // ') as pp order by pp.cccc desc '; // 若不用倒序，实测用色更多
    // ') as pp order by pp.cccc '; // 若不用倒序，实测用色更少！！！
      ') as pp order by pp.cccc ' + AD;
    ADOQuery1.Open;
    ADOQuery1.First;
    Result := ADOQuery1.FieldByName('pcode').AsString;
    I := -1;
    while not ADOQuery1.Eof do
    begin
      I := I + 1;
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=0' +
      /// FC=0这里与边数倒序法不同
        ',CCC=' + ADOQuery1.FieldByName('cccc').AsString + ' where pcode=''' +
        ADOQuery1.FieldByName('pcode').AsString + ''' and dprid=' + dprid + ' ';
      ADOQuery2.ExecSQL;
      ADOQuery1.Next;
    end;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;
    /// ////以上为初始化 color fourcolor
  end;
  function seleP: string;
  var
    I: Integer;
    sss: string;
  begin

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
      + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
      + 'from points as p where p.fc=0 and p.dprid=' + dprid +
    // ') as pp order by pp.cccc desc '; // 若不用倒序，实测用色更多
    // ') as pp order by pp.cccc '; // 若不用倒序，实测用色更少！！！
      ') as pp order by pp.cccc ' + AD;
    ADOQuery1.Open;
    ADOQuery1.First;
    sss := ADOQuery1.FieldByName('pcode').AsString;
    aroundcolor := ';';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select min(e.p2fc) as cc  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
      + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
      + ' where e.dprid=' + dprid + ' and e.pcode1=''' + sss +
      ''' and e.relation group by e.p2fc';
    ADOQuery1.Open;
    ADOQuery1.First;
    aroundcolor := ';';
    while not ADOQuery1.Eof do
    begin
      aroundcolor := aroundcolor + ';' + ADOQuery1.FieldByName('cc').AsString;
      ADOQuery1.Next;
    end;
    aroundcolor := aroundcolor + ';';
    Result := sss;
  end;
  function color1(curpp, FC: string): string;
  var
    ado1, ado2, adotemp1: TADOQuery;
    g1, b1, iscommit: boolean;
    cpc1, cpc2, onep: string;
    cfcp1, cfcp2, ccp1, ccp2: Integer;
  begin
    if exitOut then
      exit;
    ado1 := TADOQuery.Create(self);
    ado2 := TADOQuery.Create(self);
    adotemp1 := TADOQuery.Create(self);
    ado1.Connection := self.ADOConnection1;
    ado2.Connection := self.ADOConnection1;
    adotemp1.Connection := self.ADOConnection1;

    ado2.Close;
    ado2.SQL.Text := 'update points set fc=' + (FC) + ' where dprid=' + dprid +
      ' and pcode=''' + curpp + ''''; // 连续多个5，有错
    ado2.ExecSQL;

    ado2.Close;
    ado2.SQL.Text :=
      'update edges  as e ,points  as p set e.p1c=p.c,e.p1fc=p.fc  where p.dprid=e.dprid and  e.dprid='
      + dprid + '  and e.pcode1=p.pcode';
    ado2.ExecSQL;
    ado2.Close;
    ado2.SQL.Text :=
      'update edges as e ,points as p set e.p2c=p.c,e.p2fc=p.fc  where p.dprid=e.dprid and  e.dprid='
      + dprid + '  and e.pcode2=p.pcode';
    ado2.ExecSQL;
    adotemp1.Close;
    adotemp1.SQL.Text := 'update points set status=0 where  dprid=' + dprid;
    adotemp1.ExecSQL;
    iscommit := False;
    if not ADOConnection1.InTransaction then
    begin
      ADOConnection1.BeginTrans;
      iscommit := True;
    end;

    bbb := True;
    while bbb do
    begin

      adotemp1.Close;
      adotemp1.SQL.Text :=
        'update points set status=0 where status<>-1 and dprid=' + dprid;
      adotemp1.ExecSQL;

      ado1.Close;
      ado1.SQL.Text :=
        'select e.*  from (select 12 as wayissay,e1.status,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
        + 'select  21 as wayissay,e2.status,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
        + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpp +
        ''' and e.relation and e.status<>-1 ';
      // ''' and e.relation and e.p2fc=0';
      // ''' and e.relation and e.p2fc<>' + (FC);
      // 可能就是因为导致排列顺序不同，从而结果不同乎
      ado1.Open;
      ado1.First;
      maxc := -1;
      if ado1.RecordCount = 0 then
      begin
        bbb := False;
        exit;
      end;
      if maxc = -1 then
        maxc := ado1.RecordCount;

      begin
        ProgressBar2.Max := maxc;
        ProgressBar2.Min := 0;
        ProgressBar2.Position := ProgressBar2.Max - ado1.RecordCount;
        self.ProgressBar2.Visible := True;
        RzLabel2.Caption := '颜色 ' + FC;
        self.RzLabel2.Visible := True;
        RzLabel2.BringToFront;

      end;
      Application.ProcessMessages;

      while not ado1.Eof do
      begin
        ProgressBar2.Position := ProgressBar2.Position + 1;
        ado2.Close;
        ado2.SQL.Text :=
          'select e.*  from (select 12 as wayissay,e1.id,  e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
          + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
          + ' where e.dprid=' + dprid + ' and e.pcode1=''' +
          ado1.FieldByName('Pcode2').AsString +
          ''' and e.relation and e.p2fc=0';
        // ''' and e.relation and e.p2fc<>' + (FC);
        // 可能就是因为导致排列顺序不同，从而结果不同乎
        ado2.Open;
        ado2.First;

        self.RzLabel3.Visible := True;

        RzLabel3.Caption := '还剩余' + inttostr(ado2.RecordCount) +
          '条数据要即将处理......';
        Application.ProcessMessages;
        while not ado2.Eof do
        begin
          ggg := False;
          // id := ado1.FieldByName('id').AsString;

          fcp1 := ado1.FieldByName('p1fc').AsInteger;
          cp1 := ado1.FieldByName('p1c').AsInteger;
          pc1 := ado1.FieldByName('pcode1').AsString;

          fcp2 := ado2.FieldByName('p2fc').AsInteger;
          cp2 := ado2.FieldByName('p2c').AsInteger;
          pc2 := ado2.FieldByName('pcode2').AsString;

          /// ////下面开始迷芒了。芒种时节迷惘
          // if not((fcp1 > 0) and (fcp2 > 0)) then // 是不是狭义中义相刢

          // 狭义与中义是不是相邻，是无条件乎
          adotemp1.Close;
          adotemp1.SQL.Text :=
            'select e.*  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
            + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
            + ' where e.dprid=' + dprid + ' and e.pcode1=''' + pc1 +
            ''' and e.pcode2=''' + pc2 +
            ''' and (e.relation or e.RelationEX2  )';
          adotemp1.Open; // 从零开始的或曾经刚才已赋值过的，狭义与中义
          if (adotemp1.RecordCount > 0) then
            ggg := True;

          if ((fcp1 = fcp2) and (fcp1 > 0)) then
            ggg := True;

          if ((fcp1 > 0) and (fcp2 > 0)) then
            if 1 = 1 then
            begin
              if not ggg then
              begin

                try
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'drop table www';
                  adotemp1.ExecSQL;
                finally

                end;
                try
                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                    + dprid + ' and e.relation';
                  adotemp1.ExecSQL;
                finally

                end;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p1=true where pcode1 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp1.ExecSQL;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p2=true  where pcode2 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
                adotemp1.ExecSQL;
                adotemp1.Close;
                adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp1.Open;
                if adotemp1.RecordCount > 0 then
                  ggg := True;
              end;

              if not ggg then
              begin

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p2=true where pcode2 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp1.ExecSQL;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p1=true  where pcode1 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
                adotemp1.ExecSQL;
                adotemp1.Close;
                adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp1.Open;
                if adotemp1.RecordCount > 0 then
                  ggg := True;
              end;
            end;

          /// /////////////////////////////

          if not ggg then
            if ((fcp1 > 0) and (fcp2 = 0)) then
              if 1 = 1 then
              begin
                if not ggg then
                begin

                  try
                    adotemp1.Close;
                    adotemp1.SQL.Text := 'drop table www';
                    adotemp1.ExecSQL;
                  finally

                  end;
                  try
                    adotemp1.Close;
                    adotemp1.SQL.Text :=
                      'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                      + dprid + ' and e.relation';
                    adotemp1.ExecSQL;
                  finally

                  end;

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p1=true where pcode1 in (select pcode from points where dprid='
                    + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                  adotemp1.ExecSQL;

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p2=true  where pcode2 =''' + pc2 + ''' ';
                  adotemp1.ExecSQL;
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                  adotemp1.Open;
                  if adotemp1.RecordCount > 0 then
                    ggg := True;
                end;

                if not ggg then
                begin

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p2=true where pcode2 in (select pcode from points where dprid='
                    + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                  adotemp1.ExecSQL;

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p1=true  where pcode1 =''' + pc2 + ''' ';
                  adotemp1.ExecSQL;
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                  adotemp1.Open;
                  if adotemp1.RecordCount > 0 then
                    ggg := True;
                end;
              end;
          // 以下判断是不是广义相邻相连接

          if ggg then // 当成已经相邻，所以处理不同
          begin
            ado2.Next;
            continue;
          end;

          adotemp1.Close;
          adotemp1.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' + pc1 +
            ''' and pcode2=''' + pc2 + '''';

          adotemp1.ExecSQL;
          adotemp1.Close;
          adotemp1.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' + pc2 +
            ''' and pcode2=''' + pc1 + '''';

          adotemp1.ExecSQL;

          adotemp1.Close;
          adotemp1.SQL.Text := 'update points set fc=' + (FC) + '  where dprid='
            + dprid + ' and pcode=''' + pc2 + '''';
          adotemp1.ExecSQL;
          adotemp1.Close;
          adotemp1.SQL.Text := 'update points set status=status+1 where dprid='
            + dprid + ' and pcode=''' + pc1 + '''';
          adotemp1.ExecSQL;
          ado2.Next;
          // color1(pc2, FC);
        end;

        ado1.Next;
      end;

      ado1.Close;
      ado1.SQL.Text :=
        'select e.*  from (select 12 as wayissay,e1.status,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
        + 'select  21 as wayissay,e2.status,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
        + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpp +
      // ''' and e.relation  order by (select p.stauts from points as p where p.pcode='''+ curpp + '''';
      // ''' and e.relation and e.p2fc=0';
      // ''' and e.relation and e.p2fc<>' + (FC);
        ''' and e.relation and e.status<>-1 order by e.status ' + AD;

      // 可能就是因为导致排列顺序不同，从而结果不同乎
      ado1.Open;
      ado1.First;
      onep := ado1.FieldByName('pcode2').AsString;
      if not iscommit then
        exit;

      if iscommit then
      begin
        ADOConnection1.RollbackTrans;
        iscommit := False;
      end;

      ProgressBar2.Position := ProgressBar2.Position + 1;
      ado2.Close;
      ado2.SQL.Text :=
        'select e.*  from (select 12 as wayissay,e1.id,  e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
        + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
        + ' where e.dprid=' + dprid + ' and e.pcode1=''' + onep +
        ''' and e.relation and e.p2fc=0';
      // ''' and e.relation and e.p2fc<>' + (FC);
      // 可能就是因为导致排列顺序不同，从而结果不同乎
      ado2.Open;
      ado2.First;

      self.RzLabel3.Visible := True;

      RzLabel3.Caption := '还剩余' + inttostr(ado2.RecordCount) + '条数据要即将处理......';
      Application.ProcessMessages;
      while not ado2.Eof do
      begin
        ggg := False;
        // id := ado1.FieldByName('id').AsString;

        fcp1 := ado1.FieldByName('p1fc').AsInteger;
        cp1 := ado1.FieldByName('p1c').AsInteger;
        pc1 := ado1.FieldByName('pcode1').AsString;

        fcp2 := ado2.FieldByName('p2fc').AsInteger;
        cp2 := ado2.FieldByName('p2c').AsInteger;
        pc2 := ado2.FieldByName('pcode2').AsString;

        /// ////下面开始迷芒了。芒种时节迷惘
        // if not((fcp1 > 0) and (fcp2 > 0)) then // 是不是狭义中义相刢

        // 狭义与中义是不是相邻，是无条件乎
        adotemp1.Close;
        adotemp1.SQL.Text :=
          'select e.*  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
          + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
          + ' where e.dprid=' + dprid + ' and e.pcode1=''' + pc1 +
          ''' and e.pcode2=''' + pc2 + ''' and (e.relation or e.RelationEX2  )';
        adotemp1.Open; // 从零开始的或曾经刚才已赋值过的，狭义与中义
        if (adotemp1.RecordCount > 0) then
          ggg := True;

        if ((fcp1 = fcp2) and (fcp1 > 0)) then
          ggg := True;

        if ((fcp1 > 0) and (fcp2 > 0)) then
          if 1 = 1 then
          begin
            if not ggg then
            begin

              try
                adotemp1.Close;
                adotemp1.SQL.Text := 'drop table www';
                adotemp1.ExecSQL;
              finally

              end;
              try
                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                  + dprid + ' and e.relation';
                adotemp1.ExecSQL;
              finally

              end;

              adotemp1.Close;
              adotemp1.SQL.Text :=
                'update www set p1=true where pcode1 in (select pcode from points where dprid='
                + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
              adotemp1.ExecSQL;

              adotemp1.Close;
              adotemp1.SQL.Text :=
                'update www set p2=true  where pcode2 in (select pcode from points where dprid='
                + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
              adotemp1.ExecSQL;
              adotemp1.Close;
              adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
              adotemp1.Open;
              if adotemp1.RecordCount > 0 then
                ggg := True;
            end;

            if not ggg then
            begin

              adotemp1.Close;
              adotemp1.SQL.Text :=
                'update www set p2=true where pcode2 in (select pcode from points where dprid='
                + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
              adotemp1.ExecSQL;

              adotemp1.Close;
              adotemp1.SQL.Text :=
                'update www set p1=true  where pcode1 in (select pcode from points where dprid='
                + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
              adotemp1.ExecSQL;
              adotemp1.Close;
              adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
              adotemp1.Open;
              if adotemp1.RecordCount > 0 then
                ggg := True;
            end;
          end;

        /// /////////////////////////////

        if not ggg then
          if ((fcp1 > 0) and (fcp2 = 0)) then
            if 1 = 1 then
            begin
              if not ggg then
              begin

                try
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'drop table www';
                  adotemp1.ExecSQL;
                finally

                end;
                try
                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                    + dprid + ' and e.relation';
                  adotemp1.ExecSQL;
                finally

                end;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p1=true where pcode1 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp1.ExecSQL;

                adotemp1.Close;
                adotemp1.SQL.Text := 'update www set p2=true  where pcode2 ='''
                  + pc2 + ''' ';
                adotemp1.ExecSQL;
                adotemp1.Close;
                adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp1.Open;
                if adotemp1.RecordCount > 0 then
                  ggg := True;
              end;

              if not ggg then
              begin

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p2=true where pcode2 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp1.ExecSQL;

                adotemp1.Close;
                adotemp1.SQL.Text := 'update www set p1=true  where pcode1 ='''
                  + pc2 + ''' ';
                adotemp1.ExecSQL;
                adotemp1.Close;
                adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp1.Open;
                if adotemp1.RecordCount > 0 then
                  ggg := True;
              end;
            end;
        // 以下判断是不是广义相邻相连接

        if ggg then // 当成已经相邻，所以处理不同
        begin
          ado2.Next;
          continue;
        end;

        adotemp1.Close;
        adotemp1.SQL.Text := 'update edges set relationex2=true where pcode1='''
          + pc1 + ''' and pcode2=''' + pc2 + '''';

        adotemp1.ExecSQL;
        adotemp1.Close;
        adotemp1.SQL.Text := 'update edges set relationex2=true where pcode1='''
          + pc2 + ''' and pcode2=''' + pc1 + '''';

        adotemp1.ExecSQL;

        adotemp1.Close;
        adotemp1.SQL.Text := 'update points set fc=' + (FC) + '  where dprid=' +
          dprid + ' and pcode=''' + pc2 + '''';
        adotemp1.ExecSQL;
        adotemp1.Close;
        adotemp1.SQL.Text := 'update points set status=status+1 where dprid=' +
          dprid + ' and pcode=''' + pc1 + '''';
        adotemp1.ExecSQL;
        ado2.Next;
        color1(pc2, FC);
      end;

    end;
    /// /////////////////////////////////////////////////////////////////
    ado1.Free;
    ado2.Free;
    adotemp1.Free;

  end;

begin
  /// ///函数主体开始
  curp0 := seleP0;

  color1(curp0, '1');
  // nextp := seleP;
  while True do
  begin
    curcolor := 0;
    nextp := seleP;
    if nextp = '' then
      break;
    while True do
    begin

      curcolor := curcolor + 1;
      if pos(';' + inttostr(curcolor) + ';', aroundcolor) = 0 then
      begin
        color1(nextp, inttostr(curcolor));
        // nextp := seleP;
        break;
      end;
    end;
  end;
  // while pos(';1;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '1');
  // nextp := seleP;
  // end;
  //
  // // color1(seleP, '2');
  // // nextp := seleP;
  // while pos(';1;', aroundcolor) * pos(';2;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '2');
  // nextp := seleP;
  // end;
  //
  // // color1(seleP, '3');
  // // nextp := seleP;
  // while pos(';1;', aroundcolor) * pos(';2;', aroundcolor) *
  // pos(';3;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '3');
  // nextp := seleP;
  // end;
  // // nextp := seleP;
  // // color1(seleP, '4');
  // while pos(';1;', aroundcolor) * pos(';2;', aroundcolor) *
  // pos(';3;', aroundcolor) * pos(';4;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '4');
  // nextp := seleP;
  // end;
  // // nextp := seleP;
  // while pos(';1;', aroundcolor) * pos(';2;', aroundcolor) *
  // pos(';3;', aroundcolor) * pos(';4;', aroundcolor) *
  // pos(';5;', aroundcolor) = 0 do
  // begin
  // if nextp = '' then
  // break;
  // color1(nextp, '5');
  // nextp := seleP;
  // //break;
  // end;
  // color1(seleP, '6');
  // color1(seleP, '7');
  // color1(seleP, '8');
  // color1(seleP, '9');
  // color1(seleP, '10');
  // color1(seleP, '11');
  // color1(seleP, '12');
  // color1(seleP, '13');
  // color1(seleP, '14');
  // color1(seleP, '15');
  // color1(seleP, '16');
  // color1(seleP, '17');

  self.ProgressBar2.Visible := False;
  self.RzLabel2.Visible := False;
  self.RzLabel3.Visible := False;
  refreshhClick(nil);

  adotemp.Close;
  adotemp.SQL.Text :=
    'select min(p.fc) as fff,count(*) as cccount    from points as p where  p.dprid='
    + dprid + ' group by p.fc ';
  adotemp.Open;
  Memo1.Lines.Clear;
  // Memo1.Lines.Add('算法3：映像广义马踏全城/马踏飞燕贪心法(下级统计法)');
  // Memo1.Lines.Add('最后结果如果是多个孤立的点的不同染色，可能要手工合并成一种颜色');
  if AD = ' asc ' then
    Memo1.Lines.Add('算法4：映像广义马踏全城/马踏飞燕贪心法（下级统计法顺序）');

  if AD = ' desc ' then
    Memo1.Lines.Add('算法5：映像广义马踏全城/马踏飞燕贪心法（下级统计法倒序）');

  Memo1.Lines.Add('最后结果可能不止四色，这个我也说不清楚咋回事，我是按我自想出来的算法来染色地图的');
  Memo1.Lines.Add('最后剩余如下' + inttostr(adotemp.RecordCount) + '种颜色：');
  adotemp.First;
  while not adotemp.Eof do
  begin
    Memo1.Lines.Add('颜色：' + (adotemp.FieldByName('fff').AsString) + '  数量：' +
      adotemp.FieldByName('cccount').AsString);
    adotemp.Next;
  end;
end;

procedure TFC.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if shiftPointsB then
    if (Shift = [ssShift]) then
      shiftPointsL.Add(inttostr(X) + ':' + inttostr(Y));

end;

procedure TFC.refreshoneP(ccolor: string; pcode: string; iitime1000: Integer;
  ccclred: TColor);
var
  ijk, ii: Integer;
begin
  // 没有现成的橙色orange，事先自备才可
  if ((ccclred = clFuchsia) or (ccclred = cllime) or (ccclred = clyellow) or
    (ccclred = clskyblue) or (ccclred = clsilver)) then
  begin
    if ccolor = '1' then
      ccclred := cllime;
    if ccolor = '2' then
      ccclred := clFuchsia;
    if ccolor = '3' then
      ccclred := clyellow;
    if ccolor = '4' then
      ccclred := clskyblue;
    if ccolor = '5' then
      ccclred := clsilver;

  end;

  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TLabel)) then
    begin
      if (uppercase(self.Components[ijk].Name) = uppercase('FC' + pcode)) then
      begin
        TLabel(self.Components[ijk]).Caption := ccolor;
        if not(ccclred = clwhite) then
        begin
          TLabel(self.Components[ijk]).Color := ccclred; // clred;
          TLabel(self.Components[ijk]).Transparent := False;
        end;
        Application.ProcessMessages;
        break;
      end;
    end;
  end;
  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TShape)) then
    begin
      if (uppercase(self.Components[ijk].Name) = uppercase(pcode)) then
      begin

        if not(ccclred = clwhite) then
        begin
          TShape(self.Components[ijk]).Brush.Color := ccclred; // clred;

        end;
        Application.ProcessMessages;
        break;
      end;
    end;
  end;
  // iitime1000 := 0;
  iitime1000 := trunc(stepTime.Value);
  ii := Winapi.Windows.GetTickCount;
  while ((Winapi.Windows.GetTickCount - ii) < iitime1000) do
    Application.ProcessMessages;
  // looktime(-1);
  if ccolor = '5' then
    Application.ProcessMessages;

end;

procedure TFC.KePupClick(Sender: TObject);
var
  p1, p2, p3, p4, p5, p6, pp6i, tempi: Integer;
  j1, j2, j3, j4, j5, j6: Integer;
  i00, i01, i02, i03, i04, i05, i06, i07, i08, i09: Integer;
  PP6: array [1 .. 6] of Integer;
  PPcode6: array [1 .. 6] of String;
  RResult, pcode1, pcode2, temps: string;
  pindex1, pindex2: Integer;
  ok, notok: boolean;
  Tcolor4pCode: array [0 .. 4] of string;

  colorindex, orderStep, ijk, stept: Integer;
  isHaveSameColor: boolean;
  Tcolor5pCode: array [0 .. 5] of string; // Tcolor5pCode
  PPcode5ColorIndex: array [0 .. 5] of Integer; // ColorIndex
  Abacd_A, Abacd_b, Abacd_Aa, Abacd_c, Abacd_d: string; // Tcolor5pCode
  a, b, aa, c, d: Integer; // PPcode5Index
  // isTest5Chain: Integer; // 实例且改代码才可测五环肯普链涟漪
  // isTest5ChainReturnOK: Integer; // 实例且改代码才可测五环肯普链涟漪
  isOK: Integer;
begin
  // isTest5Chain := 1; // 实例且改代码才可测五环肯普链涟漪
  // isTest5Chain := 0; // 实例且改代码才可测五环肯普链涟漪
  exitOut := False;
  // if RadioButton1.Checked then
  //
  // TRzButton(Sender).Tag := 1
  // else
  // TRzButton(Sender).Tag := 2;
  // Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '反例.jpg');

  RResult := '';

  // N6Click(nil);

  ADOQuery2.Close;
  ADOQuery2.SQL.Text :=
    'update points set CCC=0,F1=0,C=0,FC=0,C1248C1111=0 where  dprid=' +
    dprid + ' ';
  ADOQuery2.ExecSQL;

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'select  count(1) as pc from points where 1=1 and F1=0 '
    + ' and dprid=' + dprid + ' ';
  ADOQuery2.Open;
  PCount := ADOQuery2.FieldByName('pc').AsInteger;
  /// ////测试五环用   隐去一点
  if isTest5Chain = 1 then
  // if 1 = 2 then
  begin
    PCount := PCount - 1;
    adotemp.Close;
    adotemp.SQL.Text :=
      'update points set dprid=2 where pcode=''P0'' and dprid=' + dprid + ' ';
    // 测试时P0正确是dprid=1，现暂动态改为2来测试
    adotemp.ExecSQL;
    adotemp.Close;
    adotemp.SQL.Text :=
      'update edges set relation=0 where pcode1=''P0'' and dprid=' + dprid +
      ' '; // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
    adotemp.ExecSQL;
  end;
  /// ////测试五环用
  curPcount := PCount + 1;

  while curPcount > 6 do
  begin
    curPcount := curPcount - 1;
    if curPcount = 6 then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'select  * from points where 1=1 and F1=0 ' +
        ' and dprid=' + dprid + ' ';
      ADOQuery2.Open;
      ADOQuery2.First;
      tempi := 0;
      while not ADOQuery2.Eof do
      begin
        tempi := tempi + 1;
        ADOQuery2.Edit;
        ADOQuery2.FieldByName('F1').AsInteger := tempi;
        ADOQuery2.Post;
        ADOQuery2.Next;
      end;
      break;
    end;

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select ww.* from (select w.pcode1,count(1) as pc from (select pcode1,pcode2 from edges where Relation '
      + ' and dprid=' + dprid +
      ' and pcode1 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) + ')  ' +
      ' union select pcode2,pcode1 from edges where relation and dprid=' + dprid
      + ' and pcode1 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) + ')  ' +
    // ' ) as w group by w.pcode1) as ww order by ww.pc';  notok  //测试四环，五环
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1';  //ookk
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
      ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1'; // ookk
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
    // 上面两句SQL有个order by ww.pcode1确不同，有者，可解那个双四环，无者，第二个不可解
    // 无者，可用于测试五环乎，同样算法，因为一个order出现可解与不可解之大事
    if isTest5ChainReturnOK = 1 then
      /// /测试五环用   隐去一点
      ADOQuery1.SQL.Text :=
      /// /测试五环用   隐去一点
        'select ww.* from (select w.pcode1,count(1) as pc from (select pcode1,pcode2 from edges where Relation '
        + ' and dprid=' + dprid +
        ' and pcode1 in (select pcode from points where  dprid=' + dprid +
        'and F1<' + inttostr(curPcount) +
        ') and pcode2 in (select pcode from points where  dprid=' + dprid +
        'and F1<' + inttostr(curPcount) + ')  ' +
        ' union select pcode2,pcode1 from edges where relation and dprid=' +
        dprid + ' and pcode1 in (select pcode from points where  dprid=' + dprid
        + 'and F1<' + inttostr(curPcount) +
        ') and pcode2 in (select pcode from points where  dprid=' + dprid +
        'and F1<' + inttostr(curPcount) + ')  ' +
        ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';
    // notok // 测试四环，五环

    ADOQuery1.Open;
    if ADOQuery1.FieldByName('pc').AsInteger > 5 then
    begin
      showmessage('数据有错了');

    end;

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update points set F1=' + inttostr(curPcount) +
      ',CCC=' + ADOQuery1.FieldByName('pc').AsString + ' where pcode=''' +
      ADOQuery1.FieldByName('pcode1').AsString + ''' and dprid=' + dprid + ' ';
    ADOQuery2.ExecSQL;
    // exit;

  end;
  if curPcount = 6 then
  // showmessage(inttostr(PCount));
  begin
    // 九重循环，九层之台，起于累土，千里之行，始于足下
    ok := False;
    notok := True;

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
      + dprid + ') as pF1, ' +
      '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
      + dprid + ') as pF2 ' + ' from edges where Relation ' + ' and dprid=' +
      dprid + ' ';
    ADOQuery1.Open;

    for p1 := 1 to 4 do
    begin
      for p2 := 1 to 4 do
      begin
        for p3 := 1 to 4 do
        begin
          for p4 := 1 to 4 do
          begin
            for p5 := 1 to 4 do
            begin
              for p6 := 1 to 4 do
              begin
                PP6[1] := p1;
                PP6[2] := p2;
                PP6[3] := p3;
                PP6[4] := p4;
                PP6[5] := p5;
                PP6[6] := p6;
                ok := True;
                notok := True;
                // ADOQuery1.Close;
                // ADOQuery1.SQL.Text :=
                // 'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                // + dprid + ') as pF1, ' +
                // '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                // + dprid + ') as pF2 ' + ' from edges where Relation ' +
                // ' and dprid=' + dprid + ' ';
                // ADOQuery1.Open;
                ADOQuery1.First;
                while not ADOQuery1.Eof do
                begin
                  // pcode1 := ADOQuery1.FieldByName('pF1').AsString;
                  // pcode2 := ADOQuery1.FieldByName('pF2').AsString;
                  pindex1 := ADOQuery1.FieldByName('pF1').AsInteger;
                  pindex2 := ADOQuery1.FieldByName('pF2').AsInteger;
                  if ((pindex1 > 0) and (pindex1 < 7)) then
                    if ((pindex2 > 0) and (pindex2 < 7)) then
                      if PP6[pindex1] = PP6[pindex2] then
                      begin
                        notok := True;
                        ok := False;
                        break;
                      end;
                  ADOQuery1.Next;
                end;
                if ok then
                  for pp6i := 1 to 6 do
                  begin

                    ADOQuery2.Close;
                    ADOQuery2.SQL.Text := 'update points set FC=' +
                      inttostr(PP6[pp6i]) + ' where F1=' + inttostr(pp6i) +
                      ' and dprid=' + dprid + ' ';
                    ADOQuery2.ExecSQL;

                  end;

                if ok then
                  break;
              end;
              if ok then
                break;
            end;
            if ok then
              break;
          end;
          if ok then
            break;
        end;
        if ok then
          break;
      end;
      if ok then
        break;
    end;
  end;
  refreshhClick(nil); // 刷新图中各点
  if not ok then
  begin
    showmessage('此图肯定没有四色解');
    exit;
  end;
  stept := trunc(stepTime.Value);
  // 这里若要刷新开始六点颜值，写代码，不想写，用处不大乎
  adotemp.Close;
  adotemp.SQL.Text := 'select * from points  where F1<7 and dprid=' +
    dprid + ' ';
  adotemp.Open;
  adotemp.First;
  while not adotemp.Eof do
  // for pp6i := 1 to 6 do
  begin
    // PPcode6[pp6i] := adotemp.FieldByName('pcode').AsString;
    refreshoneP(adotemp.FieldByName('fc').AsString, adotemp.FieldByName('pcode')
      .AsString, 0, clMoneyGreen);
    adotemp.Next;
  end;

  if isTest5Chain = 1 then
    /// ////测试五环用
    PCount := PCount + 1;
  while curPcount < (PCount + 1) do
  // while curPcount < PCount do
  begin
    Application.ProcessMessages;
    if exitOut then
    begin
      break;
      Close;
    end;
    Application.ProcessMessages;
    curPcount := curPcount + 1;
    if isTest5Chain = 1 then
      /// ////测试五环用
      if (curPcount = (PCount)) then
      begin
        if 1 = 1 then
        // if 1 = 2 then
        begin
          // curPcount := curPcount + 1;
          adotemp.Close;
          adotemp.SQL.Text :=
            'update points set dprid=1,CCC=5,F1=118,FC=0,C1248C1111=0  where pcode=''P0'' and dprid=2';
          // 测试时P0正确是dprid=1，现暂动态改为2来测试
          adotemp.ExecSQL;
          adotemp.Close;
          adotemp.SQL.Text :=
            'update edges set relation=1 where (ecode=''P0P1'' or ecode=''P0P2'' or ecode=''P0P3''  or  ecode=''P0P4''  or ecode=''P0P5'') and dprid='
            + dprid + ' '; // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
          adotemp.ExecSQL;

        end;
      end;
    /// ////测试五环用

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'select  * from points where 1=1 and F1= ' +
      inttostr(curPcount) + ' and dprid=' + dprid + ' ';
    ADOQuery2.Open;
    tempi := ADOQuery2.FieldByName('CCC').AsInteger;
    if ADOQuery2.FieldByName('pcode').AsString = 'P96' then
      Application.ProcessMessages; // 断点查错，果然不顺也
    if tempi < 4 then
    begin

      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        showmessage('小于4的，可能有错了');
      end
      else
      begin
        adotemp.Close;
        adotemp.SQL.Text := 'update points set FC=' + temps[1] + ' where F1=' +
          inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 4 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
       //  showmessage('4环肯普链树');
        isOK := 0;
        // showmessage('4环肯普链树  必定1234');
        // refreshhClick(nil); // 刷新图中各点
        Tcolor4pCode[0] := ADOQuery2.FieldByName('pcode').AsString;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(inttostr(0), Tcolor4pCode[0], 0, clOlive);
        if (Tcolor4pCode[0] = 'P11') then
          Application.ProcessMessages;
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        ADOQuery1.First;
        while not ADOQuery1.Eof do
        begin
          for colorindex := 1 to 4 do
          begin
            if ADOQuery1.FieldByName('pFC1').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode1').AsString;
            if ADOQuery1.FieldByName('pFC2').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode2').AsString;
          end;
          ADOQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // ('P95', 'P112', 'P51', 'P96', 'P94')最后一点P95
        // C1248C1111 备份字段用也
        adotemp.Close;
        adotemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(inttostr(1), Tcolor4pCode[1], 1000, clYellow);
        // refreshoneP(inttostr(2), Tcolor4pCode[2], 1000, clblue);
        // refreshoneP(inttostr(3), Tcolor4pCode[3], 1000, clLime);
        // refreshoneP(inttostr(4), Tcolor4pCode[4], 1000, clFuchsia);
        refreshoneP(inttostr(1), Tcolor4pCode[1], 0, cllime);
        refreshoneP(inttostr(2), Tcolor4pCode[2], 0, clFuchsia);
        refreshoneP(inttostr(3), Tcolor4pCode[3], 0, clyellow);
        refreshoneP(inttostr(4), Tcolor4pCode[4], 0, clskyblue);
        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        showmessage('4环肯普链树：'+Tcolor4pCode[1]+','+Tcolor4pCode[2]+','+Tcolor4pCode[3]+','+Tcolor4pCode[4]+',');

        self.savetoLabelcaption;
        for p1 := 1 to 4 do // 原色点
        begin
          for p2 := 1 to 4 do // 取其余色时
          begin // 有一个成立就行了
            Application.ProcessMessages;
            if exitOut then
            begin
              break;
              Close;
            end;
            Application.ProcessMessages;
            if p1 = p2 then
              continue;
            orderStep := 1;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid='
              + dprid + ' '; // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set C=0 where  dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            adotemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点
            adotemp.SQL.Text := 'update points set FC=' + inttostr(p2) +
              ',C=1 where pcode=''' + Tcolor4pCode[p1] + ''' and dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            // adotemp.Close;
            // adotemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // adotemp.ExecSQL;
            refreshoneP(inttostr(p2), Tcolor4pCode[p1], 1000, clred);

            // looktime(-1);
            if ((p1 = 4) and (p2 = 1)) then
              Application.ProcessMessages;
            isHaveSameColor := False; // 开始点的邻边
            /// //////////////////////////////////////////////////////
            // select e.* from edges as e where e.dprid=2  and e.relation
            // and
            // (select count(1) from  points as p where p.dprid=2  and p.fc=3
            // and  (p.pcode=e.pcode1 or p.pcode=pcode2) ) >0
            while not isHaveSameColor do
            begin // 肯普链涟渏主体所在也乎
              Application.ProcessMessages;
              if exitOut then
              begin
                break;
                Close;
              end;
              Application.ProcessMessages;
              isHaveSameColor := False;
              isOK := 0;
              // looktime(-1);
              ADOQuery3.Close;
              ADOQuery3.SQL.Text :=
                'select www.* from (select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pFC1, ' +
                '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                + dprid + ') as pFC2, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pF11, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pF12, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pC1, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pC2 ' + ' from edges where Relation ' +
                ' and dprid=' + dprid +
                ') as www where (1=1) and (pC1>0 or pC2>0) and (pF11<' +
                inttostr(curPcount) + ' and  pF12<' + inttostr(curPcount) + ')'
                + ' and ( pFC1=' + inttostr(p1) + ' or pFC1=' + inttostr(p2) +
                ' or pFC2=' + inttostr(p1) + ' or pFC2=' + inttostr(p2) + ')';
              // select www.* from
              // (select edges.*,
              // (select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pFC1,
              // (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid=1) as pFC2
              // (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pF11,
              // (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pF12,
              // (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pC1,
              // (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pC2
              // from edges where Relation  and dprid=1) as www
              // where (1=1) and (pC1>0 or pC2>0) and (pF11<71 and  pF12<71) and ( pFC1=1 or pFC1=2 or pFC2=1 or pFC2=2)
              ADOQuery3.Open;
              ADOQuery3.First;
              while not ADOQuery3.Eof do
              begin
                if (ADOQuery3.FieldByName('pcode1').AsString = 'P11') then
                  Application.ProcessMessages;
                if (ADOQuery3.FieldByName('pFC1')
                  .AsString = ADOQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (ADOQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (ADOQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;

                    end;

                  // if 1=2 then
                  if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode
                    [1]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor4pCode[2]) or
                    (ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode[3])
                    or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode
                    [4])) and ((ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor4pCode[1]) or
                    (ADOQuery3.FieldByName('pcode2').AsString = Tcolor4pCode[2])
                    or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor4pCode
                    [3]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor4pCode[4]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;

                  end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                    if (((ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor4pCode[1]) or
                      (ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode
                      [2]) or (ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor4pCode[3]) or
                      (ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode
                      [4]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                    if (((ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor4pCode[1]) or
                      (ADOQuery3.FieldByName('pcode2').AsString = Tcolor4pCode
                      [2]) or (ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor4pCode[3]) or
                      (ADOQuery3.FieldByName('pcode2').AsString = Tcolor4pCode
                      [4]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode1').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP((inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // ADOQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    break;
                  end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode2').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP((inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    break;
                  end;

                end;
                ADOQuery3.Next;
              end;
              // if 1=2 then
              if isHaveSameColor then
              // if ADOQuery3.RecordCount=0 then
              begin
                Application.ProcessMessages;
                break;
              end;
              if isOK = 0 then
              begin
                Application.ProcessMessages;
                break;
              end;
            end;
            // if 1 = 2 then
            if not isHaveSameColor then
            begin
              Application.ProcessMessages;
              break;
            end;
            if 1 = 2 then
              if isOK = 0 then
              begin
                Application.ProcessMessages;
                break;
              end;
          end;
          if not isHaveSameColor then
          // if isOK = 0 then
          // if ((not isHaveSameColor) and (isOK = 0)) then
          begin
            // adotemp.Close;
            // adotemp.SQL.Text :=
            // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // adotemp.ExecSQL;
            adotemp.Close;
            // Tcolor4pCode[3] := 1; // 肯普链树中心点
            adotemp.SQL.Text := 'update points set FC=' + inttostr(p1) +
              ' where pcode=''' + Tcolor4pCode[0] + ''' and dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            refreshoneP(inttostr(p1), Tcolor4pCode[0], 1000, clred);
            self.savetoLabelcaption;
            break;
          end;
        end;
        self.fromLabelcaption;
        if not isHaveSameColor then
          // if ((not isHaveSameColor) and (isOK = 0)) then
          showmessage('4环肯普链树，这个已经可解了')
        else
        begin
          showmessage('4环肯普链树，仍然不可解');
          adotemp.Close;
          adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' '; // 手工调试时，将两个字段齐改才行
          adotemp.ExecSQL;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
      end
      else
      begin
        adotemp.Close;
        adotemp.SQL.Text := 'update points set FC=' + temps[1] + ' where F1=' +
          inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 5 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        // 5环肯普链树   必定121234
        // showmessage('5环肯普链树   必定121234');
       // showmessage('5环肯普链树');
        isOK := 0;

        Tcolor5pCode[0] := ADOQuery2.FieldByName('pcode').AsString;
        PPcode5ColorIndex[0] := 0;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(inttostr(0), Tcolor5pCode[0], 0, clOlive);
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        ADOQuery1.First;
        colorindex := 0;
        while not ADOQuery1.Eof do
        begin
          colorindex := colorindex + 1;
          // for colorindex := 1 to 5 do
          begin
            if ADOQuery1.FieldByName('pcode1').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode1').AsString;
              PPcode5ColorIndex[colorindex] := ADOQuery1.FieldByName('pFC1')
                .AsInteger;
              // break;
            end;
            if ADOQuery1.FieldByName('pcode2').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode2').AsString;
              PPcode5ColorIndex[colorindex] := ADOQuery1.FieldByName('pFC2')
                .AsInteger;
              // break;
            end;
          end;
          ADOQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // C1248C1111 备份字段用也
        adotemp.Close;
        adotemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        adotemp.ExecSQL;
        refreshoneP(inttostr(PPcode5ColorIndex[1]), Tcolor5pCode[1], 0, cllime);
        refreshoneP(inttostr(PPcode5ColorIndex[2]), Tcolor5pCode[2], 0,
          clFuchsia);
        refreshoneP(inttostr(PPcode5ColorIndex[3]), Tcolor5pCode[3], 0,
          clyellow);
        refreshoneP(inttostr(PPcode5ColorIndex[4]), Tcolor5pCode[4], 0,
          clskyblue);
        refreshoneP(inttostr(PPcode5ColorIndex[5]), Tcolor5pCode[5], 0,
          clsilver);
        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        showmessage('5环肯普链树：'+Tcolor5pCode[1]+','+Tcolor5pCode[2]+','+Tcolor5pCode[3]+','+Tcolor5pCode[4]+','+Tcolor5pCode[5]+',');

        self.savetoLabelcaption;
        // colorindex   0  3  4  1  2  4    12123
        for p1 := 1 to 5 do
          for p2 := (p1 + 1) to 5 do
            if (PPcode5ColorIndex[p1] = PPcode5ColorIndex[p2]) then
            begin
              if (p2 = (p1 + 2)) then
              begin
                Abacd_A := Tcolor5pCode[p1];
                Abacd_Aa := Tcolor5pCode[p2];
                Abacd_b := Tcolor5pCode[p1 + 1];
                Abacd_c := Tcolor5pCode[(p2 + 1) mod 5];
                Abacd_d := Tcolor5pCode[(p2 + 2) mod 5];
                a := p1;
                aa := p2;
                b := p1 + 1;
                c := (p2 + 1) mod 5;
                d := (p2 + 2) mod 5;
                if c = 0 then
                  c := 5;
                if d = 0 then
                  d := 5;
                break;
              end;
              if (p2 = (p1 + 3)) then
              begin
                Abacd_Aa := Tcolor5pCode[p1];
                Abacd_A := Tcolor5pCode[p2];
                Abacd_b := Tcolor5pCode[(p2 + 1) mod 5];
                Abacd_c := Tcolor5pCode[(p1 + 1) mod 5];
                Abacd_d := Tcolor5pCode[(p1 + 2) mod 5];
                a := p2;
                aa := p1;
                b := (p2 + 1) mod 5;
                c := (p1 + 1) mod 5;
                d := (p1 + 2) mod 5;
                if b = 0 then
                  b := 5;
                if c = 0 then
                  c := 5;
                if d = 0 then
                  d := 5;
                break;
              end;
            end;
        if 1 = 2 then
        begin
          if isTest5ChainReturnOK = 1 then
          // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          begin
            /// ////测试五环用
            // 这里可以update具体颜值，以测试五环用
            adotemp.Close;
            adotemp.SQL.Text :=
              'update points set FC=1,C1248C1111=1 where  pcode=''P82'' and  dprid='
              + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          end;
          if isTest5ChainReturnOK = 0 then
          // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          begin
            /// ////测试五环用
            // 这里可以update具体颜值，以测试五环用
            adotemp.Close;
            adotemp.SQL.Text :=
              'update points set FC=3,C1248C1111=3 where  pcode=''P82'' and  dprid='
              + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          end;
        end;
        /// /////////////////////////////////
        Application.ProcessMessages;
        if exitOut then
        begin
          break;
          Close;
        end;
        Application.ProcessMessages;
        for ijk := 1 to 4 do
        begin
          if ijk = 1 then
          begin
            p2 := b; // 原色点
            p1 := c; // 取其余色时
          end;
          if ijk = 2 then
          begin
            p2 := c; // 原色点
            p1 := b; // 取其余色时
          end;
          if ijk = 3 then
          begin
            p2 := b; // 原色点
            p1 := d; // 取其余色时
          end;
          if ijk = 4 then
          begin
            p2 := d; // 原色点
            p1 := b; // 取其余色时
          end;

          // 有一个成立就行了
          Application.ProcessMessages;
          if exitOut then
          begin
            break;
            Close;
          end;
          Application.ProcessMessages;
          // if p1 = p2 then
          // continue;

          // if not(((p2 = b) and (p1 = c)) or ((p2 = b) and (p1 = d))) then
          // continue; // 只有两种情况可向下，这种思维阅读记忆法

          orderStep := 1;
          adotemp.Close;
          adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          adotemp.ExecSQL;
          adotemp.Close;
          adotemp.SQL.Text := 'update points set C=0 where  dprid=' +
            dprid + ' ';
          adotemp.ExecSQL;
          adotemp.Close;
          self.fromLabelcaptionC(clred);
          // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
          adotemp.SQL.Text := 'update points set FC=' +
            inttostr(PPcode5ColorIndex[p2]) + ',C=1 where pcode=''' +
            Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
          adotemp.ExecSQL;
          // adotemp.Close;
          // adotemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
          // dprid + ' ';
          // adotemp.ExecSQL;
          refreshoneP(inttostr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
            1000, clred);

          // looktime(-1);
          // if ((p1 = 4) and (p2 = 1)) then
          // Application.ProcessMessages;
          isHaveSameColor := False; // 开始点的邻边
          /// //////////////////////////////////////////////////////
          // select e.* from edges as e where e.dprid=2  and e.relation
          // and
          // (select count(1) from  points as p where p.dprid=2  and p.fc=3
          // and  (p.pcode=e.pcode1 or p.pcode=pcode2) ) >0
          // while not isHaveSameColor do
          while not isHaveSameColor do
          begin // 肯普链涟渏主体所在也乎
            Application.ProcessMessages;
            if exitOut then
            begin
              break;
              Close;
            end;
            Application.ProcessMessages;
            isHaveSameColor := False;
            isOK := 0;
            // looktime(-1);
            ADOQuery3.Close;
            ADOQuery3.SQL.Text :=
              'select www.* from (select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
              + dprid + ') as pFC1, ' +
              '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
              + dprid + ') as pFC2, ' +
              ' (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
              + dprid + ') as pF11, ' +
              ' (select p.F1  from points as p where p.pcode=edges.pcode2 and p.dprid='
              + dprid + ') as pF12, ' +
              ' (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid='
              + dprid + ') as pC1, ' +
              ' (select p.C  from points as p where p.pcode=edges.pcode2 and p.dprid='
              + dprid + ') as pC2 ' + ' from edges where Relation ' +
              ' and dprid=' + dprid +
              ') as www where (1=1) and (pC1>0 or pC2>0) and (pF11<' +
              inttostr(curPcount) + ' and  pF12<' + inttostr(curPcount) + ')' +
              ' and ( pFC1=' + inttostr(PPcode5ColorIndex[p1]) + ' or pFC1=' +
              inttostr(PPcode5ColorIndex[p2]) + ' or pFC2=' +
              inttostr(PPcode5ColorIndex[p1]) + ' or pFC2=' +
              inttostr(PPcode5ColorIndex[p2]) + ')';
            ADOQuery3.Open;
            ADOQuery3.First;
            while not ADOQuery3.Eof do
            begin
              if ADOQuery3.FieldByName('pcode1').AsString = 'P3' then
                if ADOQuery3.FieldByName('pcode2').AsString = 'P12' then
                  Application.ProcessMessages;

              if (ADOQuery3.FieldByName('pFC1').AsString = ADOQuery3.FieldByName
                ('pFC2').AsString) then
              begin

                if (ADOQuery3.FieldByName('pC1').AsInteger > 0) then
                  if (ADOQuery3.FieldByName('pC2').AsInteger > 0) then
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                // if 1=2 then
                if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[1]
                  ) or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                  [2]) or (ADOQuery3.FieldByName('pcode1')
                  .AsString = Tcolor5pCode[3]) or
                  (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[4])
                  or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[5]
                  )) and ((ADOQuery3.FieldByName('pcode2')
                  .AsString = Tcolor5pCode[1]) or
                  (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[2])
                  or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[3]
                  ) or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                  [4]) or (ADOQuery3.FieldByName('pcode2')
                  .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                begin
                  isHaveSameColor := True;
                  break;
                end;
                if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                  if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [1]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                  if (((ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                    [1]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  adotemp.Close;
                  adotemp.SQL.Text := 'update points set FC=' +
                    (inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') + ',C='
                    + inttostr(orderStep) + ' where pcode=''' +
                    ADOQuery3.FieldByName('pcode1').AsString + ''' and dprid=' +
                    dprid + ' ';
                  adotemp.ExecSQL;
                  refreshoneP((inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                    ADOQuery3.FieldByName('pcode1').AsString, 1000, clred);
                  // looktime(-1);
                  // ADOQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if ADOQuery3.FieldByName('pcode1').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
                if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  adotemp.Close;
                  adotemp.SQL.Text := 'update points set FC=' +
                    (inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') + ',C='
                    + inttostr(orderStep) + ' where pcode=''' +
                    ADOQuery3.FieldByName('pcode2').AsString + ''' and dprid=' +
                    dprid + ' ';
                  adotemp.ExecSQL;
                  refreshoneP((inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                    ADOQuery3.FieldByName('pcode2').AsString, 1000, clred);
                  // looktime(-1);
                  // OQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if ADOQuery3.FieldByName('pcode2').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
              end;
              ADOQuery3.Next;
            end;
            if isHaveSameColor then
            // if ADOQuery3.RecordCount=0 then
            begin
              Application.ProcessMessages;
              break;
            end;
            if isOK = 0 then
            begin
              Application.ProcessMessages;
              break;
            end;
          end;
//          if isHaveSameColor then
//          // if ADOQuery3.RecordCount=0 then
//          begin
//            Application.ProcessMessages;
//            break;
//          end;
//          if isOK = 0 then
//          begin
//            Application.ProcessMessages;
//            break;
//          end;
        end;

        if 1 = 2 then
          if isHaveSameColor then // 如果上面的不成
          begin
            /// /////////////////////////////////
            p2 := b; // 原色点
            p1 := d; // 取其余色时
            // 有一个成立就行了
            Application.ProcessMessages;
            if exitOut then
            begin
              break;
              Close;
            end;
            Application.ProcessMessages;
            // if p1 = p2 then
            // continue;

            // if not(((p2 = b) and (p1 = c)) or ((p2 = b) and (p1 = d))) then
            // continue; // 只有两种情况可向下，这种思维阅读记忆法

            orderStep := 1;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid='
              + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set C=0 where  dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            adotemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
            adotemp.SQL.Text := 'update points set FC=' +
              inttostr(PPcode5ColorIndex[p2]) + ',C=1 where pcode=''' +
              Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
            adotemp.ExecSQL;
            // adotemp.Close;
            // adotemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // adotemp.ExecSQL;
            refreshoneP(inttostr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
              1000, clred);

            // looktime(-1);
            // if ((p1 = 4) and (p2 = 1)) then
            // Application.ProcessMessages;
            isHaveSameColor := False; // 开始点的邻边
            /// //////////////////////////////////////////////////////
            // select e.* from edges as e where e.dprid=2  and e.relation
            // and
            // (select count(1) from  points as p where p.dprid=2  and p.fc=3
            // and  (p.pcode=e.pcode1 or p.pcode=pcode2) ) >0
            // while not isHaveSameColor do
            while not isHaveSameColor do
            begin // 肯普链涟渏主体所在也乎
              Application.ProcessMessages;
              if exitOut then
              begin
                break;
                Close;
              end;
              Application.ProcessMessages;
              isHaveSameColor := False;
              isOK := 0;
              // looktime(-1);
              ADOQuery3.Close;
              ADOQuery3.SQL.Text :=
                'select www.* from (select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pFC1, ' +
                '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                + dprid + ') as pFC2, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pF11, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pF12, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pC1, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pC2 ' + ' from edges where Relation ' +
                ' and dprid=' + dprid +
                ') as www where (1=1) and (pC1>0 or pC2>0) and (pF11<' +
                inttostr(curPcount) + ' and  pF12<' + inttostr(curPcount) + ')'
                + ' and ( pFC1=' + inttostr(PPcode5ColorIndex[p1]) + ' or pFC1='
                + inttostr(PPcode5ColorIndex[p2]) + ' or pFC2=' +
                inttostr(PPcode5ColorIndex[p1]) + ' or pFC2=' +
                inttostr(PPcode5ColorIndex[p2]) + ')';
              ADOQuery3.Open;
              ADOQuery3.First;
              while not ADOQuery3.Eof do
              begin
                if ADOQuery3.FieldByName('pcode1').AsString = 'P3' then
                  if ADOQuery3.FieldByName('pcode2').AsString = 'P12' then
                    Application.ProcessMessages;

                if (ADOQuery3.FieldByName('pFC1')
                  .AsString = ADOQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (ADOQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (ADOQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  // if 1=2 then
                  if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [1]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5])) and
                    ((ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[1]
                    ) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                    if (((ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[1]) or
                      (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                      [2]) or (ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[3]) or
                      (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                      [4]) or (ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                    if (((ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[1]) or
                      (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                      [2]) or (ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[3]) or
                      (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                      [4]) or (ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode1').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP
                      ((inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // ADOQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if ADOQuery3.FieldByName('pcode1').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode2').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP
                      ((inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if ADOQuery3.FieldByName('pcode2').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                end;
                ADOQuery3.Next;
              end;
              if isHaveSameColor then
              // if ADOQuery3.RecordCount=0 then
              begin
                Application.ProcessMessages;
                break;
              end;
              if isOK = 0 then
              begin
                Application.ProcessMessages;
                break;
              end;
            end;

          end; // 如果上面的不成

        if not isHaveSameColor then
        begin
          // adotemp.Close;
          // adotemp.SQL.Text :=
          // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
          // adotemp.ExecSQL;
          adotemp.Close;
          // Tcolor4pCode[3] := 1; // 肯普链树中心点
          adotemp.SQL.Text := 'update points set FC=' +
            inttostr(PPcode5ColorIndex[p1]) + ' where pcode=''' + Tcolor5pCode
            [0] + ''' and dprid=' + dprid + ' ';
          adotemp.ExecSQL;
          refreshoneP(inttostr(PPcode5ColorIndex[p1]), Tcolor5pCode[0],
            1000, clred);
          self.savetoLabelcaption;

        end;

        self.fromLabelcaption;
        if not isHaveSameColor then
          showmessage('5环肯普链树，这个已经可解了')
        else
        begin
          showmessage('5环肯普链树，仍然不可解');
          adotemp.Close;
          adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          adotemp.ExecSQL;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次

        // 5环肯普链树   必定121234
      end
      else
      begin
        adotemp.Close;
        adotemp.SQL.Text := 'update points set FC=' + temps[1] + ' where F1=' +
          inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
  end;

  refreshhClick(nil);
  AutorefreshALLP;
  showmessage('ok');
end;

procedure TFC.KePuPlay5circle222Click(Sender: TObject);
var
  p1, p2, p3, p4, p5, p6, pp6i, tempi: Integer;
  j1, j2, j3, j4, j5, j6: Integer;
  i00, i01, i02, i03, i04, i05, i06, i07, i08, i09: Integer;
  PP6: array [1 .. 6] of Integer;
  PPcode6: array [1 .. 6] of String;
  RResult, pcode1, pcode2, temps: string;
  pindex1, pindex2: Integer;
  ok, notok: boolean;
  Tcolor4pCode: array [0 .. 4] of string;

  colorindex, orderStep, ijk, stept: Integer;
  isHaveSameColor: boolean;
  Tcolor5pCode: array [0 .. 5] of string; // Tcolor5pCode
  PPcode5ColorIndex: array [0 .. 5] of Integer; // ColorIndex
  Abacd_A, Abacd_b, Abacd_Aa, Abacd_c, Abacd_d: string; // Tcolor5pCode
  a, b, aa, c, d: Integer; // PPcode5Index
  isTest5Chain: Integer; // 实例且改代码才可测五环肯普链涟漪
  isOK: Integer;
begin

  showmessage('此为演示数据中弹出五环肯普链的例子，要返回成功还要要代码来修改数据模拟才出现，现实中我找不到实例，演示五环肯普链用');

  isTest5Chain := 1; // 实例且改代码才可测五环肯普链涟漪
  // isTest5Chain := 0; // 实例且改代码才可测五环肯普链涟漪
  exitOut := False;
  if RadioButton1.Checked then
    TRzButton(Sender).Tag := 1
  else
    TRzButton(Sender).Tag := 2;
  // Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '反例.jpg');

  RResult := '';

  N6Click(nil);

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'update points set CCC=0,F1=0,C=0,FC=0 where  dprid=' +
    dprid + ' ';
  ADOQuery2.ExecSQL;

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'select  count(1) as pc from points where 1=1 and F1=0 '
    + ' and dprid=' + dprid + ' ';
  ADOQuery2.Open;
  PCount := ADOQuery2.FieldByName('pc').AsInteger;
  /// ////测试五环用   隐去一点
  if isTest5Chain = 1 then
  // if 1 = 2 then
  begin
    PCount := PCount - 1;
    adotemp.Close;
    adotemp.SQL.Text :=
      'update points set dprid=2 where pcode=''P0'' and dprid=' + dprid + ' ';
    // 测试时P0正确是dprid=1，现暂动态改为2来测试
    adotemp.ExecSQL;
    adotemp.Close;
    adotemp.SQL.Text :=
      'update edges set relation=0 where pcode1=''P0'' and dprid=' + dprid +
      ' '; // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
    adotemp.ExecSQL;
  end;
  /// ////测试五环用
  curPcount := PCount + 1;

  while curPcount > 6 do
  begin
    curPcount := curPcount - 1;
    if curPcount = 6 then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'select  * from points where 1=1 and F1=0 ' +
        ' and dprid=' + dprid + ' ';
      ADOQuery2.Open;
      ADOQuery2.First;
      tempi := 0;
      while not ADOQuery2.Eof do
      begin
        tempi := tempi + 1;
        ADOQuery2.Edit;
        ADOQuery2.FieldByName('F1').AsInteger := tempi;
        ADOQuery2.Post;
        ADOQuery2.Next;
      end;
      break;
    end;

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select ww.* from (select w.pcode1,count(1) as pc from (select pcode1,pcode2 from edges where Relation '
      + ' and dprid=' + dprid +
      ' and pcode1 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) + ')  ' +
      ' union select pcode2,pcode1 from edges where relation and dprid=' + dprid
      + ' and pcode1 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) + ')  ' +
    // ' ) as w group by w.pcode1) as ww order by ww.pc';  notok  //测试四环，五环
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1';  //ookk
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
      ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1'; // ookk
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
    // 上面两句SQL有个order by ww.pcode1确不同，有者，可解那个双四环，无者，第二个不可解
    // 无者，可用于测试五环乎，同样算法，因为一个order出现可解与不可解之大事
    ADOQuery1.Open;
    if ADOQuery1.FieldByName('pc').AsInteger > 5 then
    begin
      showmessage('数据有错了');

    end;

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update points set F1=' + inttostr(curPcount) +
      ',CCC=' + ADOQuery1.FieldByName('pc').AsString + ' where pcode=''' +
      ADOQuery1.FieldByName('pcode1').AsString + ''' and dprid=' + dprid + ' ';
    ADOQuery2.ExecSQL;
    // exit;

  end;
  if curPcount = 6 then
  // showmessage(inttostr(PCount));
  begin
    // 九重循环，九层之台，起于累土，千里之行，始于足下
    ok := False;
    notok := True;

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
      + dprid + ') as pF1, ' +
      '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
      + dprid + ') as pF2 ' + ' from edges where Relation ' + ' and dprid=' +
      dprid + ' ';
    ADOQuery1.Open;

    for p1 := 1 to 4 do
    begin
      for p2 := 1 to 4 do
      begin
        for p3 := 1 to 4 do
        begin
          for p4 := 1 to 4 do
          begin
            for p5 := 1 to 4 do
            begin
              for p6 := 1 to 4 do
              begin
                PP6[1] := p1;
                PP6[2] := p2;
                PP6[3] := p3;
                PP6[4] := p4;
                PP6[5] := p5;
                PP6[6] := p6;
                ok := True;
                notok := True;
                // ADOQuery1.Close;
                // ADOQuery1.SQL.Text :=
                // 'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                // + dprid + ') as pF1, ' +
                // '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                // + dprid + ') as pF2 ' + ' from edges where Relation ' +
                // ' and dprid=' + dprid + ' ';
                // ADOQuery1.Open;
                ADOQuery1.First;
                while not ADOQuery1.Eof do
                begin
                  // pcode1 := ADOQuery1.FieldByName('pF1').AsString;
                  // pcode2 := ADOQuery1.FieldByName('pF2').AsString;
                  pindex1 := ADOQuery1.FieldByName('pF1').AsInteger;
                  pindex2 := ADOQuery1.FieldByName('pF2').AsInteger;
                  if ((pindex1 > 0) and (pindex1 < 7)) then
                    if ((pindex2 > 0) and (pindex2 < 7)) then
                      if PP6[pindex1] = PP6[pindex2] then
                      begin
                        notok := True;
                        ok := False;
                        break;
                      end;
                  ADOQuery1.Next;
                end;
                if ok then
                  for pp6i := 1 to 6 do
                  begin

                    ADOQuery2.Close;
                    ADOQuery2.SQL.Text := 'update points set FC=' +
                      inttostr(PP6[pp6i]) + ' where F1=' + inttostr(pp6i) +
                      ' and dprid=' + dprid + ' ';
                    ADOQuery2.ExecSQL;

                  end;

                if ok then
                  break;
              end;
              if ok then
                break;
            end;
            if ok then
              break;
          end;
          if ok then
            break;
        end;
        if ok then
          break;
      end;
      if ok then
        break;
    end;
  end;
  refreshhClick(nil); // 刷新图中各点
  if not ok then
  begin
    showmessage('此图肯定没有四色解');
    exit;
  end;
  stept := trunc(stepTime.Value);
  // 这里若要刷新开始六点颜值，写代码，不想写，用处不大乎
  adotemp.Close;
  adotemp.SQL.Text := 'select * from points  where F1<7 and dprid=' +
    dprid + ' ';
  adotemp.Open;
  adotemp.First;
  while not adotemp.Eof do
  // for pp6i := 1 to 6 do
  begin
    // PPcode6[pp6i] := adotemp.FieldByName('pcode').AsString;
    refreshoneP(adotemp.FieldByName('fc').AsString, adotemp.FieldByName('pcode')
      .AsString, 0, clMoneyGreen);
    adotemp.Next;
  end;

  while curPcount < (PCount + 2) do
  // while curPcount < PCount do
  begin
    Application.ProcessMessages;
    if exitOut then
    begin
      break;
      Close;
    end;
    Application.ProcessMessages;
    curPcount := curPcount + 1;
    if isTest5Chain = 1 then
      /// ////测试五环用
      if (curPcount = (PCount + 1)) then
      begin
        if 1 = 1 then
        // if 1 = 2 then
        begin
          // curPcount := curPcount + 1;
          adotemp.Close;
          adotemp.SQL.Text :=
            'update points set dprid=1,CCC=5,F1=118,FC=0 where pcode=''P0'' and dprid=2';
          // 测试时P0正确是dprid=1，现暂动态改为2来测试
          adotemp.ExecSQL;
          adotemp.Close;
          adotemp.SQL.Text :=
            'update edges set relation=1 where (ecode=''P0P1'' or ecode=''P0P2'' or ecode=''P0P3''  or  ecode=''P0P4''  or ecode=''P0P5'') and dprid='
            + dprid + ' '; // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
          adotemp.ExecSQL;

        end;
      end;
    /// ////测试五环用

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'select  * from points where 1=1 and F1= ' +
      inttostr(curPcount) + ' and dprid=' + dprid + ' ';
    ADOQuery2.Open;
    tempi := ADOQuery2.FieldByName('CCC').AsInteger;
    if ADOQuery2.FieldByName('pcode').AsString = 'P96' then
      Application.ProcessMessages; // 断点查错，果然不顺也
    if tempi < 4 then
    begin

      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        showmessage('小于4的，可能有错了');
      end
      else
      begin
        adotemp.Close;
        adotemp.SQL.Text := 'update points set FC=' + temps[1] + ' where F1=' +
          inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 4 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
        showmessage('4环肯普链树');
        // showmessage('4环肯普链树  必定1234');
        // refreshhClick(nil); // 刷新图中各点
        Tcolor4pCode[0] := ADOQuery2.FieldByName('pcode').AsString;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(inttostr(0), Tcolor4pCode[0], 0, clOlive);
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        ADOQuery1.First;
        while not ADOQuery1.Eof do
        begin
          for colorindex := 1 to 4 do
          begin
            if ADOQuery1.FieldByName('pFC1').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode1').AsString;
            if ADOQuery1.FieldByName('pFC2').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode2').AsString;
          end;
          ADOQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // C1248C1111 备份字段用也
        adotemp.Close;
        adotemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(inttostr(1), Tcolor4pCode[1], 1000, clYellow);
        // refreshoneP(inttostr(2), Tcolor4pCode[2], 1000, clblue);
        // refreshoneP(inttostr(3), Tcolor4pCode[3], 1000, clLime);
        // refreshoneP(inttostr(4), Tcolor4pCode[4], 1000, clFuchsia);
        refreshoneP(inttostr(1), Tcolor4pCode[1], 0, cllime);
        refreshoneP(inttostr(2), Tcolor4pCode[2], 0, clFuchsia);
        refreshoneP(inttostr(3), Tcolor4pCode[3], 0, clyellow);
        refreshoneP(inttostr(4), Tcolor4pCode[4], 0, clskyblue);
        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        self.savetoLabelcaption;
        for p1 := 1 to 4 do // 原色点
        begin
          for p2 := 1 to 4 do // 取其余色时
          begin // 有一个成立就行了
            Application.ProcessMessages;
            if exitOut then
            begin
              break;
              Close;
            end;
            Application.ProcessMessages;
            if p1 = p2 then
              continue;
            orderStep := 1;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid='
              + dprid + ' '; // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set C=0 where  dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            adotemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点
            adotemp.SQL.Text := 'update points set FC=' + inttostr(p2) +
              ',C=1 where pcode=''' + Tcolor4pCode[p1] + ''' and dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            // adotemp.Close;
            // adotemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // adotemp.ExecSQL;
            refreshoneP(inttostr(p2), Tcolor4pCode[p1], 1000, clred);

            // looktime(-1);
            if ((p1 = 4) and (p2 = 1)) then
              Application.ProcessMessages;
            isHaveSameColor := False; // 开始点的邻边
            /// //////////////////////////////////////////////////////
            // select e.* from edges as e where e.dprid=2  and e.relation
            // and
            // (select count(1) from  points as p where p.dprid=2  and p.fc=3
            // and  (p.pcode=e.pcode1 or p.pcode=pcode2) ) >0
            while not isHaveSameColor do
            begin // 肯普链涟渏主体所在也乎
              Application.ProcessMessages;
              if exitOut then
              begin
                break;
                Close;
              end;
              Application.ProcessMessages;
              isHaveSameColor := False;
              // looktime(-1);
              ADOQuery3.Close;
              ADOQuery3.SQL.Text :=
                'select www.* from (select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pFC1, ' +
                '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                + dprid + ') as pFC2, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pF11, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pF12, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pC1, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pC2 ' + ' from edges where Relation ' +
                ' and dprid=' + dprid +
                ') as www where (1=1) and (pC1>0 or pC2>0) and (pF11<' +
                inttostr(curPcount) + ' and  pF12<' + inttostr(curPcount) + ')'
                + ' and ( pFC1=' + inttostr(p1) + ' or pFC1=' + inttostr(p2) +
                ' or pFC2=' + inttostr(p1) + ' or pFC2=' + inttostr(p2) + ')';
              // select www.* from
              // (select edges.*,
              // (select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pFC1,
              // (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid=1) as pFC2
              // (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pF11,
              // (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pF12,
              // (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pC1,
              // (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pC2
              // from edges where Relation  and dprid=1) as www
              // where (1=1) and (pC1>0 or pC2>0) and (pF11<71 and  pF12<71) and ( pFC1=1 or pFC1=2 or pFC2=1 or pFC2=2)
              ADOQuery3.Open;
              ADOQuery3.First;
              while not ADOQuery3.Eof do
              begin

                if (ADOQuery3.FieldByName('pFC1')
                  .AsString = ADOQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (ADOQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (ADOQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;

                    end;

                  // if 1=2 then
                  if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode
                    [1]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor4pCode[2]) or
                    (ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode[3])
                    or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode
                    [4])) and ((ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor4pCode[1]) or
                    (ADOQuery3.FieldByName('pcode2').AsString = Tcolor4pCode[2])
                    or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor4pCode
                    [3]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor4pCode[4]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;

                  end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode1').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP((inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // ADOQuery3.Next;
                    // continue;
                    isHaveSameColor := True;
                    break;
                  end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode2').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP((inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    isHaveSameColor := True;
                    break;
                  end;

                end;
                ADOQuery3.Next;
              end;
              if not isHaveSameColor then
              // if ADOQuery3.RecordCount=0 then
              begin
                Application.ProcessMessages;
                break;
              end;
            end;
            if not isHaveSameColor then
            begin
              Application.ProcessMessages;
              break;
            end;

          end;
          if not isHaveSameColor then
          begin
            // adotemp.Close;
            // adotemp.SQL.Text :=
            // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // adotemp.ExecSQL;
            adotemp.Close;
            // Tcolor4pCode[3] := 1; // 肯普链树中心点
            adotemp.SQL.Text := 'update points set FC=' + inttostr(p1) +
              ' where pcode=''' + Tcolor4pCode[0] + ''' and dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            refreshoneP(inttostr(p1), Tcolor4pCode[0], 1000, clred);
            self.savetoLabelcaption;
            break;
          end;
        end;
        self.fromLabelcaption;
        if not isHaveSameColor then
          showmessage('4环肯普链树，这个已经可解了')
        else
        begin
          showmessage('4环肯普链树，仍然不可解');
          adotemp.Close;
          adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' '; // 手工调试时，将两个字段齐改才行
          adotemp.ExecSQL;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
      end
      else
      begin
        adotemp.Close;
        adotemp.SQL.Text := 'update points set FC=' + temps[1] + ' where F1=' +
          inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 5 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        // 5环肯普链树   必定121234
        // showmessage('5环肯普链树   必定121234');
        showmessage('5环肯普链树');
        isOK := 0;

        Tcolor5pCode[0] := ADOQuery2.FieldByName('pcode').AsString;
        PPcode5ColorIndex[0] := 0;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(inttostr(0), Tcolor5pCode[0], 0, clOlive);
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        ADOQuery1.First;
        colorindex := 0;
        while not ADOQuery1.Eof do
        begin
          colorindex := colorindex + 1;
          // for colorindex := 1 to 5 do
          begin
            if ADOQuery1.FieldByName('pcode1').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode1').AsString;
              PPcode5ColorIndex[colorindex] := ADOQuery1.FieldByName('pFC1')
                .AsInteger;
              // break;
            end;
            if ADOQuery1.FieldByName('pcode2').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode2').AsString;
              PPcode5ColorIndex[colorindex] := ADOQuery1.FieldByName('pFC2')
                .AsInteger;
              // break;
            end;
          end;
          ADOQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // C1248C1111 备份字段用也
        adotemp.Close;
        adotemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        adotemp.ExecSQL;
        refreshoneP(inttostr(PPcode5ColorIndex[1]), Tcolor5pCode[1], 0, cllime);
        refreshoneP(inttostr(PPcode5ColorIndex[2]), Tcolor5pCode[2], 0,
          clFuchsia);
        refreshoneP(inttostr(PPcode5ColorIndex[3]), Tcolor5pCode[3], 0,
          clyellow);
        refreshoneP(inttostr(PPcode5ColorIndex[4]), Tcolor5pCode[4], 0,
          clskyblue);
        refreshoneP(inttostr(PPcode5ColorIndex[5]), Tcolor5pCode[5], 0,
          clsilver);
        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        self.savetoLabelcaption;
        // colorindex   0  3  4  1  2  4    12123
        for p1 := 1 to 5 do
          for p2 := (p1 + 1) to 5 do
            if (PPcode5ColorIndex[p1] = PPcode5ColorIndex[p2]) then
            begin
              if (p2 = (p1 + 2)) then
              begin
                Abacd_A := Tcolor5pCode[p1];
                Abacd_Aa := Tcolor5pCode[p2];
                Abacd_b := Tcolor5pCode[p1 + 1];
                Abacd_c := Tcolor5pCode[(p2 + 1) mod 5];
                Abacd_d := Tcolor5pCode[(p2 + 2) mod 5];
                a := p1;
                aa := p2;
                b := p1 + 1;
                c := (p2 + 1) mod 5;
                d := (p2 + 2) mod 5;
                if c = 0 then
                  c := 5;
                if d = 0 then
                  d := 5;
                break;
              end;
              if (p2 = (p1 + 3)) then
              begin
                Abacd_Aa := Tcolor5pCode[p1];
                Abacd_A := Tcolor5pCode[p2];
                Abacd_b := Tcolor5pCode[(p2 + 1) mod 5];
                Abacd_c := Tcolor5pCode[(p1 + 1) mod 5];
                Abacd_d := Tcolor5pCode[(p1 + 2) mod 5];
                a := p2;
                aa := p1;
                b := (p2 + 1) mod 5;
                c := (p1 + 1) mod 5;
                d := (p1 + 2) mod 5;
                if b = 0 then
                  b := 5;
                if c = 0 then
                  c := 5;
                if d = 0 then
                  d := 5;
                break;
              end;
            end;
        if 1 = 2 then
        begin
          if isTest5ChainReturnOK = 1 then
          // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          begin
            /// ////测试五环用
            // 这里可以update具体颜值，以测试五环用
            adotemp.Close;
            adotemp.SQL.Text :=
              'update points set FC=1,C1248C1111=1 where  pcode=''P82'' and  dprid='
              + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          end;
          if isTest5ChainReturnOK = 0 then
          // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          begin
            /// ////测试五环用
            // 这里可以update具体颜值，以测试五环用
            adotemp.Close;
            adotemp.SQL.Text :=
              'update points set FC=3,C1248C1111=3 where  pcode=''P82'' and  dprid='
              + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          end;
        end;
        /// /////////////////////////////////
        Application.ProcessMessages;
        if exitOut then
        begin
          break;
          Close;
        end;
        Application.ProcessMessages;
        for ijk := 1 to 4 do
        begin
          if ijk = 1 then
          begin
            p2 := b; // 原色点
            p1 := c; // 取其余色时
          end;
          if ijk = 2 then
          begin
            p2 := c; // 原色点
            p1 := b; // 取其余色时
          end;
          if ijk = 3 then
          begin
            p2 := b; // 原色点
            p1 := d; // 取其余色时
          end;
          if ijk = 4 then
          begin
            p2 := d; // 原色点
            p1 := b; // 取其余色时
          end;

          // 有一个成立就行了
          Application.ProcessMessages;
          if exitOut then
          begin
            break;
            Close;
          end;
          Application.ProcessMessages;
          // if p1 = p2 then
          // continue;

          // if not(((p2 = b) and (p1 = c)) or ((p2 = b) and (p1 = d))) then
          // continue; // 只有两种情况可向下，这种思维阅读记忆法

          orderStep := 1;
          adotemp.Close;
          adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          adotemp.ExecSQL;
          adotemp.Close;
          adotemp.SQL.Text := 'update points set C=0 where  dprid=' +
            dprid + ' ';
          adotemp.ExecSQL;
          adotemp.Close;
          self.fromLabelcaptionC(clred);
          // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
          adotemp.SQL.Text := 'update points set FC=' +
            inttostr(PPcode5ColorIndex[p2]) + ',C=1 where pcode=''' +
            Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
          adotemp.ExecSQL;
          // adotemp.Close;
          // adotemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
          // dprid + ' ';
          // adotemp.ExecSQL;
          refreshoneP(inttostr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
            1000, clred);

          // looktime(-1);
          // if ((p1 = 4) and (p2 = 1)) then
          // Application.ProcessMessages;
          isHaveSameColor := False; // 开始点的邻边
          /// //////////////////////////////////////////////////////
          // select e.* from edges as e where e.dprid=2  and e.relation
          // and
          // (select count(1) from  points as p where p.dprid=2  and p.fc=3
          // and  (p.pcode=e.pcode1 or p.pcode=pcode2) ) >0
          // while not isHaveSameColor do
          while not isHaveSameColor do
          begin // 肯普链涟渏主体所在也乎
            Application.ProcessMessages;
            if exitOut then
            begin
              break;
              Close;
            end;
            Application.ProcessMessages;
            isHaveSameColor := False;
            isOK := 0;
            // looktime(-1);
            ADOQuery3.Close;
            ADOQuery3.SQL.Text :=
              'select www.* from (select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
              + dprid + ') as pFC1, ' +
              '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
              + dprid + ') as pFC2, ' +
              ' (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
              + dprid + ') as pF11, ' +
              ' (select p.F1  from points as p where p.pcode=edges.pcode2 and p.dprid='
              + dprid + ') as pF12, ' +
              ' (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid='
              + dprid + ') as pC1, ' +
              ' (select p.C  from points as p where p.pcode=edges.pcode2 and p.dprid='
              + dprid + ') as pC2 ' + ' from edges where Relation ' +
              ' and dprid=' + dprid +
              ') as www where (1=1) and (pC1>0 or pC2>0) and (pF11<' +
              inttostr(curPcount) + ' and  pF12<' + inttostr(curPcount) + ')' +
              ' and ( pFC1=' + inttostr(PPcode5ColorIndex[p1]) + ' or pFC1=' +
              inttostr(PPcode5ColorIndex[p2]) + ' or pFC2=' +
              inttostr(PPcode5ColorIndex[p1]) + ' or pFC2=' +
              inttostr(PPcode5ColorIndex[p2]) + ')';
            ADOQuery3.Open;
            ADOQuery3.First;
            while not ADOQuery3.Eof do
            begin
              if ADOQuery3.FieldByName('pcode1').AsString = 'P3' then
                if ADOQuery3.FieldByName('pcode2').AsString = 'P12' then
                  Application.ProcessMessages;

              if (ADOQuery3.FieldByName('pFC1').AsString = ADOQuery3.FieldByName
                ('pFC2').AsString) then
              begin

                if (ADOQuery3.FieldByName('pC1').AsInteger > 0) then
                  if (ADOQuery3.FieldByName('pC2').AsInteger > 0) then
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                // if 1=2 then
                if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[1]
                  ) or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                  [2]) or (ADOQuery3.FieldByName('pcode1')
                  .AsString = Tcolor5pCode[3]) or
                  (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[4])
                  or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[5]
                  )) and ((ADOQuery3.FieldByName('pcode2')
                  .AsString = Tcolor5pCode[1]) or
                  (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[2])
                  or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[3]
                  ) or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                  [4]) or (ADOQuery3.FieldByName('pcode2')
                  .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                begin
                  isHaveSameColor := True;
                  break;
                end;
                if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                  if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [1]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                  if (((ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                    [1]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  adotemp.Close;
                  adotemp.SQL.Text := 'update points set FC=' +
                    (inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') + ',C='
                    + inttostr(orderStep) + ' where pcode=''' +
                    ADOQuery3.FieldByName('pcode1').AsString + ''' and dprid=' +
                    dprid + ' ';
                  adotemp.ExecSQL;
                  refreshoneP((inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                    ADOQuery3.FieldByName('pcode1').AsString, 1000, clred);
                  // looktime(-1);
                  // ADOQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if ADOQuery3.FieldByName('pcode1').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
                if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  adotemp.Close;
                  adotemp.SQL.Text := 'update points set FC=' +
                    (inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') + ',C='
                    + inttostr(orderStep) + ' where pcode=''' +
                    ADOQuery3.FieldByName('pcode2').AsString + ''' and dprid=' +
                    dprid + ' ';
                  adotemp.ExecSQL;
                  refreshoneP((inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                    ADOQuery3.FieldByName('pcode2').AsString, 1000, clred);
                  // looktime(-1);
                  // OQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if ADOQuery3.FieldByName('pcode2').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
              end;
              ADOQuery3.Next;
            end;
            if isHaveSameColor then
            // if ADOQuery3.RecordCount=0 then
            begin
              Application.ProcessMessages;
              break;
            end;
            if isOK = 0 then
            begin
              Application.ProcessMessages;
              break;
            end;
          end;

        end;

        if 1 = 2 then
          if isHaveSameColor then // 如果上面的不成
          begin
            /// /////////////////////////////////
            p2 := b; // 原色点
            p1 := d; // 取其余色时
            // 有一个成立就行了
            Application.ProcessMessages;
            if exitOut then
            begin
              break;
              Close;
            end;
            Application.ProcessMessages;
            // if p1 = p2 then
            // continue;

            // if not(((p2 = b) and (p1 = c)) or ((p2 = b) and (p1 = d))) then
            // continue; // 只有两种情况可向下，这种思维阅读记忆法

            orderStep := 1;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid='
              + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set C=0 where  dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            adotemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
            adotemp.SQL.Text := 'update points set FC=' +
              inttostr(PPcode5ColorIndex[p2]) + ',C=1 where pcode=''' +
              Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
            adotemp.ExecSQL;
            // adotemp.Close;
            // adotemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // adotemp.ExecSQL;
            refreshoneP(inttostr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
              1000, clred);

            // looktime(-1);
            // if ((p1 = 4) and (p2 = 1)) then
            // Application.ProcessMessages;
            isHaveSameColor := False; // 开始点的邻边
            /// //////////////////////////////////////////////////////
            // select e.* from edges as e where e.dprid=2  and e.relation
            // and
            // (select count(1) from  points as p where p.dprid=2  and p.fc=3
            // and  (p.pcode=e.pcode1 or p.pcode=pcode2) ) >0
            // while not isHaveSameColor do
            while not isHaveSameColor do
            begin // 肯普链涟渏主体所在也乎
              Application.ProcessMessages;
              if exitOut then
              begin
                break;
                Close;
              end;
              Application.ProcessMessages;
              isHaveSameColor := False;
              isOK := 0;
              // looktime(-1);
              ADOQuery3.Close;
              ADOQuery3.SQL.Text :=
                'select www.* from (select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pFC1, ' +
                '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                + dprid + ') as pFC2, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pF11, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pF12, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pC1, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pC2 ' + ' from edges where Relation ' +
                ' and dprid=' + dprid +
                ') as www where (1=1) and (pC1>0 or pC2>0) and (pF11<' +
                inttostr(curPcount) + ' and  pF12<' + inttostr(curPcount) + ')'
                + ' and ( pFC1=' + inttostr(PPcode5ColorIndex[p1]) + ' or pFC1='
                + inttostr(PPcode5ColorIndex[p2]) + ' or pFC2=' +
                inttostr(PPcode5ColorIndex[p1]) + ' or pFC2=' +
                inttostr(PPcode5ColorIndex[p2]) + ')';
              ADOQuery3.Open;
              ADOQuery3.First;
              while not ADOQuery3.Eof do
              begin
                if ADOQuery3.FieldByName('pcode1').AsString = 'P3' then
                  if ADOQuery3.FieldByName('pcode2').AsString = 'P12' then
                    Application.ProcessMessages;

                if (ADOQuery3.FieldByName('pFC1')
                  .AsString = ADOQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (ADOQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (ADOQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  // if 1=2 then
                  if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [1]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5])) and
                    ((ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[1]
                    ) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                    if (((ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[1]) or
                      (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                      [2]) or (ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[3]) or
                      (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                      [4]) or (ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                    if (((ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[1]) or
                      (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                      [2]) or (ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[3]) or
                      (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                      [4]) or (ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode1').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP
                      ((inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // ADOQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if ADOQuery3.FieldByName('pcode1').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode2').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP
                      ((inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if ADOQuery3.FieldByName('pcode2').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                end;
                ADOQuery3.Next;
              end;
              if isHaveSameColor then
              // if ADOQuery3.RecordCount=0 then
              begin
                Application.ProcessMessages;
                break;
              end;
              if isOK = 0 then
              begin
                Application.ProcessMessages;
                break;
              end;
            end;

          end; // 如果上面的不成

        if not isHaveSameColor then
        begin
          // adotemp.Close;
          // adotemp.SQL.Text :=
          // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
          // adotemp.ExecSQL;
          adotemp.Close;
          // Tcolor4pCode[3] := 1; // 肯普链树中心点
          adotemp.SQL.Text := 'update points set FC=' +
            inttostr(PPcode5ColorIndex[p1]) + ' where pcode=''' + Tcolor5pCode
            [0] + ''' and dprid=' + dprid + ' ';
          adotemp.ExecSQL;
          refreshoneP(inttostr(PPcode5ColorIndex[p1]), Tcolor5pCode[0],
            1000, clred);
          self.savetoLabelcaption;

        end;

        self.fromLabelcaption;
        if not isHaveSameColor then
          showmessage('5环肯普链树，这个已经可解了')
        else
        begin
          showmessage('5环肯普链树，仍然不可解');
          adotemp.Close;
          adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          adotemp.ExecSQL;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次

        // 5环肯普链树   必定121234
      end
      else
      begin
        adotemp.Close;
        adotemp.SQL.Text := 'update points set FC=' + temps[1] + ' where F1=' +
          inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
  end;

  refreshhClick(nil);
  AutorefreshALLP;
  showmessage('ok');
end;

procedure TFC.KePuPlay5circleClick(Sender: TObject);
var
  p1, p2, p3, p4, p5, p6, pp6i, tempi: Integer;
  j1, j2, j3, j4, j5, j6: Integer;
  i00, i01, i02, i03, i04, i05, i06, i07, i08, i09: Integer;
  PP6: array [1 .. 6] of Integer;
  PPcode6: array [1 .. 6] of String;
  RResult, pcode1, pcode2, temps: string;
  pindex1, pindex2: Integer;
  ok, notok: boolean;
  Tcolor4pCode: array [0 .. 4] of string;

  colorindex, orderStep, ijk, stept: Integer;
  isHaveSameColor: boolean;
  Tcolor5pCode: array [0 .. 5] of string; // Tcolor5pCode
  PPcode5ColorIndex: array [0 .. 5] of Integer; // ColorIndex
  Abacd_A, Abacd_b, Abacd_Aa, Abacd_c, Abacd_d: string; // Tcolor5pCode
  a, b, aa, c, d: Integer; // PPcode5Index
  isTest5Chain: Integer; // 实例且改代码才可测五环肯普链涟漪
  isOK: Integer;
begin

  showmessage('此为演示数据中弹出五环肯普链的例子，要代码来模拟才出现，现实中我找不到实例，演示五环肯普链用');

  isTest5Chain := 1; // 实例且改代码才可测五环肯普链涟漪
  // isTest5Chain := 0; // 实例且改代码才可测五环肯普链涟漪
  exitOut := False;
  if RadioButton1.Checked then
    TRzButton(Sender).Tag := 1
  else
    TRzButton(Sender).Tag := 2;
  // Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '反例.jpg');

  RResult := '';

  N6Click(nil);

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'update points set CCC=0,F1=0,C=0,FC=0 where  dprid=' +
    dprid + ' ';
  ADOQuery2.ExecSQL;

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'select  count(1) as pc from points where 1=1 and F1=0 '
    + ' and dprid=' + dprid + ' ';
  ADOQuery2.Open;
  PCount := ADOQuery2.FieldByName('pc').AsInteger;
  /// ////测试五环用   隐去一点
  if isTest5Chain = 1 then
  // if 1 = 2 then
  begin
    PCount := PCount - 1;
    adotemp.Close;
    adotemp.SQL.Text :=
      'update points set dprid=2 where pcode=''P0'' and dprid=' + dprid + ' ';
    // 测试时P0正确是dprid=1，现暂动态改为2来测试
    adotemp.ExecSQL;
    adotemp.Close;
    adotemp.SQL.Text :=
      'update edges set relation=0 where pcode1=''P0'' and dprid=' + dprid +
      ' '; // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
    adotemp.ExecSQL;
  end;
  /// ////测试五环用
  curPcount := PCount + 1;

  while curPcount > 6 do
  begin
    curPcount := curPcount - 1;
    if curPcount = 6 then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'select  * from points where 1=1 and F1=0 ' +
        ' and dprid=' + dprid + ' ';
      ADOQuery2.Open;
      ADOQuery2.First;
      tempi := 0;
      while not ADOQuery2.Eof do
      begin
        tempi := tempi + 1;
        ADOQuery2.Edit;
        ADOQuery2.FieldByName('F1').AsInteger := tempi;
        ADOQuery2.Post;
        ADOQuery2.Next;
      end;
      break;
    end;

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select ww.* from (select w.pcode1,count(1) as pc from (select pcode1,pcode2 from edges where Relation '
      + ' and dprid=' + dprid +
      ' and pcode1 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) + ')  ' +
      ' union select pcode2,pcode1 from edges where relation and dprid=' + dprid
      + ' and pcode1 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) + ')  ' +
    // ' ) as w group by w.pcode1) as ww order by ww.pc';  notok  //测试四环，五环
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1';  //ookk
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
      ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1'; // ookk
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
    // 上面两句SQL有个order by ww.pcode1确不同，有者，可解那个双四环，无者，第二个不可解
    // 无者，可用于测试五环乎，同样算法，因为一个order出现可解与不可解之大事
    ADOQuery1.Open;
    if ADOQuery1.FieldByName('pc').AsInteger > 5 then
    begin
      showmessage('数据有错了');

    end;

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update points set F1=' + inttostr(curPcount) +
      ',CCC=' + ADOQuery1.FieldByName('pc').AsString + ' where pcode=''' +
      ADOQuery1.FieldByName('pcode1').AsString + ''' and dprid=' + dprid + ' ';
    ADOQuery2.ExecSQL;
    // exit;

  end;
  if curPcount = 6 then
  // showmessage(inttostr(PCount));
  begin
    // 九重循环，九层之台，起于累土，千里之行，始于足下
    ok := False;
    notok := True;

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
      + dprid + ') as pF1, ' +
      '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
      + dprid + ') as pF2 ' + ' from edges where Relation ' + ' and dprid=' +
      dprid + ' ';
    ADOQuery1.Open;

    for p1 := 1 to 4 do
    begin
      for p2 := 1 to 4 do
      begin
        for p3 := 1 to 4 do
        begin
          for p4 := 1 to 4 do
          begin
            for p5 := 1 to 4 do
            begin
              for p6 := 1 to 4 do
              begin
                PP6[1] := p1;
                PP6[2] := p2;
                PP6[3] := p3;
                PP6[4] := p4;
                PP6[5] := p5;
                PP6[6] := p6;
                ok := True;
                notok := True;
                // ADOQuery1.Close;
                // ADOQuery1.SQL.Text :=
                // 'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                // + dprid + ') as pF1, ' +
                // '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                // + dprid + ') as pF2 ' + ' from edges where Relation ' +
                // ' and dprid=' + dprid + ' ';
                // ADOQuery1.Open;
                ADOQuery1.First;
                while not ADOQuery1.Eof do
                begin
                  // pcode1 := ADOQuery1.FieldByName('pF1').AsString;
                  // pcode2 := ADOQuery1.FieldByName('pF2').AsString;
                  pindex1 := ADOQuery1.FieldByName('pF1').AsInteger;
                  pindex2 := ADOQuery1.FieldByName('pF2').AsInteger;
                  if ((pindex1 > 0) and (pindex1 < 7)) then
                    if ((pindex2 > 0) and (pindex2 < 7)) then
                      if PP6[pindex1] = PP6[pindex2] then
                      begin
                        notok := True;
                        ok := False;
                        break;
                      end;
                  ADOQuery1.Next;
                end;
                if ok then
                  for pp6i := 1 to 6 do
                  begin

                    ADOQuery2.Close;
                    ADOQuery2.SQL.Text := 'update points set FC=' +
                      inttostr(PP6[pp6i]) + ' where F1=' + inttostr(pp6i) +
                      ' and dprid=' + dprid + ' ';
                    ADOQuery2.ExecSQL;

                  end;

                if ok then
                  break;
              end;
              if ok then
                break;
            end;
            if ok then
              break;
          end;
          if ok then
            break;
        end;
        if ok then
          break;
      end;
      if ok then
        break;
    end;
  end;
  refreshhClick(nil); // 刷新图中各点
  if not ok then
  begin
    showmessage('此图肯定没有四色解');
    exit;
  end;
  stept := trunc(stepTime.Value);
  // 这里若要刷新开始六点颜值，写代码，不想写，用处不大乎
  adotemp.Close;
  adotemp.SQL.Text := 'select * from points  where F1<7 and dprid=' +
    dprid + ' ';
  adotemp.Open;
  adotemp.First;
  while not adotemp.Eof do
  // for pp6i := 1 to 6 do
  begin
    // PPcode6[pp6i] := adotemp.FieldByName('pcode').AsString;
    refreshoneP(adotemp.FieldByName('fc').AsString, adotemp.FieldByName('pcode')
      .AsString, 0, clMoneyGreen);
    adotemp.Next;
  end;

  while curPcount < (PCount + 2) do
  // while curPcount < PCount do
  begin
    Application.ProcessMessages;
    if exitOut then
    begin
      break;
      Close;
    end;
    Application.ProcessMessages;
    curPcount := curPcount + 1;
    if isTest5Chain = 1 then
      /// ////测试五环用
      if (curPcount = (PCount + 1)) then
      begin
        if 1 = 1 then
        // if 1 = 2 then
        begin
          // curPcount := curPcount + 1;
          adotemp.Close;
          adotemp.SQL.Text :=
            'update points set dprid=1,CCC=5,F1=118,FC=0 where pcode=''P0'' and dprid=2';
          // 测试时P0正确是dprid=1，现暂动态改为2来测试
          adotemp.ExecSQL;
          adotemp.Close;
          adotemp.SQL.Text :=
            'update edges set relation=1 where (ecode=''P0P1'' or ecode=''P0P2'' or ecode=''P0P3''  or  ecode=''P0P4''  or ecode=''P0P5'') and dprid='
            + dprid + ' '; // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
          adotemp.ExecSQL;

        end;
      end;
    /// ////测试五环用

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'select  * from points where 1=1 and F1= ' +
      inttostr(curPcount) + ' and dprid=' + dprid + ' ';
    ADOQuery2.Open;
    tempi := ADOQuery2.FieldByName('CCC').AsInteger;
    if ADOQuery2.FieldByName('pcode').AsString = 'P96' then
      Application.ProcessMessages; // 断点查错，果然不顺也
    if tempi < 4 then
    begin

      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        showmessage('小于4的，可能有错了');
      end
      else
      begin
        adotemp.Close;
        adotemp.SQL.Text := 'update points set FC=' + temps[1] + ' where F1=' +
          inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 4 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
        showmessage('4环肯普链树');
        // showmessage('4环肯普链树  必定1234');
        // refreshhClick(nil); // 刷新图中各点
        Tcolor4pCode[0] := ADOQuery2.FieldByName('pcode').AsString;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(inttostr(0), Tcolor4pCode[0], 0, clOlive);
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        ADOQuery1.First;
        while not ADOQuery1.Eof do
        begin
          for colorindex := 1 to 4 do
          begin
            if ADOQuery1.FieldByName('pFC1').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode1').AsString;
            if ADOQuery1.FieldByName('pFC2').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode2').AsString;
          end;
          ADOQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // C1248C1111 备份字段用也
        adotemp.Close;
        adotemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(inttostr(1), Tcolor4pCode[1], 1000, clYellow);
        // refreshoneP(inttostr(2), Tcolor4pCode[2], 1000, clblue);
        // refreshoneP(inttostr(3), Tcolor4pCode[3], 1000, clLime);
        // refreshoneP(inttostr(4), Tcolor4pCode[4], 1000, clFuchsia);
        refreshoneP(inttostr(1), Tcolor4pCode[1], 0, cllime);
        refreshoneP(inttostr(2), Tcolor4pCode[2], 0, clFuchsia);
        refreshoneP(inttostr(3), Tcolor4pCode[3], 0, clyellow);
        refreshoneP(inttostr(4), Tcolor4pCode[4], 0, clskyblue);
        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        self.savetoLabelcaption;
        for p1 := 1 to 4 do // 原色点
        begin
          for p2 := 1 to 4 do // 取其余色时
          begin // 有一个成立就行了
            Application.ProcessMessages;
            if exitOut then
            begin
              break;
              Close;
            end;
            Application.ProcessMessages;
            if p1 = p2 then
              continue;
            orderStep := 1;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid='
              + dprid + ' '; // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set C=0 where  dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            adotemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点
            adotemp.SQL.Text := 'update points set FC=' + inttostr(p2) +
              ',C=1 where pcode=''' + Tcolor4pCode[p1] + ''' and dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            // adotemp.Close;
            // adotemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // adotemp.ExecSQL;
            refreshoneP(inttostr(p2), Tcolor4pCode[p1], 1000, clred);

            // looktime(-1);
            if ((p1 = 4) and (p2 = 1)) then
              Application.ProcessMessages;
            isHaveSameColor := False; // 开始点的邻边
            /// //////////////////////////////////////////////////////
            // select e.* from edges as e where e.dprid=2  and e.relation
            // and
            // (select count(1) from  points as p where p.dprid=2  and p.fc=3
            // and  (p.pcode=e.pcode1 or p.pcode=pcode2) ) >0
            while not isHaveSameColor do
            begin // 肯普链涟渏主体所在也乎
              Application.ProcessMessages;
              if exitOut then
              begin
                break;
                Close;
              end;
              Application.ProcessMessages;
              isHaveSameColor := False;
              // looktime(-1);
              ADOQuery3.Close;
              ADOQuery3.SQL.Text :=
                'select www.* from (select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pFC1, ' +
                '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                + dprid + ') as pFC2, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pF11, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pF12, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pC1, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pC2 ' + ' from edges where Relation ' +
                ' and dprid=' + dprid +
                ') as www where (1=1) and (pC1>0 or pC2>0) and (pF11<' +
                inttostr(curPcount) + ' and  pF12<' + inttostr(curPcount) + ')'
                + ' and ( pFC1=' + inttostr(p1) + ' or pFC1=' + inttostr(p2) +
                ' or pFC2=' + inttostr(p1) + ' or pFC2=' + inttostr(p2) + ')';
              // select www.* from
              // (select edges.*,
              // (select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pFC1,
              // (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid=1) as pFC2
              // (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pF11,
              // (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pF12,
              // (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pC1,
              // (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid=1) as pC2
              // from edges where Relation  and dprid=1) as www
              // where (1=1) and (pC1>0 or pC2>0) and (pF11<71 and  pF12<71) and ( pFC1=1 or pFC1=2 or pFC2=1 or pFC2=2)
              ADOQuery3.Open;
              ADOQuery3.First;
              while not ADOQuery3.Eof do
              begin

                if (ADOQuery3.FieldByName('pFC1')
                  .AsString = ADOQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (ADOQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (ADOQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;

                    end;

                  // if 1=2 then
                  if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode
                    [1]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor4pCode[2]) or
                    (ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode[3])
                    or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor4pCode
                    [4])) and ((ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor4pCode[1]) or
                    (ADOQuery3.FieldByName('pcode2').AsString = Tcolor4pCode[2])
                    or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor4pCode
                    [3]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor4pCode[4]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;

                  end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode1').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP((inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // ADOQuery3.Next;
                    // continue;
                    isHaveSameColor := True;
                    break;
                  end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode2').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP((inttostr(p1) + inttostr(p2))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    isHaveSameColor := True;
                    break;
                  end;

                end;
                ADOQuery3.Next;
              end;
              if not isHaveSameColor then
              // if ADOQuery3.RecordCount=0 then
              begin
                Application.ProcessMessages;
                break;
              end;
            end;
            if not isHaveSameColor then
            begin
              Application.ProcessMessages;
              break;
            end;

          end;
          if not isHaveSameColor then
          begin
            // adotemp.Close;
            // adotemp.SQL.Text :=
            // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // adotemp.ExecSQL;
            adotemp.Close;
            // Tcolor4pCode[3] := 1; // 肯普链树中心点
            adotemp.SQL.Text := 'update points set FC=' + inttostr(p1) +
              ' where pcode=''' + Tcolor4pCode[0] + ''' and dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            refreshoneP(inttostr(p1), Tcolor4pCode[0], 1000, clred);
            self.savetoLabelcaption;
            break;
          end;
        end;
        self.fromLabelcaption;
        if not isHaveSameColor then
          showmessage('4环肯普链树，这个已经可解了')
        else
        begin
          showmessage('4环肯普链树，仍然不可解');
          adotemp.Close;
          adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' '; // 手工调试时，将两个字段齐改才行
          adotemp.ExecSQL;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
      end
      else
      begin
        adotemp.Close;
        adotemp.SQL.Text := 'update points set FC=' + temps[1] + ' where F1=' +
          inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 5 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        // 5环肯普链树   必定121234
        // showmessage('5环肯普链树   必定121234');
        showmessage('5环肯普链树');
        isOK := 0;

        Tcolor5pCode[0] := ADOQuery2.FieldByName('pcode').AsString;
        PPcode5ColorIndex[0] := 0;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(inttostr(0), Tcolor5pCode[0], 0, clOlive);
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        ADOQuery1.First;
        colorindex := 0;
        while not ADOQuery1.Eof do
        begin
          colorindex := colorindex + 1;
          // for colorindex := 1 to 5 do
          begin
            if ADOQuery1.FieldByName('pcode1').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode1').AsString;
              PPcode5ColorIndex[colorindex] := ADOQuery1.FieldByName('pFC1')
                .AsInteger;
              // break;
            end;
            if ADOQuery1.FieldByName('pcode2').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                ADOQuery1.FieldByName('pcode2').AsString;
              PPcode5ColorIndex[colorindex] := ADOQuery1.FieldByName('pFC2')
                .AsInteger;
              // break;
            end;
          end;
          ADOQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // C1248C1111 备份字段用也
        adotemp.Close;
        adotemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        adotemp.ExecSQL;
        refreshoneP(inttostr(PPcode5ColorIndex[1]), Tcolor5pCode[1], 0, cllime);
        refreshoneP(inttostr(PPcode5ColorIndex[2]), Tcolor5pCode[2], 0,
          clFuchsia);
        refreshoneP(inttostr(PPcode5ColorIndex[3]), Tcolor5pCode[3], 0,
          clyellow);
        refreshoneP(inttostr(PPcode5ColorIndex[4]), Tcolor5pCode[4], 0,
          clskyblue);
        refreshoneP(inttostr(PPcode5ColorIndex[5]), Tcolor5pCode[5], 0,
          clsilver);
        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        self.savetoLabelcaption;
        // colorindex   0  3  4  1  2  4    12123
        for p1 := 1 to 5 do
          for p2 := (p1 + 1) to 5 do
            if (PPcode5ColorIndex[p1] = PPcode5ColorIndex[p2]) then
            begin
              if (p2 = (p1 + 2)) then
              begin
                Abacd_A := Tcolor5pCode[p1];
                Abacd_Aa := Tcolor5pCode[p2];
                Abacd_b := Tcolor5pCode[p1 + 1];
                Abacd_c := Tcolor5pCode[(p2 + 1) mod 5];
                Abacd_d := Tcolor5pCode[(p2 + 2) mod 5];
                a := p1;
                aa := p2;
                b := p1 + 1;
                c := (p2 + 1) mod 5;
                d := (p2 + 2) mod 5;
                if c = 0 then
                  c := 5;
                if d = 0 then
                  d := 5;
                break;
              end;
              if (p2 = (p1 + 3)) then
              begin
                Abacd_Aa := Tcolor5pCode[p1];
                Abacd_A := Tcolor5pCode[p2];
                Abacd_b := Tcolor5pCode[(p2 + 1) mod 5];
                Abacd_c := Tcolor5pCode[(p1 + 1) mod 5];
                Abacd_d := Tcolor5pCode[(p1 + 2) mod 5];
                a := p2;
                aa := p1;
                b := (p2 + 1) mod 5;
                c := (p1 + 1) mod 5;
                d := (p1 + 2) mod 5;
                if b = 0 then
                  b := 5;
                if c = 0 then
                  c := 5;
                if d = 0 then
                  d := 5;
                break;
              end;
            end;
        if 1 = 2 then
        begin
          if isTest5ChainReturnOK = 1 then
          // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          begin
            /// ////测试五环用
            // 这里可以update具体颜值，以测试五环用
            adotemp.Close;
            adotemp.SQL.Text :=
              'update points set FC=1,C1248C1111=1 where  pcode=''P82'' and  dprid='
              + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          end;
          if isTest5ChainReturnOK = 0 then
          // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          begin
            /// ////测试五环用
            // 这里可以update具体颜值，以测试五环用
            adotemp.Close;
            adotemp.SQL.Text :=
              'update points set FC=3,C1248C1111=3 where  pcode=''P82'' and  dprid='
              + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          end;
        end;
        /// /////////////////////////////////
        Application.ProcessMessages;
        if exitOut then
        begin
          break;
          Close;
        end;
        Application.ProcessMessages;
        for ijk := 1 to 4 do
        begin
          if ijk = 1 then
          begin
            p2 := b; // 原色点
            p1 := c; // 取其余色时
          end;
          if ijk = 2 then
          begin
            p2 := c; // 原色点
            p1 := b; // 取其余色时
          end;
          if ijk = 3 then
          begin
            p2 := b; // 原色点
            p1 := d; // 取其余色时
          end;
          if ijk = 4 then
          begin
            p2 := d; // 原色点
            p1 := b; // 取其余色时
          end;

          // 有一个成立就行了
          Application.ProcessMessages;
          if exitOut then
          begin
            break;
            Close;
          end;
          Application.ProcessMessages;
          // if p1 = p2 then
          // continue;

          // if not(((p2 = b) and (p1 = c)) or ((p2 = b) and (p1 = d))) then
          // continue; // 只有两种情况可向下，这种思维阅读记忆法

          orderStep := 1;
          adotemp.Close;
          adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          adotemp.ExecSQL;
          adotemp.Close;
          adotemp.SQL.Text := 'update points set C=0 where  dprid=' +
            dprid + ' ';
          adotemp.ExecSQL;
          adotemp.Close;
          self.fromLabelcaptionC(clred);
          // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
          adotemp.SQL.Text := 'update points set FC=' +
            inttostr(PPcode5ColorIndex[p2]) + ',C=1 where pcode=''' +
            Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
          adotemp.ExecSQL;
          // adotemp.Close;
          // adotemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
          // dprid + ' ';
          // adotemp.ExecSQL;
          refreshoneP(inttostr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
            1000, clred);

          // looktime(-1);
          // if ((p1 = 4) and (p2 = 1)) then
          // Application.ProcessMessages;
          isHaveSameColor := False; // 开始点的邻边
          /// //////////////////////////////////////////////////////
          // select e.* from edges as e where e.dprid=2  and e.relation
          // and
          // (select count(1) from  points as p where p.dprid=2  and p.fc=3
          // and  (p.pcode=e.pcode1 or p.pcode=pcode2) ) >0
          // while not isHaveSameColor do
          while not isHaveSameColor do
          begin // 肯普链涟渏主体所在也乎
            Application.ProcessMessages;
            if exitOut then
            begin
              break;
              Close;
            end;
            Application.ProcessMessages;
            isHaveSameColor := False;
            isOK := 0;
            // looktime(-1);
            ADOQuery3.Close;
            ADOQuery3.SQL.Text :=
              'select www.* from (select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
              + dprid + ') as pFC1, ' +
              '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
              + dprid + ') as pFC2, ' +
              ' (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
              + dprid + ') as pF11, ' +
              ' (select p.F1  from points as p where p.pcode=edges.pcode2 and p.dprid='
              + dprid + ') as pF12, ' +
              ' (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid='
              + dprid + ') as pC1, ' +
              ' (select p.C  from points as p where p.pcode=edges.pcode2 and p.dprid='
              + dprid + ') as pC2 ' + ' from edges where Relation ' +
              ' and dprid=' + dprid +
              ') as www where (1=1) and (pC1>0 or pC2>0) and (pF11<' +
              inttostr(curPcount) + ' and  pF12<' + inttostr(curPcount) + ')' +
              ' and ( pFC1=' + inttostr(PPcode5ColorIndex[p1]) + ' or pFC1=' +
              inttostr(PPcode5ColorIndex[p2]) + ' or pFC2=' +
              inttostr(PPcode5ColorIndex[p1]) + ' or pFC2=' +
              inttostr(PPcode5ColorIndex[p2]) + ')';
            ADOQuery3.Open;
            ADOQuery3.First;
            while not ADOQuery3.Eof do
            begin
              if ADOQuery3.FieldByName('pcode1').AsString = 'P3' then
                if ADOQuery3.FieldByName('pcode2').AsString = 'P12' then
                  Application.ProcessMessages;

              if (ADOQuery3.FieldByName('pFC1').AsString = ADOQuery3.FieldByName
                ('pFC2').AsString) then
              begin

                if (ADOQuery3.FieldByName('pC1').AsInteger > 0) then
                  if (ADOQuery3.FieldByName('pC2').AsInteger > 0) then
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                // if 1=2 then
                if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[1]
                  ) or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                  [2]) or (ADOQuery3.FieldByName('pcode1')
                  .AsString = Tcolor5pCode[3]) or
                  (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[4])
                  or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[5]
                  )) and ((ADOQuery3.FieldByName('pcode2')
                  .AsString = Tcolor5pCode[1]) or
                  (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[2])
                  or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[3]
                  ) or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                  [4]) or (ADOQuery3.FieldByName('pcode2')
                  .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                begin
                  isHaveSameColor := True;
                  break;
                end;
                if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                  if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [1]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                  if (((ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                    [1]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  adotemp.Close;
                  adotemp.SQL.Text := 'update points set FC=' +
                    (inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') + ',C='
                    + inttostr(orderStep) + ' where pcode=''' +
                    ADOQuery3.FieldByName('pcode1').AsString + ''' and dprid=' +
                    dprid + ' ';
                  adotemp.ExecSQL;
                  refreshoneP((inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                    ADOQuery3.FieldByName('pcode1').AsString, 1000, clred);
                  // looktime(-1);
                  // ADOQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if ADOQuery3.FieldByName('pcode1').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
                if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  adotemp.Close;
                  adotemp.SQL.Text := 'update points set FC=' +
                    (inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') + ',C='
                    + inttostr(orderStep) + ' where pcode=''' +
                    ADOQuery3.FieldByName('pcode2').AsString + ''' and dprid=' +
                    dprid + ' ';
                  adotemp.ExecSQL;
                  refreshoneP((inttostr(PPcode5ColorIndex[p1]) +
                    inttostr(PPcode5ColorIndex[p2]))
                    .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                    ADOQuery3.FieldByName('pcode2').AsString, 1000, clred);
                  // looktime(-1);
                  // OQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if ADOQuery3.FieldByName('pcode2').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
              end;
              ADOQuery3.Next;
            end;
            if isHaveSameColor then
            // if ADOQuery3.RecordCount=0 then
            begin
              Application.ProcessMessages;
              break;
            end;
            if isOK = 0 then
            begin
              Application.ProcessMessages;
              break;
            end;
          end;

        end;

        if 1 = 2 then
          if isHaveSameColor then // 如果上面的不成
          begin
            /// /////////////////////////////////
            p2 := b; // 原色点
            p1 := d; // 取其余色时
            // 有一个成立就行了
            Application.ProcessMessages;
            if exitOut then
            begin
              break;
              Close;
            end;
            Application.ProcessMessages;
            // if p1 = p2 then
            // continue;

            // if not(((p2 = b) and (p1 = c)) or ((p2 = b) and (p1 = d))) then
            // continue; // 只有两种情况可向下，这种思维阅读记忆法

            orderStep := 1;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid='
              + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            adotemp.ExecSQL;
            adotemp.Close;
            adotemp.SQL.Text := 'update points set C=0 where  dprid=' +
              dprid + ' ';
            adotemp.ExecSQL;
            adotemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
            adotemp.SQL.Text := 'update points set FC=' +
              inttostr(PPcode5ColorIndex[p2]) + ',C=1 where pcode=''' +
              Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
            adotemp.ExecSQL;
            // adotemp.Close;
            // adotemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // adotemp.ExecSQL;
            refreshoneP(inttostr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
              1000, clred);

            // looktime(-1);
            // if ((p1 = 4) and (p2 = 1)) then
            // Application.ProcessMessages;
            isHaveSameColor := False; // 开始点的邻边
            /// //////////////////////////////////////////////////////
            // select e.* from edges as e where e.dprid=2  and e.relation
            // and
            // (select count(1) from  points as p where p.dprid=2  and p.fc=3
            // and  (p.pcode=e.pcode1 or p.pcode=pcode2) ) >0
            // while not isHaveSameColor do
            while not isHaveSameColor do
            begin // 肯普链涟渏主体所在也乎
              Application.ProcessMessages;
              if exitOut then
              begin
                break;
                Close;
              end;
              Application.ProcessMessages;
              isHaveSameColor := False;
              isOK := 0;
              // looktime(-1);
              ADOQuery3.Close;
              ADOQuery3.SQL.Text :=
                'select www.* from (select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pFC1, ' +
                '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                + dprid + ') as pFC2, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pF11, ' +
                ' (select p.F1  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pF12, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode1 and p.dprid='
                + dprid + ') as pC1, ' +
                ' (select p.C  from points as p where p.pcode=edges.pcode2 and p.dprid='
                + dprid + ') as pC2 ' + ' from edges where Relation ' +
                ' and dprid=' + dprid +
                ') as www where (1=1) and (pC1>0 or pC2>0) and (pF11<' +
                inttostr(curPcount) + ' and  pF12<' + inttostr(curPcount) + ')'
                + ' and ( pFC1=' + inttostr(PPcode5ColorIndex[p1]) + ' or pFC1='
                + inttostr(PPcode5ColorIndex[p2]) + ' or pFC2=' +
                inttostr(PPcode5ColorIndex[p1]) + ' or pFC2=' +
                inttostr(PPcode5ColorIndex[p2]) + ')';
              ADOQuery3.Open;
              ADOQuery3.First;
              while not ADOQuery3.Eof do
              begin
                if ADOQuery3.FieldByName('pcode1').AsString = 'P3' then
                  if ADOQuery3.FieldByName('pcode2').AsString = 'P12' then
                    Application.ProcessMessages;

                if (ADOQuery3.FieldByName('pFC1')
                  .AsString = ADOQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (ADOQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (ADOQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  // if 1=2 then
                  if (((ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [1]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5])) and
                    ((ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[1]
                    ) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[3])
                    or (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                    [4]) or (ADOQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                    if (((ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[1]) or
                      (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                      [2]) or (ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[3]) or
                      (ADOQuery3.FieldByName('pcode1').AsString = Tcolor5pCode
                      [4]) or (ADOQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                    if (((ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[1]) or
                      (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                      [2]) or (ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[3]) or
                      (ADOQuery3.FieldByName('pcode2').AsString = Tcolor5pCode
                      [4]) or (ADOQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (ADOQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode1').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP
                      ((inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // ADOQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if ADOQuery3.FieldByName('pcode1').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                  if (ADOQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    adotemp.Close;
                    adotemp.SQL.Text := 'update points set FC=' +
                      (inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + inttostr(orderStep) + ' where pcode=''' +
                      ADOQuery3.FieldByName('pcode2').AsString + ''' and dprid='
                      + dprid + ' ';
                    adotemp.ExecSQL;
                    refreshoneP
                      ((inttostr(PPcode5ColorIndex[p1]) +
                      inttostr(PPcode5ColorIndex[p2]))
                      .Replace(ADOQuery3.FieldByName('pFC1').AsString, ''),
                      ADOQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if ADOQuery3.FieldByName('pcode2').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                end;
                ADOQuery3.Next;
              end;
              if isHaveSameColor then
              // if ADOQuery3.RecordCount=0 then
              begin
                Application.ProcessMessages;
                break;
              end;
              if isOK = 0 then
              begin
                Application.ProcessMessages;
                break;
              end;
            end;

          end; // 如果上面的不成

        if not isHaveSameColor then
        begin
          // adotemp.Close;
          // adotemp.SQL.Text :=
          // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
          // adotemp.ExecSQL;
          adotemp.Close;
          // Tcolor4pCode[3] := 1; // 肯普链树中心点
          adotemp.SQL.Text := 'update points set FC=' +
            inttostr(PPcode5ColorIndex[p1]) + ' where pcode=''' + Tcolor5pCode
            [0] + ''' and dprid=' + dprid + ' ';
          adotemp.ExecSQL;
          refreshoneP(inttostr(PPcode5ColorIndex[p1]), Tcolor5pCode[0],
            1000, clred);
          self.savetoLabelcaption;

        end;

        self.fromLabelcaption;
        if not isHaveSameColor then
          showmessage('5环肯普链树，这个已经可解了')
        else
        begin
          showmessage('5环肯普链树，仍然不可解');
          adotemp.Close;
          adotemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          adotemp.ExecSQL;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次

        // 5环肯普链树   必定121234
      end
      else
      begin
        adotemp.Close;
        adotemp.SQL.Text := 'update points set FC=' + temps[1] + ' where F1=' +
          inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        adotemp.ExecSQL;
        // refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], ADOQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
  end;

  refreshhClick(nil);
  AutorefreshALLP;
  showmessage('ok');
end;

procedure TFC.Label3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
    showmessage('自思肯普法时，动态染色时，可以设置每步每点时长（毫秒），以利于观察也');

end;

procedure TFC.looktime(iitime1000: Integer);
var
  ii: Integer;
  adotemp1: TADOQuery;
begin
  userclick := True;
  ii := Winapi.Windows.GetTickCount;
  if iitime1000 > -1 then
    while ((Winapi.Windows.GetTickCount - ii) < iitime1000) do
      Application.ProcessMessages;
  if iitime1000 = -1 then
  begin
    while userclick do
      Application.ProcessMessages;
    adotemp1 := TADOQuery.Create(self);
    adotemp1.Connection := ADOQuery1.Connection;
    adotemp1.Close;
    adotemp1.SQL.Text := 'select * from points where dprid=' + dprid;
    adotemp1.Open;
    adotemp1.First;
    while not adotemp1.Eof do
    begin
      LabelsCaptions.Values[uppercase('fc' + adotemp1.FieldByName('pcode')
        .AsString)] := adotemp1.FieldByName('fc').AsString;
      adotemp1.Next;
    end;

    self.fromLabelcaptionC(clred);
    adotemp1.Free;
  end;

end;

procedure TFC.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

begin
  TShape(Sender).Tag := 1;
  mouseMoveCount := 0;
  // TShape(Sender).Hint
  Origin.X := X;
  Origin.Y := Y;
  // application.Tag := integer(@(Origin));
end;

procedure TFC.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  cc: TColor;
  ii: Integer;
  t, p: Tpoint;
begin
  if FFF <> 'OK' then
    if TShape(Sender).Tag = 1 then
    begin
      mouseMoveCount := 2;
      TShape(Sender).OnMouseMove(Sender, Shift, X, Y);

      TShape(Sender).Tag := 0;
      adotemp.Close;
      adotemp.SQL.Text := 'update points set px=' +
        inttostr(0 - self.Shape1.Left + oriP.X + TShape(Sender).Left + 5) +
        ',py=' + inttostr(0 - self.Shape1.Top + oriP.Y + TShape(Sender).Top + 5)
        + ' where dprid=' + dprid + ' and pcode=''' + TShape(Sender)
        .Name + '''';
      adotemp.ExecSQL;
      adotemp.Close;
    end;

  if shiftEdgesB then
  begin
    cc := TShape(Sender).Brush.Color;
    TShape(Sender).Brush.Color := clred;
    ii := GetTickCount();
    while ((GetTickCount() - ii) < 250) do
      Application.ProcessMessages;
    // 这个常没反应，不灵，所以要这样，不顺
    if Shift = [ssShift] then
    begin
      shiftEdgesL.Add(TShape(Sender).Name);

    end;
    if Shift = [ssCtrl] then
    begin
      shiftEdgesL[shiftEdgesL.Count - 1] := shiftEdgesL[shiftEdgesL.Count - 1] +
        ':' + TShape(Sender).Name; // 这个常可以星形，一个中心，其余多个，但分割时亦不顺

    end;
    TShape(Sender).Brush.Color := cc;
  end;

  if Button = mbRight then
  begin
    p.X := X;
    p.Y := Y;
    t := TShape(Sender).clienttoscreen(p);
    N4.Hint := TShape(Sender).Name;
    pMenu.Popup(t.X, t.Y);
  end;

end;

procedure TFC.shiftEdgesClick(Sender: TObject);
var
  I: Integer;
  LLine, star, ends: string;
begin
  if shiftEdgesB then
  begin
    shiftEdgesB := False;
    shiftEdges.Caption := 'shift边';

    /// 手工创建全部边
    for I := 0 to shiftEdgesL.Count - 1 do
    begin
      LLine := shiftEdgesL[I] + ':';
      star := leftstr(LLine, pos(':', LLine) - 1);
      ends := stringreplace(LLine, star, '', []);
      ends := stringreplace(ends, ':', '', []);
      while ends <> '' do
      begin
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update edges set relation=true' + ' where dprid='
          + userid + ' and  pcode1=''' + star + ''' and pcode2=''' +
          leftstr(ends, pos(':', ends) - 1) + '''';
        ADOQuery2.ExecSQL;
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update edges set relation=true' + ' where dprid='
          + userid + ' and  pcode2=''' + star + ''' and pcode1=''' +
          leftstr(ends, pos(':', ends) - 1) + '''';
        ADOQuery2.ExecSQL;

        ends := stringreplace(ends, leftstr(ends, pos(':', ends) - 1), '', []);
        ends := stringreplace(ends, ':', '', []);
      end;
    end;
    ProgressBar1.Visible := False;
    refreshhClick(nil);
    U_E.F_E.initdata;
    // U_E.F_E.Show;
    U_E.F_E.ShowModal;
    refreshhClick(nil);

  end // ;
  else // if not shiftPointsB then
  begin
    // edgesssClick(nil);
    shiftEdgesB := True;
    shiftEdges.Caption := '正在shift边......';
    shiftEdgesL.Clear;

  end;
end;

procedure TFC.shiftEdgesMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
    showmessage
      ('先清空用户项目，用shift点批量创建多点后，再按定义各边弹出对话框，然后关闭弹出对话框，就可以点击此按钮来批量创建边了。先点这按钮，再shift键，点击某点，作为起点或中心点，然后ctrl键来多个点击，作为终点，以此一次定义多条边。还可以连续多个shift+ctrl，可以也可不用反复按此按钮。');

end;

procedure TFC.shiftPointsClick(Sender: TObject);
var
  I, ccc: Integer;
begin
  if shiftPointsB then
  begin
    shiftPointsB := False;
    shiftPoints.Caption := 'shift点';

    if dprid = userid then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text := 'select * from points where dprid=' + userid;
      ADOQuery1.Open;
      // if ADOQuery1.RecordCount = 0 then
      if ADOQuery1.RecordCount = 0 then
        ccc := 0
      else
        ccc := ADOQuery1.RecordCount;

      begin
        for I := 0 to shiftPointsL.Count - 1 do
        begin
          ADOQuery1.Append;
          ADOQuery1.FieldByName('dprid').AsString := dprid;
          ADOQuery1.FieldByName('pcode').AsString := 'P' + inttostr(I + ccc);
          ADOQuery1.FieldByName('pname').AsString := 'P' + inttostr(I + ccc);
          ADOQuery1.FieldByName('px').AsInteger :=
            strtoint(leftstr(shiftPointsL[I], pos(':', shiftPointsL[I]) - 1));
          ADOQuery1.FieldByName('py').AsInteger :=
            strtoint(copy(shiftPointsL[I], pos(':', shiftPointsL[I]) + 1,
            length(shiftPointsL[I]) - pos(':', shiftPointsL[I])));
          ADOQuery1.Post;

        end;
        ProgressBar1.Visible := False;
      end;
    end;

    refreshhClick(nil);
    U_P.F_P.initdata;
    U_P.F_P.ShowModal;

    refreshhClick(nil);

  end // ;
  else // if not shiftPointsB then
  begin
    // Button4Click(nil); //手工清空点
    shiftPointsB := True;
    shiftPoints.Caption := '正在shift点......';
    shiftPointsL.Clear;

  end;
end;

procedure TFC.shiftPointsMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
    showmessage
      ('先点击清空用户项目，再点击这个按钮，然后，可以在导入地图作底图后，按住shift键不放，鼠标点击来自动批量记录坐标点，可以反复多次。然后再点击这按钮，就可以自动生成批量坐标点了。');

end;

procedure TFC.userclick1Click(Sender: TObject);
begin
  userclick := False;
end;

procedure TFC.Shape1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  www: Tpoint;
  I: Integer;
  qq: TComponent;
  p1x, p1y, p2x, p2y: Integer;
  truelength222: string;
  truelength333: double;
  direct: string;
  pcode1PP, pcode2PP: TShape;
  eee: TRzLine;
  tmpstr: string;
begin
  if FFF <> 'OK' then
  begin

    if TShape(Sender).Tag = 1 then
    begin
      mouseMoveCount := mouseMoveCount + 1;
      if mouseMoveCount = 2 then
      begin
        mouseMoveCount := 0;
        www.X := X;
        www.Y := Y;
        // www := TShape(Sender).ScreenToClient(Origin);
        // Origin:=  TPoint( @application.Tag);

        TShape(Sender).Left := TShape(Sender).Left + (www.X - Origin.X);
        TShape(Sender).Top := TShape(Sender).Top + (www.Y - Origin.Y);
        // TShape(Sender).Left := X;
        // TShape(Sender).Top := Y;
        /// /////////
        {
          for i := self.ComponentCount - 1 downto 0 do
          begin
          if ((self.Components[i] is tlabel)) then
          begin
          if uppercase(self.Components[i].Name) = 'M' + TShape(Sender).Name then
          begin
          tlabel(self.Components[i]).Left := TShape(Sender).Left + 10;
          tlabel(self.Components[i]).Top := TShape(Sender).Top;
          continue;
          end;
          end;

          //////////////

          end; }
        qq := nil;
        qq := self.FindComponent('M' + TShape(Sender).Name);
        if qq <> nil then
        begin
          TLabel(qq).Left := TShape(Sender).Left + 10;
          TLabel(qq).Top := TShape(Sender).Top;

        end;
        // caption := 'left=' + inttostr(TShape(Sender).Left) + ';top=' + inttostr(TShape(Sender).Top) +
        // ';X=' + inttostr(x) + ';Y=' + inttostr(y);
        /// ###########
        /// 无须要   Origin:=www; 无须要   Origin:=www; 无须要   Origin:=www;
        /// /##########
        ScrollBox1.ScrollInView(TShape(Sender));
        /// /此句在有滚动条时，很好很好！！！！
        for I := self.ComponentCount - 1 downto 0 do
          if ((self.Components[I] is TRzLine)) then
          begin
            // if ((pos(TShape(Sender).Name + 'P', uppercase(self.Components[i].Name)) > 0) or
            // (pos(TShape(Sender).Name + 'E', uppercase(self.Components[i].Name)) > 0)) then
            eee := nil;
            if ((pos(TShape(Sender).Name + 'P',
              uppercase(self.Components[I].Name + 'E')) > 0)) then

            begin
              eee := TRzLine(self.Components[I]);
              tmpstr := eee.Name;
              tmpstr := stringreplace(tmpstr, TShape(Sender).Name +
                'P', '', []);
              tmpstr := stringreplace(tmpstr, 'E', '', []);
              tmpstr := 'P' + tmpstr;

              pcode1PP := TShape(Sender);
              pcode2PP := TShape(self.FindComponent(tmpstr));

            end;
            if ((pos(TShape(Sender).Name + 'E',
              uppercase(self.Components[I].Name + 'E')) > 0)) then

            begin
              eee := TRzLine(self.Components[I]);
              pcode2PP := TShape(Sender);
              eee := TRzLine(self.Components[I]);
              tmpstr := eee.Name + 'E';
              tmpstr := stringreplace(tmpstr, TShape(Sender).Name +
                'E', '', []);

              pcode1PP := TShape(self.FindComponent(tmpstr));

            end;
            if eee <> nil then
            begin
              p1x := pcode1PP.Left + 5;
              p1y := pcode1PP.Top + 5;
              p2x := pcode2PP.Left + 5;
              p2y := pcode2PP.Top + 5;

              MoveLineLi(eee, p1x, p1y, p2x, p2y, truelength222, '');
            end;
            // continue;
          end;
      end;
    end;
  end;
end;

function TFC.MoveLineLi(eee: TRzLine; p1x, p1y, p2x, p2y: Integer;
  truelength222, direct: string): boolean;
var
  ttt: TComponent;
begin
  eee.LineWidth := 2;
  eee.ArrowLength := 0;
  if (((Min(p1x, p2x) = p1x) and (Min(p1y, p2y) = p1y)) or
    ((Min(p1x, p2x) = p2x) and (Min(p1y, p2y) = p2y))) then
    eee.LineSlope := lsDown // ;//  lsDown   lsUp
  else
    eee.LineSlope := lsUp;
  eee.Hint := truelength222;
  // stringreplace(format('%f', [truelength]), '.00', '', []);
  // eee.ShowHint := true;
  eee.Left := Min(p1x, p2x);
  eee.Top := Min(p1y, p2y);
  // eee.Name := ADOQuery1.fieldbyname('ecode').AsString;
  // eee.Name := ADOQuery1.fieldbyname('ecode').AsString + 'E';
  // eee.Parent := self.ScrollBox1;
  eee.Width := Max(abs(p1x - p2x), 2);
  // 先setparent再width=1才终于生效，否则不生效，草。
  eee.Height := Max(abs(p1y - p2y), 2);
  if ((eee.Width = 2) or (eee.Height = 2)) then
    eee.LineWidth := 4;
  eee.Left := Min(p1x, p2x);
  eee.Top := Min(p1y, p2y);
  // if direct = '双向或者无方向<-->' then
  if eee.Tag = 0 then
  else
  begin
    // if direct = '序号从小指向大 -->' then
    if eee.Tag = 1 then
    begin
      { eee.top := min(p1y, p2y)-8;
        eee.Height := max(abs(p1y - p2y), 2)+12;
        eee.LineSlope := lsup ;
        eee.ArrowLength := 16;
        eee.ShowArrows:=saStart; }// saStart;saEnd
      // if eee.Name='P7P18' then
      // application.ProcessMessages;
      eee.LineWidth := 2;
      eee.ArrowLength := 16;
      eee.Top := Min(p1y, p2y) - 8;
      eee.Height := Max(abs(p1y - p2y), 2) + 12;
      eee.Left := Min(p1x, p2x) - 8;
      eee.Width := Max(abs(p1x - p2x), 2) + 12;
      if p1x <= p2x then
      begin
        eee.ShowArrows := saEnd;
        if p1y >= p2y then
        // P2
        begin // P1

          eee.LineSlope := lsUp;
        end
        else // P1
        begin //
          // P2
          eee.LineSlope := lsDown;

        end;
      end
      else
      begin
        eee.ShowArrows := saStart;
        if p1y >= p2y then
        begin
          // P2
          //
          eee.LineSlope := lsDown; // P1
        end
        else
        begin
          // P1
          eee.LineSlope := lsUp; // P2

        end; // P2     P2
        // P1
      end; // P2     P2

    end
    // else if direct = '序号从大指向小 <--' then
    else if eee.Tag = 2 then
    begin
      eee.LineWidth := 2;
      eee.ArrowLength := 16;
      eee.Top := Min(p1y, p2y) - 8;
      eee.Height := Max(abs(p1y - p2y), 2) + 12;
      eee.Left := Min(p1x, p2x) - 8;
      eee.Width := Max(abs(p1x - p2x), 2) + 12;
      if p1x <= p2x then
      begin
        eee.ShowArrows := saStart;
        // P1     P1
        if p1y >= p2y then // P2               //      P2
        begin // P1                                 //   P1     P1

          eee.LineSlope := lsUp;
        end
        else
        begin // P1
          //
          eee.LineSlope := lsDown; // P2

        end;
      end
      else
      begin
        eee.ShowArrows := saEnd;
        if p1y >= p2y then
        // P2
        begin //
          // P1
          eee.LineSlope := lsDown;
        end
        else
        begin // P1
          // P2
          eee.LineSlope := lsUp;

        end;
        // START,END,只看X横坐标
      end; // UP,DOWN，只看对角线。

    end

  end;

  // ttt := tlabel.Create(self);

  // ttt.Name := 'M' + eee.Name;
  ttt := nil;
  ttt := self.FindComponent('M' + eee.Name);
  if ttt <> nil then
  begin
    TLabel(ttt).Caption := eee.Hint;
    TLabel(ttt).Left := eee.Left + (eee.Width div 2);
    TLabel(ttt).Top := eee.Top + (eee.Height div 2)

  end;

  // ttt.Parent := self.ScrollBox1;
end;

procedure TFC.N11Click(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
begin
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC')) then
      begin
        self.Components[I].Free;
        continue;
      end;
    end;

  end;

  // fflag := '原始算法';
  fflag := '原始算法2';

  if (fflag = '原始算法') then // if (fflag = '原始算法') then
  begin

    if (1 = 1) then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Text :=
        'update points set C=Cint(right(pcode,len(pcode)-1)),FC=Cint(right(pcode,len(pcode)-1)) where dprid='
        + dprid + ' ';
      ADOQuery2.ExecSQL;
    end;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;
    // exit;

  end; // if (fflag = '原始算法') then
  /// //////////////////////////////////////////////////////////////////////////////////////////////////
  /// /////////////////////////////////////////////////////////////////////////////////////////////////
  if (fflag = '原始算法2') then // if (fflag = '原始算法2') then
  begin

    // if (1 = 1) then
    // if (1 = 2) then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
        + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
        + 'from points as p where  p.dprid=' + dprid +
        ') as pp order by pp.cccc desc ';
      ADOQuery1.Open;
      ADOQuery1.First;
      I := -1;
      while not ADOQuery1.Eof do
      begin
        I := I + 1;
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=' +
          inttostr(I) + ',CCC=' + ADOQuery1.FieldByName('cccc').AsString +
          ' where pcode=''' + ADOQuery1.FieldByName('pcode').AsString +
          ''' and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;
        ADOQuery1.Next;
      end;
    end;

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;

  end; // if (fflag = '原始算法2') then

  refreshhClick(nil);
end;

procedure TFC.N1Click(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
begin
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC')) then
      begin
        self.Components[I].Free;
        continue;
      end;
    end;

  end;
  if 1 = 1 then // 这段令等于序号，要变动
  begin
    /// ////////////////////////
    for I := self.ComponentCount - 1 downto 0 do
    begin
      // if ((self.Components[i] is tshape) or (self.Components[i] is TRzLine)) then
      if ((self.Components[I] is TShape)) then
      begin
        if uppercase(self.Components[I].Name[1]) = 'P' then
        begin
          // tshape(self.Components[i]).BringToFront;

          ttt := TLabel.Create(self);

          ttt.Name := 'FC' + TShape(self.Components[I]).Name;
          ttt.Caption := stringreplace(TShape(self.Components[I]).Name,
            'P', '', []);
          ttt.Left := TShape(self.Components[I]).Left +
            trunc((TShape(self.Components[I]).Width - ttt.Width) / 2);
          ttt.Top := TShape(self.Components[I]).Top +
            trunc((TShape(self.Components[I]).Height - ttt.Height) / 2);
          ttt.Transparent := True;
          ttt.Font.Color := clBlack;
          ttt.Parent := self.ScrollBox1;

          ttt.Font.Name := '宋体';
          ttt.Font.Size := 10;
          ttt.BringToFront;
          continue;
        end;

      end;
    end;
  end;

end;

procedure TFC.N21birdDESCClick(Sender: TObject);
begin
  exitOut := False;
  houseBirds(Sender, ' desc ');
end;

procedure TFC.N2Click(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
begin
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC')) then
      begin
        self.Components[I].Free;
        continue;
      end;
    end;

  end;

  fflag := '原始算法';

  if (fflag = '原始算法') then // if (fflag = '原始算法') then
  begin
    // if (1 = 1) then
    if (1 = 2) then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
        + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
        + 'from points as p where  p.dprid=' + dprid +
        ') as pp order by pp.cccc desc ';
      ADOQuery1.Open;
      ADOQuery1.First;
      I := -1;
      while not ADOQuery1.Eof do
      begin
        I := I + 1;
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=' +
          inttostr(I) + ',CCC=' + ADOQuery1.FieldByName('cccc').AsString +
          ' where pcode=''' + ADOQuery1.FieldByName('pcode').AsString +
          ''' and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;
        ADOQuery1.Next;
      end;
    end;
    // if (1 = 2) then
    if (1 = 1) then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Text :=
        'update points set C=Cint(right(pcode,len(pcode)-1)),FC=Cint(right(pcode,len(pcode)-1)) where dprid='
        + dprid + ' ';
      ADOQuery2.ExecSQL;
    end;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;
    // exit;
    /// ////以上为初始化 color fourcolor
    adotemp.Close;
    adotemp.Connection := self.ADOConnection1;
    bbb := True;
    maxc := -1;
    while bbb do
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select eee.* from (select e.relationex2,e.id ,e.ecode,e.pcode1,e.pcode2,e.relation,'
        + ' (select p.C from points as p where p.dprid=e.dprid and p.pcode=e.pcode1) as p1c,'
        + ' (select p.fC from points as p where p.dprid=e.dprid and p.pcode=e.pcode1) as p1fc,'
        + '(select p.C from points as p where p.dprid=e.dprid and p.pcode=e.pcode2) as p2c,'
        + '(select p.FC from points as p where p.dprid=e.dprid and p.pcode=e.pcode2) as p2fc    from edges as e where (not e.relationex2) '
        + ' and e.dprid=' + dprid + ') as eee order by eee.p1c,eee.p2c';
      ADOQuery1.Open;
      if ADOQuery1.RecordCount > 0 then
      begin
        bbb := True;
        if maxc = -1 then
        begin
          maxc := ADOQuery1.RecordCount;
          ProgressBar1.Max := maxc;
          ProgressBar1.Min := 0;
          ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
          RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
            '条数据要即将处理......';
          self.ProgressBar1.Visible := True;
          self.RzLabel1.Visible := True;

        end;
        ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
        RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
          '条数据要即将处理......';
        Application.ProcessMessages;
      end
      else
      begin
        bbb := False;
        self.ProgressBar1.Visible := False;
        self.RzLabel1.Visible := False;
      end;
      if bbb then
      begin
        ADOQuery1.First;
        // while not ADOQuery1.Eof do
        // begin
        // ADOQuery1.Next;
        // end;
        fcp1 := ADOQuery1.FieldByName('p1fc').AsInteger;
        fcp2 := ADOQuery1.FieldByName('p2fc').AsInteger;
        cp1 := ADOQuery1.FieldByName('p1c').AsInteger;
        cp2 := ADOQuery1.FieldByName('p2c').AsInteger;
        if (((fcp1 = cp1) and (fcp2 = cp2)) and (fcp1 <> fcp2)) then
        begin

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update points set fc=' + inttostr(fcp1) +
            ' where pcode=''' + ADOQuery1.FieldByName('pcode2')
            .AsString + ''' ';
          ADOQuery2.ExecSQL;

          adotemp.Close;
          adotemp.SQL.Text :=
            'select e.relation,e.id ,e.ecode,e.pcode1,e.pcode2    from edges as e where e.pcode1='''
            + ADOQuery1.FieldByName('pcode2').AsString +
            ''' and ( e.relation) and e.dprid=' + dprid + ' ';
          adotemp.Open;
          adotemp.First;
          while not adotemp.Eof do
          begin
            ADOQuery2.Close;
            ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
              ' where pcode1=''' + ADOQuery1.FieldByName('pcode1').AsString +
              ''' and pcode2=''' + adotemp.FieldByName('pcode2')
              .AsString + '''';
            ADOQuery2.ExecSQL;
            /// //
            // ADOQuery2.Close;
            // ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
            // ' where pcode2=''' + ADOQuery1.FieldByName('pcode1').AsString +
            // ''' and pcode1=''' + adotemp.FieldByName('pcode2').AsString + '''';
            // ADOQuery2.ExecSQL;
            /// //
            adotemp.Next;
          end;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' +
            ADOQuery1.FieldByName('pcode2').AsString + '''  and dprid=' +
            dprid + ' ';
          ADOQuery2.ExecSQL;
        end;

        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update edges set relationex2=true where id=' +
          ADOQuery1.FieldByName('id').AsString + ' ';
        ADOQuery2.ExecSQL;
      end;
    end;
    // showmessage('ok');

  end; // if (fflag = '原始算法') then
  /// //////////////////////////////////////////////////////////////////////////////////////////////////
  /// /////////////////////////////////////////////////////////////////////////////////////////////////

  refreshhClick(nil);

  adotemp.Close;
  adotemp.SQL.Text :=
    'select min(p.fc) as fff,count(*) as cccount    from points as p where  p.dprid='
    + dprid + ' group by p.fc ';
  adotemp.Open;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('最后剩余如下' + inttostr(adotemp.RecordCount) + '种颜色：');
  adotemp.First;
  while not adotemp.Eof do
  begin
    Memo1.Lines.Add('颜色：' + (adotemp.FieldByName('fff').AsString) + '  数量：' +
      adotemp.FieldByName('cccount').AsString);
    adotemp.Next;
  end;
end;

procedure TFC.N31testClick(Sender: TObject);
begin
  exitOut := False;
  houseBirdsSUB(Sender, ' asc ');
end;

procedure TFC.N3331houseASCClick(Sender: TObject);
begin
  exitOut := False;
  houseBirds(Sender, ' asc ');
end;

procedure TFC.N3Click(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
begin
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC')) then
      begin
        self.Components[I].Free;
        continue;
      end;
    end;

  end;

  ADOQuery1.Close;
  ADOQuery1.SQL.Text :=
    'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
    + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
    + 'from points as p where  p.dprid=' + dprid +
    ') as pp order by pp.cccc desc ';
  ADOQuery1.Open;
  ADOQuery1.First;
  I := -1;
  while not ADOQuery1.Eof do
  begin
    I := I + 1;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=' +
      inttostr(I) + ',CCC=' + ADOQuery1.FieldByName('cccc').AsString +
      ' where pcode=''' + ADOQuery1.FieldByName('pcode').AsString +
      ''' and dprid=' + dprid + ' ';
    ADOQuery2.ExecSQL;
    ADOQuery1.Next;
  end;

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
    dprid + ' ';
  ADOQuery2.ExecSQL;

  /// ////以上为初始化 color fourcolor
  adotemp.Close;
  adotemp.Connection := self.ADOConnection1;
  bbb := True;
  maxc := -1;
  while bbb do
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select eee.* from (select e.relationex2,e.id ,e.ecode,e.pcode1,e.pcode2,e.relation,'
      + ' (select p.C from points as p where p.dprid=e.dprid and p.pcode=e.pcode1) as p1c,'
      + ' (select p.fC from points as p where p.dprid=e.dprid and p.pcode=e.pcode1) as p1fc,'
      + '(select p.C from points as p where p.dprid=e.dprid and p.pcode=e.pcode2) as p2c,'
      + '(select p.FC from points as p where p.dprid=e.dprid and p.pcode=e.pcode2) as p2fc '
      + '   from edges as e where (not e.relationex2) ' + ' and e.dprid=' +
      dprid + ') as eee order by eee.p1c,eee.p2c';
    ADOQuery1.Open;
    if ADOQuery1.RecordCount > 0 then
    begin
      bbb := True;
      if maxc = -1 then
      begin
        maxc := ADOQuery1.RecordCount;
        ProgressBar1.Max := maxc;
        ProgressBar1.Min := 0;
        ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
        RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
          '条数据要即将处理......';
        self.ProgressBar1.Visible := True;
        self.RzLabel1.Visible := True;

      end;
      ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
      RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
        '条数据要即将处理......';
      Application.ProcessMessages;
    end
    else
    begin
      bbb := False;
      self.ProgressBar1.Visible := False;
      self.RzLabel1.Visible := False;
    end;
    if bbb then
    begin
      ADOQuery1.First;
      // while not ADOQuery1.Eof do
      // begin
      // ADOQuery1.Next;
      // end;
      fcp1 := ADOQuery1.FieldByName('p1fc').AsInteger;
      fcp2 := ADOQuery1.FieldByName('p2fc').AsInteger;
      cp1 := ADOQuery1.FieldByName('p1c').AsInteger;
      cp2 := ADOQuery1.FieldByName('p2c').AsInteger;
      // if (((fcp1 = cp1) and (fcp2 = cp2)) and (fcp1 < fcp2)) then
      if ((fcp1 < fcp2)) then
      begin

        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set fc=' + inttostr(fcp1) +
          ' where pcode=''' + ADOQuery1.FieldByName('pcode2').AsString + ''' ';
        ADOQuery2.ExecSQL;

        adotemp.Close;
        adotemp.SQL.Text :=
          'select e.relation,e.id ,e.ecode,e.pcode1,e.pcode2    from edges as e where e.pcode1='''
          + ADOQuery1.FieldByName('pcode1').AsString +
          ''' and ( e.relation) and e.dprid=' + dprid + ' ';
        adotemp.Open;
        adotemp.First;
        while not adotemp.Eof do
        begin
          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
            ' where pcode1=''' + ADOQuery1.FieldByName('pcode1').AsString +
            ''' and pcode2=''' + adotemp.FieldByName('pcode2').AsString + '''';
          ADOQuery2.ExecSQL;
          /// //
          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
            ' where pcode2=''' + ADOQuery1.FieldByName('pcode1').AsString +
            ''' and pcode1=''' + adotemp.FieldByName('pcode2').AsString + '''';
          ADOQuery2.ExecSQL;
          /// //
          adotemp.Next;
        end;

        ADOQuery2.Close;
        ADOQuery2.SQL.Text :=
          'update edges set relationex2=true where pcode1=''' +
          ADOQuery1.FieldByName('pcode1').AsString + '''  and dprid=' +
          dprid + ' ';
        ADOQuery2.ExecSQL;

        ADOQuery2.Close;
        ADOQuery2.SQL.Text :=
          'update edges set relationex2=true where pcode2=''' +
          ADOQuery1.FieldByName('pcode1').AsString + '''  and dprid=' +
          dprid + ' ';
        ADOQuery2.ExecSQL;

      end;
      // if (1 = 2) then
      // if (((fcp1 = cp1) and (fcp2 = cp2)) and (fcp1 > fcp2)) then
      if ((fcp1 > fcp2)) then
      begin

        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set fc=' + inttostr(fcp2) +
          ' where pcode=''' + ADOQuery1.FieldByName('pcode2').AsString + ''' ';
        ADOQuery2.ExecSQL;

        adotemp.Close;
        adotemp.SQL.Text :=
          'select e.relation,e.id ,e.ecode,e.pcode1,e.pcode2    from edges as e where e.pcode1='''
          + ADOQuery1.FieldByName('pcode2').AsString +
          ''' and ( e.relation) and e.dprid=' + dprid + ' ';
        adotemp.Open;
        adotemp.First;
        while not adotemp.Eof do
        begin
          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
            ' where pcode1=''' + ADOQuery1.FieldByName('pcode2').AsString +
            ''' and pcode2=''' + adotemp.FieldByName('pcode2').AsString + '''';
          ADOQuery2.ExecSQL;
          /// //
          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
            ' where pcode2=''' + ADOQuery1.FieldByName('pcode2').AsString +
            ''' and pcode1=''' + adotemp.FieldByName('pcode2').AsString + '''';
          ADOQuery2.ExecSQL;
          /// //
          adotemp.Next;
        end;

        ADOQuery2.Close;
        ADOQuery2.SQL.Text :=
          'update edges set relationex2=true where pcode1=''' +
          ADOQuery1.FieldByName('pcode2').AsString + '''  and dprid=' +
          dprid + ' ';
        ADOQuery2.ExecSQL;

        ADOQuery2.Close;
        ADOQuery2.SQL.Text :=
          'update edges set relationex2=true where pcode2=''' +
          ADOQuery1.FieldByName('pcode2').AsString + '''  and dprid=' +
          dprid + ' ';
        ADOQuery2.ExecSQL;

      end;
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'update edges set relationex2=true where id=' +
        ADOQuery1.FieldByName('id').AsString + ' ';
      ADOQuery2.ExecSQL;
    end;

  end;
  refreshhClick(nil);

  adotemp.Close;
  adotemp.SQL.Text :=
    'select min(p.fc) as fff,count(*) as cccount    from points as p where  p.dprid='
    + dprid + ' group by p.fc ';
  adotemp.Open;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('最后剩余如下' + inttostr(adotemp.RecordCount) + '种颜色：');
  adotemp.First;
  while not adotemp.Eof do
  begin
    Memo1.Lines.Add('颜色：' + (adotemp.FieldByName('fff').AsString) + '  数量：' +
      adotemp.FieldByName('cccount').AsString);
    adotemp.Next;
  end;
end;

procedure TFC.N4Click(Sender: TObject);
var
  pname: string;

begin
  // caption:= tcomponent(sender).Name ;
  pname := TMenuItem(Sender).Hint;
  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'delete * from points as p   where   p.dprid=' + dprid +
    '  and p.pcode=''' + pname + '''';
  ADOQuery2.ExecSQL;
  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'delete * from edges as e   where   e.dprid=' + dprid +
    '  and (e.pcode1=''' + pname + '''  or e.pcode2=''' + pname + ''')';
  ADOQuery2.ExecSQL;
  refreshh.Click;
end;

procedure TFC.N51Click(Sender: TObject);
begin
  exitOut := False;
  houseBirdsSUB(Sender, ' desc ');
end;

procedure TFC.N5551foldClick(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag, id, pc1, pc2: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb, ggg: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
begin
  exitOut := False;
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC')) then
      begin
        self.Components[I].Free;
        continue;
      end;
    end;

  end;

  ADOQuery1.Close;
  ADOQuery1.SQL.Text :=
    'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
    + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
    + 'from points as p where  p.dprid=' + dprid +
    ') as pp order by pp.cccc desc '; // 若不用倒序，实测用色更多
  ADOQuery1.Open;
  ADOQuery1.First;
  I := -1;
  while not ADOQuery1.Eof do
  begin
    I := I + 1;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=' +
      inttostr(I) + ',CCC=' + ADOQuery1.FieldByName('cccc').AsString +
      ' where pcode=''' + ADOQuery1.FieldByName('pcode').AsString +
      ''' and dprid=' + dprid + ' ';
    ADOQuery2.ExecSQL;
    ADOQuery1.Next;
  end;

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
    dprid + ' ';
  ADOQuery2.ExecSQL;

  // ACCESS与SQLSERVER中的UPDATE语句对比:
  //
  // SQLSERVER中更新多表的UPDATE语句:
  //
  // UPDATE Tab1
  // SET a.Name = b.Name
  // FROM Tab1 a,Tab2 b
  // WHERE a.ID = b.ID;
  //
  // 同样功能的SQL语句在ACCESS中应该是
  //
  // UPDATE Tab1 a,Tab2 b
  // SET a.Name = b.Name
  // WHERE a.ID = b.ID;

  ADOQuery2.Close;
  ADOQuery2.SQL.Text :=
    'update edges  as e ,points  as p set e.p1c=p.c,e.p1fc=p.fc  where p.dprid=e.dprid and  e.dprid='
    + dprid + '  and e.pcode1=p.pcode';
  ADOQuery2.ExecSQL;
  ADOQuery2.Close;
  ADOQuery2.SQL.Text :=
    'update edges as e ,points as p set e.p2c=p.c,e.p2fc=p.fc  where p.dprid=e.dprid and  e.dprid='
    + dprid + '  and e.pcode2=p.pcode';
  ADOQuery2.ExecSQL;

  /// ////以上为初始化 color fourcolor
  adotemp.Close;
  adotemp.Connection := self.ADOConnection1;
  bbb := True;
  maxc := -1;
  while bbb do
  begin
    if exitOut then
      break;
    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select eee.* from (select 12  as wayissay,e.relationex2,e.id ,e.ecode,e.pcode1,e.pcode2,e.relation,'
      + ' e.p1c as p1c,' + ' e.p1fc as p1fc,' + ' e.p2c as p2c,' +
      ' e.p2fc as p2fc ' + '   from edges as e where (not e.relationex2) ' +
      ' and e.dprid=' + dprid + ' ' + '  union   ' +
      ' select 21 as wayissay,e.relationex2,e.id ,e.ecode,e.pcode1 as pcode2,e.pcode2 as pcode1,e.relation, '
      + ' e.p2c as p1c,' + ' e.p2fc as p1fc,' + ' e.p1c as p2c,' +
      ' e.p1fc as p2fc ' + 'from edges as e where (not e.relationex2) ' +
      ' and e.dprid=' + dprid +
      ')  as eee order by eee.p1fc,eee.p2fc,eee.p1c,eee.p2c-eee.p1c';

    ADOQuery1.Open;
    if ADOQuery1.RecordCount > 0 then
    begin
      // 以下判断是不是广义相邻相连接
      ggg := False;
      id := ADOQuery1.FieldByName('id').AsString;
      id := ADOQuery1.FieldByName('id').AsString;
      if maxc = -1 then
      begin
        maxc := ADOQuery1.RecordCount;
        ProgressBar1.Max := maxc;
        ProgressBar1.Min := 0;
        ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
        RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
          '条数据要即将处理......';
        self.ProgressBar1.Visible := True;
        self.RzLabel1.Visible := True;

      end;
      ProgressBar1.Position := ProgressBar1.Max - ADOQuery1.RecordCount;
      RzLabel1.Caption := '还剩余' + inttostr(ADOQuery1.RecordCount) +
        '条数据要即将处理......';
      Application.ProcessMessages;

      ADOQuery1.First;
      if ADOQuery1.FieldByName('wayissay').AsInteger = 12 then
      begin
        fcp1 := ADOQuery1.FieldByName('p1fc').AsInteger;
        fcp2 := ADOQuery1.FieldByName('p2fc').AsInteger;
        cp1 := ADOQuery1.FieldByName('p1c').AsInteger;
        cp2 := ADOQuery1.FieldByName('p2c').AsInteger;
        pc1 := ADOQuery1.FieldByName('pcode1').AsString;
        pc2 := ADOQuery1.FieldByName('pcode2').AsString;
      end;
      if ADOQuery1.FieldByName('wayissay').AsInteger = 21 then
      begin
        fcp1 := ADOQuery1.FieldByName('p2fc').AsInteger;
        fcp2 := ADOQuery1.FieldByName('p1fc').AsInteger;
        cp1 := ADOQuery1.FieldByName('p2c').AsInteger;
        cp2 := ADOQuery1.FieldByName('p1c').AsInteger;
        pc1 := ADOQuery1.FieldByName('pcode2').AsString;
        pc2 := ADOQuery1.FieldByName('pcode1').AsString;
      end;

      if fcp1 = fcp2 then
        ggg := True;
      if fcp1 <> fcp2 then
      BEGIN
        if ggg then
          break;

        if 1 = 1 then
        begin
          if not ggg then
          begin

            try
              ADOQuery2.Close;
              ADOQuery2.SQL.Text := 'drop table www';
              ADOQuery2.ExecSQL;
            finally

            end;
            try
              ADOQuery2.Close;
              ADOQuery2.SQL.Text :=
                'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                + dprid + ' and e.relation';
              ADOQuery2.ExecSQL;
            finally

            end;

            ADOQuery2.Close;
            ADOQuery2.SQL.Text :=
              'update www set p1=true where pcode1 in (select pcode from points where dprid='
              + dprid + ' and fc=' + inttostr(fcp1) + ')';
            ADOQuery2.ExecSQL;

            ADOQuery2.Close;
            ADOQuery2.SQL.Text :=
              'update www set p2=true  where pcode2 in (select pcode from points where dprid='
              + dprid + ' and fc=' + inttostr(fcp2) + ')';
            ADOQuery2.ExecSQL;
            adotemp.Close;
            adotemp.SQL.Text := 'select * from www where p1 and p2 ';
            adotemp.Open;
            if adotemp.RecordCount > 0 then
              ggg := True;
          end;

          if not ggg then
          begin

            ADOQuery2.Close;
            ADOQuery2.SQL.Text :=
              'update www set p2=true where pcode2 in (select pcode from points where dprid='
              + dprid + ' and fc=' + inttostr(fcp1) + ')';
            ADOQuery2.ExecSQL;

            ADOQuery2.Close;
            ADOQuery2.SQL.Text :=
              'update www set p1=true  where pcode1 in (select pcode from points where dprid='
              + dprid + ' and fc=' + inttostr(fcp2) + ')';
            ADOQuery2.ExecSQL;
            adotemp.Close;
            adotemp.SQL.Text := 'select * from www where p1 and p2 ';
            adotemp.Open;
            if adotemp.RecordCount > 0 then
              ggg := True;
          end;
        end;
      end;
      /// /////////////////////////////

      if ggg then // 当成已经相邻，所以处理不同
      begin

        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update edges set relationex2=true where id='
          + id + ' ';
        ADOQuery2.ExecSQL;
        continue;
      end;
      if not ggg then
      begin
        bbb := True;

      end;
    end
    else
    begin
      bbb := False;
      self.ProgressBar1.Visible := False;
      self.RzLabel1.Visible := False;
      break;
    end;
    if bbb then
    begin

      // if (((fcp1 = cp1) and (fcp2 = cp2)) and (fcp1 < fcp2)) then
      if ((fcp1 < fcp2)) then
      begin

        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set fc=' + inttostr(fcp1) +
          ' where pcode=''' + ADOQuery1.FieldByName('pcode2').AsString +
          '''  and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;

        ADOQuery2.Close;
        ADOQuery2.SQL.Text :=
          'update edges as e ,points as p set e.p1c=p.c,e.p1fc=p.fc  where p.dprid=e.dprid and e.dprid='
          + dprid + '  and e.pcode1=p.pcode and p.pcode=''' +
          ADOQuery1.FieldByName('pcode2').AsString + '''';
        ADOQuery2.ExecSQL;
        ADOQuery2.Close;
        ADOQuery2.SQL.Text :=
          'update edges as e ,points as p set e.p2c=p.c,e.p2fc=p.fc  where p.dprid=e.dprid and  e.dprid='
          + dprid + '  and e.pcode2=p.pcode  and p.pcode=''' +
          ADOQuery1.FieldByName('pcode2').AsString + '''';
        ADOQuery2.ExecSQL;

        adotemp.Close;
        adotemp.SQL.Text :=
          'select e.relation,e.id ,e.ecode,e.pcode1,e.pcode2    from edges as e where ((e.pcode1='''
          + ADOQuery1.FieldByName('pcode2').AsString + ''') or (e.pcode2=''' +
          ADOQuery1.FieldByName('pcode2').AsString +
          ''')) and ( e.relation) and e.dprid=' + dprid + ' ';
        adotemp.Open;
        adotemp.First;
        while not adotemp.Eof do
        begin
          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
            ' where pcode1=''' + ADOQuery1.FieldByName('pcode1').AsString +
            ''' and ((pcode2=''' + adotemp.FieldByName('pcode2').AsString +
            ''') or (pcode2=''' + adotemp.FieldByName('pcode1').AsString +
            ''')) and dprid=' + dprid + ' ';
          ADOQuery2.ExecSQL;

          adotemp.Next;
        end;

      end;
      /// //
      if ((fcp1 > fcp2)) then
      begin

        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set fc=' + inttostr(fcp2) +
          ' where pcode=''' + pc2 + ''' and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;

        ADOQuery2.Close;
        ADOQuery2.SQL.Text :=
          'update edges as e ,points p set e.p1c=p.c,e.p1fc=p.fc  where  p.dprid=e.dprid and e.dprid='
          + dprid + '  and e.pcode1=p.pcode and p.pcode=''' + pc2 + '''';
        ADOQuery2.ExecSQL;
        ADOQuery2.Close;
        ADOQuery2.SQL.Text :=
          'update edges as e ,points p set e.p2c=p.c,e.p2fc=p.fc  where  p.dprid=e.dprid and e.dprid='
          + dprid + '  and e.pcode2=p.pcode  and p.pcode=''' + pc2 + '''';
        ADOQuery2.ExecSQL;

        adotemp.Close;
        adotemp.SQL.Text :=
          'select e.relation,e.id ,e.ecode,e.pcode1,e.pcode2    from edges as e where ((e.pcode1='''
          + pc1 + ''') or (e.pcode2=''' + pc2 +
          ''')) and ( e.relation) and e.dprid=' + dprid + ' ';
        adotemp.Open;
        adotemp.First;
        while not adotemp.Eof do
        begin
          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
            ' where pcode2=''' + pc2 + ''' and ((pcode1=''' +
            adotemp.FieldByName('pcode2').AsString + ''') or (pcode1=''' +
            adotemp.FieldByName('pcode1').AsString + ''')) and dprid=' +
            dprid + ' ';
          ADOQuery2.ExecSQL;
          ADOQuery2.Close;
          ADOQuery2.SQL.Text := 'update edges set relationex2=true' +
            ' where pcode1=''' + pc2 + ''' and ((pcode2=''' +
            adotemp.FieldByName('pcode2').AsString + ''') or (pcode2=''' +
            adotemp.FieldByName('pcode1').AsString + ''')) and dprid=' +
            dprid + ' ';
          ADOQuery2.ExecSQL;
          adotemp.Next;
        end;

      end;

    end;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=true where id='
      + id + ' ';
    ADOQuery2.ExecSQL;
  end;
  refreshhClick(nil);

  adotemp.Close;
  adotemp.SQL.Text :=
    'select min(p.fc) as fff,count(*) as cccount    from points as p where  p.dprid='
    + dprid + ' group by p.fc ';
  adotemp.Open;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('算法1：映像广义弗洛伊得排序波动算法:');
  Memo1.Lines.Add('最后剩余如下' + inttostr(adotemp.RecordCount) + '种颜色：');
  adotemp.First;
  while not adotemp.Eof do
  begin
    Memo1.Lines.Add('颜色：' + (adotemp.FieldByName('fff').AsString) + '  数量：' +
      adotemp.FieldByName('cccount').AsString);
    adotemp.Next;
  end;
end;

procedure TFC.N5Click(Sender: TObject);
var
  I, www, hhh: Integer;
begin
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if ((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC') then
      begin
        self.Components[I].Free;
        continue;
      end;
    end;

  end;

end;

procedure TFC.N61onebyoneClick000(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh, curcolor: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag, id, pc1, pc2: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb, ggg: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
  curp0, nextcolor, aroundcolor, nextp: string;
  aado1, aado2, aadotemp: TADOQuery;
  function seleP0: string;
  var
    I: Integer;
  begin
    for I := self.ComponentCount - 1 downto 0 do
    begin
      if ((self.Components[I] is TLabel)) then
      begin
        if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components
          [I].Name[2])) = 'FC')) then
        begin
          self.Components[I].Free;
          continue;
        end;
      end;
    end;
    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
      + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
      + 'from points as p where  p.dprid=' + dprid +
    // ') as pp order by pp.cccc desc '; // 若不用倒序，实测用色更多
    // ') as pp order by pp.cccc '; // 若不用倒序，实测用色更少！！！
      ') as pp order by pp.cccc ';

    ADOQuery1.Open;
    ADOQuery1.First;
    Result := ADOQuery1.FieldByName('pcode').AsString;
    I := -1;
    while not ADOQuery1.Eof do
    begin
      I := I + 1;
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=0' +
      /// FC=0这里与边数倒序法不同
        ',CCC=' + ADOQuery1.FieldByName('cccc').AsString +
        ',ParentP='''' ,C1248C1111=0,F1=0,F2='''' where pcode=''' +
        ADOQuery1.FieldByName('pcode').AsString + ''' and dprid=' + dprid + ' ';
      ADOQuery2.ExecSQL;
      ADOQuery1.Next;
    end;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;
    /// ////以上为初始化 color fourcolor
  end;
  function seleP: string;
  var
    I: Integer;
    sss: string;
  begin

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
      + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
      + 'from points as p where p.fc=0 and p.dprid=' + dprid +
    // ') as pp order by pp.cccc desc '; // 若不用倒序，实测用色更多
    // ') as pp order by pp.cccc '; // 若不用倒序，实测用色更少！！！
      ') as pp order by pp.cccc ';
    ADOQuery1.Open;
    ADOQuery1.First;
    sss := ADOQuery1.FieldByName('pcode').AsString;
    aroundcolor := ';';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select min(e.p2fc) as cc  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
      + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
      + ' where e.dprid=' + dprid + ' and e.pcode1=''' + sss +
      ''' and e.relation group by e.p2fc';
    ADOQuery1.Open;
    ADOQuery1.First;
    aroundcolor := ';';
    while not ADOQuery1.Eof do
    begin
      aroundcolor := aroundcolor + ';' + ADOQuery1.FieldByName('cc').AsString;
      ADOQuery1.Next;
    end;
    aroundcolor := aroundcolor + ';';
    Result := sss;
  end;
  function color1(curpp, FC: string): string;
  var
    ado1, ado2, adotemp1: TADOQuery;
    g1, b1: boolean;
    cpc1, cpc2: string;
    cfcp1, cfcp2, ccp1, ccp2: Integer;
  begin
    ado1 := TADOQuery.Create(self);
    ado2 := TADOQuery.Create(self);
    adotemp1 := TADOQuery.Create(self);
    ado1.Connection := self.ADOConnection1;
    ado2.Connection := self.ADOConnection1;
    adotemp1.Connection := self.ADOConnection1;

    ado2.Close;
    ado2.SQL.Text := 'update points set fc=' + (FC) + ' where dprid=' + dprid +
      ' and pcode=''' + curpp + '''';
    ado2.ExecSQL;

    ado2.Close;
    ado2.SQL.Text :=
      'update edges  as e ,points  as p set e.p1c=p.c,e.p1fc=p.fc  where p.dprid=e.dprid and  e.dprid='
      + dprid + '  and e.pcode1=p.pcode';
    ado2.ExecSQL;
    ado2.Close;
    ado2.SQL.Text :=
      'update edges as e ,points as p set e.p2c=p.c,e.p2fc=p.fc  where p.dprid=e.dprid and  e.dprid='
      + dprid + '  and e.pcode2=p.pcode';
    ado2.ExecSQL;

    bbb := True;

    // while bbb do
    begin
      ado1.Close;
      ado1.SQL.Text :=
        'select e.*  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
        + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
        + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpp +
        ''' and e.relation and e.p2fc<>' + (FC);
      ado1.Open;
      ado1.First;
      maxc := -1;
      if ado1.RecordCount = 0 then
      begin
        bbb := False;
        exit;
      end;
      if maxc = -1 then
        maxc := ado1.RecordCount;

      begin
        ProgressBar2.Max := maxc;
        ProgressBar2.Min := 0;
        ProgressBar2.Position := ProgressBar2.Max - ado1.RecordCount;
        self.ProgressBar2.Visible := True;
        RzLabel2.Caption := '颜色 ' + FC;
        self.RzLabel2.Visible := True;
        RzLabel2.BringToFront;

      end;
      Application.ProcessMessages;

      while not ado1.Eof do
      begin
        ProgressBar2.Position := ProgressBar2.Position + 1;
        ado2.Close;
        ado2.SQL.Text :=
          'select e.*  from (select 12 as wayissay,e1.id,  e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
          + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
          + ' where e.dprid=' + dprid + ' and e.pcode1=''' +
          ado1.FieldByName('Pcode2').AsString +
          ''' and e.relation and e.p2fc<>' + (FC);
        ado2.Open;
        ado2.First;

        self.RzLabel3.Visible := True;

        RzLabel3.Caption := '还剩余' + inttostr(ado2.RecordCount) +
          '条数据要即将处理......';
        Application.ProcessMessages;
        while not ado2.Eof do
        begin
          ggg := False;
          // id := ado1.FieldByName('id').AsString;

          fcp1 := ado1.FieldByName('p1fc').AsInteger;
          cp1 := ado1.FieldByName('p1c').AsInteger;
          pc1 := ado1.FieldByName('pcode1').AsString;

          fcp2 := ado2.FieldByName('p2fc').AsInteger;
          cp2 := ado2.FieldByName('p2c').AsInteger;
          pc2 := ado2.FieldByName('pcode2').AsString;

          /// ////下面开始迷芒了。芒种时节迷惘
          // if not((fcp1 > 0) and (fcp2 > 0)) then // 是不是狭义中义相刢

          // 狭义与中义是不是相邻，是无条件乎
          adotemp1.Close;
          adotemp1.SQL.Text :=
            'select e.*  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
            + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
            + ' where e.dprid=' + dprid + ' and e.pcode1=''' + pc1 +
            ''' and e.pcode2=''' + pc2 +
            ''' and (e.relation or e.RelationEX2  )';
          adotemp1.Open;
          // 从零开始的或曾经刚才已赋值过的，狭义与中义
          if (adotemp1.RecordCount > 0) then
            ggg := True;

          if ((fcp1 = fcp2) and (fcp1 > 0)) then
            ggg := True;

          if ((fcp1 > 0) and (fcp2 > 0)) then
            if 1 = 1 then
            begin
              if not ggg then
              begin

                try
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'drop table www';
                  adotemp1.ExecSQL;
                finally

                end;
                try
                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                    + dprid + ' and e.relation';
                  adotemp1.ExecSQL;
                finally

                end;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p1=true where pcode1 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp1.ExecSQL;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p2=true  where pcode2 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
                adotemp1.ExecSQL;
                adotemp1.Close;
                adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp1.Open;
                if adotemp1.RecordCount > 0 then
                  ggg := True;
              end;

              if not ggg then
              begin

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p2=true where pcode2 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                adotemp1.ExecSQL;

                adotemp1.Close;
                adotemp1.SQL.Text :=
                  'update www set p1=true  where pcode1 in (select pcode from points where dprid='
                  + dprid + ' and fc>0 and fc=' + inttostr(fcp2) + ')';
                adotemp1.ExecSQL;
                adotemp1.Close;
                adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                adotemp1.Open;
                if adotemp1.RecordCount > 0 then
                  ggg := True;
              end;
            end;

          /// /////////////////////////////

          if not ggg then
            if ((fcp1 > 0) and (fcp2 = 0)) then
              if 1 = 1 then
              begin
                if not ggg then
                begin

                  try
                    adotemp1.Close;
                    adotemp1.SQL.Text := 'drop table www';
                    adotemp1.ExecSQL;
                  finally

                  end;
                  try
                    adotemp1.Close;
                    adotemp1.SQL.Text :=
                      'select e.pcode1,e.pcode2,false as p1,false as p2 into www from edges as e where e.dprid='
                      + dprid + ' and e.relation';
                    adotemp1.ExecSQL;
                  finally

                  end;

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p1=true where pcode1 in (select pcode from points where dprid='
                    + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                  adotemp1.ExecSQL;

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p2=true  where pcode2 =''' + pc2 + ''' ';
                  adotemp1.ExecSQL;
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                  adotemp1.Open;
                  if adotemp1.RecordCount > 0 then
                    ggg := True;
                end;

                if not ggg then
                begin

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p2=true where pcode2 in (select pcode from points where dprid='
                    + dprid + ' and fc>0 and fc=' + inttostr(fcp1) + ')';
                  adotemp1.ExecSQL;

                  adotemp1.Close;
                  adotemp1.SQL.Text :=
                    'update www set p1=true  where pcode1 =''' + pc2 + ''' ';
                  adotemp1.ExecSQL;
                  adotemp1.Close;
                  adotemp1.SQL.Text := 'select * from www where p1 and p2 ';
                  adotemp1.Open;
                  if adotemp1.RecordCount > 0 then
                    ggg := True;
                end;
              end;
          // 以下判断是不是广义相邻相连接

          if ggg then // 当成已经相邻，所以处理不同
          begin
            ado2.Next;
            continue;
          end;

          adotemp1.Close;
          adotemp1.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' + pc1 +
            ''' and pcode2=''' + pc2 + '''';

          adotemp1.ExecSQL;
          adotemp1.Close;
          adotemp1.SQL.Text :=
            'update edges set relationex2=true where pcode1=''' + pc2 +
            ''' and pcode2=''' + pc1 + '''';

          adotemp1.ExecSQL;

          adotemp1.Close;
          adotemp1.SQL.Text := 'update points set fc=' + (FC) + '  where dprid='
            + dprid + ' and pcode=''' + pc2 + '''';
          adotemp1.ExecSQL;

          ado2.Next;
          color1(pc2, FC);
        end;

        ado1.Next;
      end;

    end;

    ado1.Free;
    ado2.Free;
    adotemp1.Free;

  end;
/// ////////////////////////////////////////////////////////////////////////////////////
  function drawppp(curpp, curpFC: string): string;
  var
    FC: TLabel;
    PPP: TShape;

  begin

    PPP := TShape(self.FindComponent(curpp));
    FC := TLabel(self.FindComponent('FC' + PPP.Name));
    if FC = nil then
    begin
      FC := TLabel.Create(self);
      FC.Name := 'FC' + PPP.Name;
    end;
    FC.Caption := curpFC;
    FC.Left := PPP.Left + trunc((PPP.Width - FC.Width) / 2);
    FC.Top := PPP.Top + trunc((PPP.Height - FC.Height) / 2);
    FC.Transparent := True;
    FC.Font.Color := clBlack;
    FC.Parent := self.ScrollBox1;

    FC.Font.Name := '宋体';
    FC.Font.Size := 10;
    FC.Font.Style := [fsBold];
    // TFontStyle = (fsBold, fsItalic, fsUnderline, fsStrikeOut);
    FC.BringToFront;

    Application.ProcessMessages;
  end;
  function pullAll(curpp: string): string;
  var
    ado1, ado2, adotemp1: TADOQuery;
    g1, b1, isnosub: boolean;
    cpc1, cpc2: string;
    cfcp1, cfcp2, ccp1, ccp2, I: Integer;
    curpparent, curpID, curpFC, aroundColors1, allowColors1, C1248C1111: string;

  begin
    adotemp1 := TADOQuery.Create(self);
    adotemp1.Connection := self.ADOConnection1;
    ado1 := TADOQuery.Create(self);
    ado1.Connection := self.ADOConnection1;
    ado2 := TADOQuery.Create(self);
    ado2.Connection := self.ADOConnection1;

    // curpp := aado1.FieldByName('pcode').AsString;
    // aado1.Refresh;  缺少更新的键列信息
    ado2.Close;
    ado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
      ' and p.pcode =''' + curpp + '''';
    ado2.Open;
    curpparent := ado2.FieldByName('ParentP').AsString;
    curpID := ado2.FieldByName('id').AsString;
    curpFC := ado2.FieldByName('FC').AsString;
    if curpparent = 'ROOT' then
      exit;
    // Memo1.Lines.Delete(Memo1.Lines.Count - 1);
    Memo1.Lines.Add(curpp + '      ' + curpFC);
    drawppp(curpp, curpFC);
    /// //////////////////////////////////
    if curpp = 'P94' then
      /// /////
      Application.ProcessMessages;
    /// //////////////////
    ado1.Close;
    ado1.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
      ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
      + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
      + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpp +
      ''' and e.relation ) ' + ' and p.ParentP=''''  order by p.id ';
    // +'  order by p.id ';
    ado1.Open;
    isnosub := False;
    if ado1.RecordCount > 0 then
    begin
      ado1.First;
      while not ado1.Eof do
      begin

        ado2.Close;
        ado2.SQL.Text := 'select p.fc from points as p where p.dprid=' + dprid +
          ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
          + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
          + ' where e.dprid=' + dprid + ' and e.pcode1=''' +
          ado1.FieldByName('pcode').AsString + ''' and e.relation ) ';
        // +' and  p.ParentP=''''  group by p.fc order by p.fc ';
        ado2.Open;
        ado2.First;
        aroundColors1 := '';
        allowColors1 := '1234';

        aroundColors1 := aroundColors1 + curpFC;
        allowColors1 := stringreplace(allowColors1, curpFC, '', []);
        while not ado2.Eof do
        begin
          aroundColors1 := aroundColors1 + ado2.FieldByName('fc').AsString;
          allowColors1 := stringreplace(allowColors1, ado2.FieldByName('fc')
            .AsString, '', []);
          ado2.Next;
        end;
        // if ((aroundColors='1234') or (aroundColors='01234')) then
        if allowColors1 = '' then
        begin
          isnosub := True;
          // break;
          ado1.Next;
          continue;
        end;
        if (pos('1', allowColors1) > 0) then
        begin
          C1248C1111 := stringreplace(allowColors1, '1', '', []);
          if C1248C1111 = '' then
            C1248C1111 := '0';

          adotemp1.Close;
          adotemp1.SQL.Text := 'update points set fc=1,C1248C1111=' + C1248C1111
            + ',ParentP=''' + curpp + '''  where dprid=' + dprid +
            ' and pcode=''' + ado1.FieldByName('pcode').AsString + '''';
          adotemp1.ExecSQL;

        end
        else if (pos('2', allowColors1) > 0) then
        begin
          C1248C1111 := stringreplace(allowColors1, '2', '', []);
          if C1248C1111 = '' then
            C1248C1111 := '0';

          adotemp1.Close;
          adotemp1.SQL.Text := 'update points set fc=2,C1248C1111=' + C1248C1111
            + ',ParentP=''' + curpp + '''  where dprid=' + dprid +
            ' and pcode=''' + ado1.FieldByName('pcode').AsString + '''';
          adotemp1.ExecSQL;

        end
        else if (pos('3', allowColors1) > 0) then
        begin
          C1248C1111 := stringreplace(allowColors1, '3', '', []);
          if C1248C1111 = '' then
            C1248C1111 := '0';

          adotemp1.Close;
          adotemp1.SQL.Text := 'update points set fc=3,C1248C1111=' + C1248C1111
            + ',ParentP=''' + curpp + '''  where dprid=' + dprid +
            ' and pcode=''' + ado1.FieldByName('pcode').AsString + '''';
          adotemp1.ExecSQL;

        end
        else if (pos('4', allowColors1) > 0) then
        begin
          C1248C1111 := stringreplace(allowColors1, '4', '', []);
          if C1248C1111 = '' then
            C1248C1111 := '0';

          adotemp1.Close;
          adotemp1.SQL.Text := 'update points set fc=4,C1248C1111=' + C1248C1111
            + ',ParentP=''' + curpp + '''  where dprid=' + dprid +
            ' and pcode=''' + ado1.FieldByName('pcode').AsString + '''';
          adotemp1.ExecSQL;

        end
        else if (pos('0', allowColors1) > 0) then
        begin
          isnosub := True;
          // break;
          ado1.Next;
          continue;

        end;
        isnosub := False;
        break;
        // aado1.Next;
      end;
      // if isnotsub then  break;
      // Memo1.Lines.Add(ado1.FieldByName('pcode').AsString+'      ');
      // Application.ProcessMessages;
      pullAll(ado1.FieldByName('pcode').AsString);
    end;

    if ado1.RecordCount = 0 then
    begin
      isnosub := True;
    end;
    /// /////////////////////////////回溯back
    if isnosub then // 求先出curppparent
    begin
      ado2.Close;
      ado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
        ' and p.pcode =''' + curpp + '''';
      ado2.Open;
      curpparent := ado2.FieldByName('ParentP').AsString;
      curpID := ado2.FieldByName('id').AsString;
      curpFC := ado2.FieldByName('FC').AsString;
      // if ((curpparent='') or (curpID='') or (curpFC='')) then
      // application.ProcessMessages;
      adotemp1.Close;
      adotemp1.SQL.Text :=
        'update points set fc=0,C1248C1111=0,ParentP=''''  where dprid=' + dprid
        + ' and pcode=''' + curpp + '''';
      adotemp1.ExecSQL;
      Memo1.Lines.Delete(Memo1.Lines.Count - 1);

      TLabel(self.FindComponent('FC' + curpp)).Free;
      Application.ProcessMessages;
      ado2.Close;
      ado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
        ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
        + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
        + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpparent +
        ''' and e.relation ) ' + ' and  p.ParentP=''''  and p.id>' + curpID +
        ' order by p.id ';
      ado2.Open;
      if ado2.RecordCount > 0 then
      begin
        ado2.First;

        pullAll(ado2.FieldByName('pcode').AsString);
      end;
      if ado2.RecordCount = 0 then
      begin

        pullAll(curpparent);
      end;

    end;

    ado1.Free;
    ado2.Free;
    adotemp1.Free;

  end;

/// ///函数主体开始
var
  curpp, curppparent, curppID, aroundColors, allowColors: string;
  isnotsub: boolean;
  curppFC: Integer;
begin
  /// ///函数主体开始    aado1, aado2, aadotemp: TADOQuery;
  aadotemp := TADOQuery.Create(self);
  aadotemp.Connection := self.ADOConnection1;
  aado1 := TADOQuery.Create(self);
  aado1.Connection := self.ADOConnection1;
  aado2 := TADOQuery.Create(self);
  aado2.Connection := self.ADOConnection1;
  Memo1.Lines.Clear;
  curp0 := seleP0;

  aadotemp.Close;
  aadotemp.SQL.Text :=
    'update points set fc=1,C1248C1111=0,ParentP=''Root''  where dprid=' + dprid
    + ' and pcode=''' + curp0 + '''';
  aadotemp.ExecSQL;
  Memo1.Lines.Add(curp0 + '   1');
  drawppp(curp0, '1');
  aado1.Close;
  // aado1.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
  // ' and p.pcode in (select e.pcode2 from edges as e where e.dprid=' + dprid +
  // ' and e.pcode1=''' + curp0 + '''  ) and p.ParentP is null order by p.id ';
  // ' and e.pcode1=''' + curp0 + '''  )  order by p.id ';

  aado1.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
    ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
    + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
    + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curp0 +
    ''' and e.relation ) ' + ' and  p.ParentP=''''   order by p.id ';
  // +'  order by p.id ';
  aado1.Open;
  aado1.First;
  if aado1.RecordCount > 0 then
  begin

    aadotemp.Close;
    aadotemp.SQL.Text := 'update points set fc=2,C1248C1111=34,ParentP=''' +
      curp0 + '''  where dprid=' + dprid + ' and pcode=''' +
      aado1.FieldByName('pcode').AsString + '''';
    aadotemp.ExecSQL;
    // Memo1.Lines.Add(aado1.FieldByName('pcode').AsString+'     2');
  end;
  Application.ProcessMessages;

  if (1 = 2) then
  begin
    /// //////////////////////////////////
    curpp := aado1.FieldByName('pcode').AsString;
    // aado1.Refresh;  缺少更新的键列信息
    aado2.Close;
    aado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
      ' and p.pcode =''' + curpp + '''';
    aado2.Open;
    curppparent := aado2.FieldByName('ParentP').AsString;
    curppID := aado2.FieldByName('id').AsString;
    curppFC := aado2.FieldByName('FC').AsInteger;
    /// //////////////////////////////////

    aado1.Close;
    aado1.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
      ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
      + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
      + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpp +
      ''' and e.relation ) ' + ' and p.ParentP is null  order by p.id ';
    // +'  order by p.id ';
    aado1.Open;
    isnotsub := False;
    if aado1.RecordCount > 0 then
    begin
      aado1.First;
      while not aado1.Eof do
      begin

        aado2.Close;
        aado2.SQL.Text := 'select p.fc from points as p where p.dprid=' + dprid
          + ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
          + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
          + ' where e.dprid=' + dprid + ' and e.pcode1=''' +
          aado1.FieldByName('pcode').AsString + ''' and e.relation ) ' +
          ' and p.ParentP is null  group by p.fc order by p.fc ';
        aado2.Open;
        aado2.First;
        aroundColors := '';
        allowColors := '1234';
        while not aado2.Eof do
        begin
          aroundColors := aroundColors + aado2.FieldByName('fc').AsString;
          allowColors := stringreplace(allowColors, aado2.FieldByName('fc')
            .AsString, '', []);
          aado2.Next;
        end;
        // if ((aroundColors='1234') or (aroundColors='01234')) then
        if allowColors = '' then
        begin
          isnotsub := True;
          // break;
          aado1.Next;
          continue;
        end;
        if (pos('1', allowColors) >= 0) then
        begin
          aadotemp.Close;
          aadotemp.SQL.Text := 'update points set fc=1,C1248C1111=' +
            stringreplace(allowColors, '1', '', []) + ',ParentP=''' + curpp +
            '''  where dprid=' + dprid + ' and pcode=''' +
            aado1.FieldByName('pcode').AsString + '''';
          aadotemp.ExecSQL;

        end
        else if (pos('2', allowColors) >= 0) then
        begin
          aadotemp.Close;
          aadotemp.SQL.Text := 'update points set fc=2,C1248C1111=' +
            stringreplace(allowColors, '2', '', []) + ',ParentP=''' + curpp +
            '''  where dprid=' + dprid + ' and pcode=''' +
            aado1.FieldByName('pcode').AsString + '''';
          aadotemp.ExecSQL;

        end
        else if (pos('3', allowColors) >= 0) then
        begin
          aadotemp.Close;
          aadotemp.SQL.Text := 'update points set fc=3,C1248C1111=' +
            stringreplace(allowColors, '3', '', []) + ',ParentP=''' + curpp +
            '''  where dprid=' + dprid + ' and pcode=''' +
            aado1.FieldByName('pcode').AsString + '''';
          aadotemp.ExecSQL;

        end
        else if (pos('4', allowColors) >= 0) then
        begin
          aadotemp.Close;
          aadotemp.SQL.Text := 'update points set fc=4,C1248C1111=' +
            stringreplace(allowColors, '4', '', []) + ',ParentP=''' + curpp +
            '''  where dprid=' + dprid + ' and pcode=''' +
            aado1.FieldByName('pcode').AsString + '''';
          aadotemp.ExecSQL;

        end;
        isnotsub := False;
        break;
        // aado1.Next;
      end;
      // if isnotsub then  break;

    end;

    if aado1.RecordCount = 0 then
    begin
      isnotsub := True;
    end;
    /// /////////////////////////////回溯back
    if isnotsub then // 求先出curppparent
    begin
      aado2.Close;
      aado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
        ' and p.pcode =''' + curpp + '''';
      aado2.Open;
      curppparent := aado2.FieldByName('ParentP').AsString;
      curppID := aado2.FieldByName('id').AsString;
      curppFC := aado2.FieldByName('FC').AsInteger;
      aado2.Close;
      aado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
        ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
        + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
        + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curppparent +
        ''' and e.relation ) ' + ' and  p.ParentP=''''  and p.id>' + curppID +
        ' order by p.id ';
      aado2.Open;
      if aado2.RecordCount > 0 then
      begin

      end;
      if aado2.RecordCount = 0 then
      begin

      end;

    end;
  end;
  // exit;
  // color1(curp0, '1');
  // nextp := seleP;

  pullAll(aado1.FieldByName('pcode').AsString);

  aado1.Free;
  aado2.Free;
  aadotemp.Free;

  self.ProgressBar2.Visible := False;
  self.RzLabel2.Visible := False;
  self.RzLabel3.Visible := False;
  refreshhClick(nil);

  adotemp.Close;
  adotemp.SQL.Text :=
    'select min(p.fc) as fff,count(*) as cccount    from points as p where  p.dprid='
    + dprid + ' group by p.fc ';
  adotemp.Open;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('算法6：穷举法（映像广义算法~马踏棋盘/~全城/~天下/~飞燕）');
  Memo1.Lines.Add('最后剩余如下' + inttostr(adotemp.RecordCount) + '种颜色：');
  adotemp.First;
  while not adotemp.Eof do
  begin
    Memo1.Lines.Add('颜色：' + (adotemp.FieldByName('fff').AsString) + '  数量：' +
      adotemp.FieldByName('cccount').AsString);
    adotemp.Next;
  end;
end;

procedure TFC.N61onebyoneClick(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh, curcolor: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag, id, pc1, pc2: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb, ggg: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
  curp0, nextcolor, aroundcolor, nextp: string;
  aado1, aado2, aadotemp: TADOQuery;
  RResutString: string;
  function seleP0: string;
  var
    I: Integer;
  begin
    for I := self.ComponentCount - 1 downto 0 do
    begin
      if ((self.Components[I] is TLabel)) then
      begin
        if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components
          [I].Name[2])) = 'FC')) then
        begin
          self.Components[I].Free;
          continue;
        end;
      end;
    end;
    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
      + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
      + 'from points as p where  p.dprid=' + dprid +
    // ') as pp order by pp.cccc desc '; // 若不用倒序，实测用色更多
    // ') as pp order by pp.cccc '; // 若不用倒序，实测用色更少！！！
      ') as pp order by pp.cccc ';

    ADOQuery1.Open;
    ADOQuery1.First;
    Result := ADOQuery1.FieldByName('pcode').AsString;
    I := -1;
    while not ADOQuery1.Eof do
    begin
      I := I + 1;
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=0' +
      /// FC=0这里与边数倒序法不同
        ',CCC=' + ADOQuery1.FieldByName('cccc').AsString +
        ',ParentP='''' ,C1248C1111=0,F1=0,F2='''' where pcode=''' +
        ADOQuery1.FieldByName('pcode').AsString + ''' and dprid=' + dprid + ' ';
      ADOQuery2.ExecSQL;
      ADOQuery1.Next;
    end;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;
    /// ////以上为初始化 color fourcolor
  end;

/// ////////////////////////////////////////////////////////////////////////////////////
  function drawppp(curpp, curpFC: string): string;
  var
    FC: TLabel;
    PPP: TShape;

  begin

    PPP := TShape(self.FindComponent(curpp));
    FC := TLabel(self.FindComponent('FC' + PPP.Name));
    if FC = nil then
    begin
      FC := TLabel.Create(self);
      FC.Name := 'FC' + PPP.Name;
    end;
    FC.Caption := curpFC;
    FC.Left := PPP.Left + trunc((PPP.Width - FC.Width) / 2);
    FC.Top := PPP.Top + trunc((PPP.Height - FC.Height) / 2);
    FC.Transparent := True;
    FC.Font.Color := clBlack;
    FC.Parent := self.ScrollBox1;

    FC.Font.Name := '宋体';
    FC.Font.Size := 10;
    FC.Font.Style := [fsBold];
    // TFontStyle = (fsBold, fsItalic, fsUnderline, fsStrikeOut);
    FC.BringToFront;

    Application.ProcessMessages;
  end;
  function get1234(allowColors1: string): string;
  begin
    if allowColors1 = '' then
      Result := '';
    if (pos('1', allowColors1) > 0) then
      Result := '1'
    else if (pos('2', allowColors1) > 0) then
      Result := '2'
    else if (pos('3', allowColors1) > 0) then
      Result := '3'
    else if (pos('4', allowColors1) > 0) then
      Result := '4';

  end;
  function get1234_pullBackpush(allowColors1, FC: string): string;
  begin

    // if 1 = 2 then
    begin
      if FC < get1234(allowColors1) then
      begin
        RResutString := '可能有错，设断点观察';
        showmessage('可能有错，设断点观察');
        Application.ProcessMessages;
      end;

      if FC = '0' then
        allowColors1 := allowColors1;
      if FC = '1' then
        allowColors1 := stringreplace(allowColors1, '1', '', []);
      if FC = '2' then
      begin
        allowColors1 := stringreplace(allowColors1, '1', '', []);
        allowColors1 := stringreplace(allowColors1, '2', '', []);
      end;
      if FC = '3' then
      begin
        allowColors1 := stringreplace(allowColors1, '1', '', []);
        allowColors1 := stringreplace(allowColors1, '2', '', []);
        allowColors1 := stringreplace(allowColors1, '3', '', []);
      end;
      if FC = '4' then
      begin
        allowColors1 := stringreplace(allowColors1, '1', '', []);
        allowColors1 := stringreplace(allowColors1, '2', '', []);
        allowColors1 := stringreplace(allowColors1, '3', '', []);
        allowColors1 := stringreplace(allowColors1, '4', '', []);
      end;
    end;
    if 1 = 2 then
      allowColors1 := stringreplace(allowColors1, FC, '', []);

    if allowColors1 = '' then
      Result := '';
    if (pos('1', allowColors1) > 0) then
      Result := '1'
    else if (pos('2', allowColors1) > 0) then
      Result := '2'
    else if (pos('3', allowColors1) > 0) then
      Result := '3'
    else if (pos('4', allowColors1) > 0) then
      Result := '4';

  end;
  function pullBackpush(curpp: string): string;
  var
    ado1, ado2, adotemp1: TADOQuery;
    g1, b1, isnosub, isnosubEOF, istoNext: boolean;
    cpc1, cpc2: string;
    cfcp1, cfcp2, ccp1, ccp2, I: Integer;
    curpparent, curpID, curpFC, aroundColors1, allowColors1, C1248C1111,
      allowColors: string;

  begin
    Result := '';
    adotemp1 := TADOQuery.Create(self);
    adotemp1.Connection := self.ADOConnection1;
    ado1 := TADOQuery.Create(self);
    ado1.Connection := self.ADOConnection1;
    ado2 := TADOQuery.Create(self);
    ado2.Connection := self.ADOConnection1;
    ado2.Close;
    ado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
      ' and p.pcode =''' + curpp + '''';
    ado2.Open;
    curpparent := ado2.FieldByName('ParentP').AsString;
    curpID := ado2.FieldByName('id').AsString;
    curpFC := ado2.FieldByName('FC').AsString;
    if curpparent = 'Root' then
      exit;

    if curpp = 'P10' then
      Application.ProcessMessages;
    ado2.Close;
    ado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
      ' and p.pcode =''' + curpp + '''';
    ado2.Open;
    curpparent := ado2.FieldByName('ParentP').AsString;
    curpID := ado2.FieldByName('id').AsString;
    curpFC := ado2.FieldByName('FC').AsString;
    // if ((curpparent='') or (curpID='') or (curpFC='')) then
    // application.ProcessMessages;
    istoNext := False;
    // ado1.Close;
    // ado1.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
    // ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
    // + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
    // + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpparent +
    // ''' and e.relation ) ' + ' and  p.ParentP=''''  and p.id=' + curpID +
    // ' order by p.id ';
    // ado1.Open;
    /// //////////
    ado2.Close;
    ado2.SQL.Text := 'select p.fc from points as p where p.dprid=' + dprid +
      ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
      + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
      + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpp +
      ''' and e.relation ) ';
    // +' and  p.ParentP=''''  group by p.fc order by p.fc ';
    ado2.Open;
    ado2.First;
    aroundColors1 := '';
    allowColors1 := '1234';

    // aroundColors1 := aroundColors1 + curpFC;
    // allowColors1 := stringreplace(allowColors1, curpFC, '', []);
    if ado2.RecordCount > 0 then
      while not ado2.Eof do
      begin
        aroundColors1 := aroundColors1 + ado2.FieldByName('fc').AsString;
        allowColors1 := stringreplace(allowColors1, ado2.FieldByName('fc')
          .AsString, '', []);
        ado2.Next;
      end;
    // if ((aroundColors='1234') or (aroundColors='01234')) then
    allowColors := allowColors1;
    if allowColors1 = '' then
    begin
      istoNext := True;
    end
    else
    begin
      allowColors1 := get1234_pullBackpush(allowColors, curpFC);
      if allowColors1 = '' then
        istoNext := True;
    end;

    if not istoNext then
    begin

      // C1248C1111 := stringreplace(allowColors, get1234_pullBackpush(allowColors,
      // curpFC), '', []);
      // if C1248C1111 = '' then
      C1248C1111 := '-1';

      adotemp1.Close;
      adotemp1.SQL.Text := 'update points set fc=' + get1234_pullBackpush
        (allowColors, curpFC) + ',C1248C1111=' + C1248C1111 + ',ParentP=''' +
        curpparent + '''  where dprid=' + dprid + ' and pcode=''' +
        curpp + '''';
      adotemp1.ExecSQL;
      isnosub := False;
      isnosubEOF := False;
      Memo1.Lines.Delete(Memo1.Lines.Count - 1);

      TLabel(self.FindComponent('FC' + curpp)).Free;
      Application.ProcessMessages;
      Result := curpp;

    end;

    /// //////////////////////////////
    if istoNext then
    begin
      adotemp1.Close;
      adotemp1.SQL.Text :=
        'update points set fc=0,C1248C1111=1234,ParentP=''''  where dprid=' +
        dprid + ' and pcode=''' + curpp + '''';
      adotemp1.ExecSQL;
      Memo1.Lines.Delete(Memo1.Lines.Count - 1);

      TLabel(self.FindComponent('FC' + curpp)).Free;
      Application.ProcessMessages;

      ado1.Close;
      ado1.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
        ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
        + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
        + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpparent +
        ''' and e.relation ) ' + ' and  p.ParentP=''''  and p.id>' + curpID +
        ' order by p.id ';
      ado1.Open;
      isnosub := False;
      if ado1.RecordCount > 0 then
      begin
        ado1.First;
        /// ////////////

        isnosubEOF := True;
        while not ado1.Eof do
        begin
          /// //////////
          ado2.Close;
          ado2.SQL.Text := 'select p.fc from points as p where p.dprid=' + dprid
            + ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
            + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
            + ' where e.dprid=' + dprid + ' and e.pcode1=''' +
            ado1.FieldByName('pcode').AsString + ''' and e.relation ) ';
          // +' and  p.ParentP=''''  group by p.fc order by p.fc ';
          ado2.Open;
          ado2.First;
          aroundColors1 := '';
          allowColors1 := '1234';

          // aroundColors1 := aroundColors1 + curpFC;
          allowColors1 := stringreplace(allowColors1, curpFC, '', []);
          if ado2.RecordCount > 0 then
            while not ado2.Eof do
            begin
              aroundColors1 := aroundColors1 + ado2.FieldByName('fc').AsString;
              allowColors1 := stringreplace(allowColors1,
                ado2.FieldByName('fc').AsString, '', []);
              ado2.Next;
            end;
          // if ((aroundColors='1234') or (aroundColors='01234')) then
          if allowColors1 = '' then
          begin
            isnosub := True;
            // break;
            ado1.Next;
            continue;
          end;

          allowColors := allowColors1;
          // C1248C1111 := stringreplace(allowColors,
          // get1234(allowColors), '', []);
          // if C1248C1111 = '' then
          C1248C1111 := '-1';

          adotemp1.Close;
          adotemp1.SQL.Text := 'update points set fc=' + get1234(allowColors) +
            ',C1248C1111=' + C1248C1111 + ',ParentP=''' + curpparent +
            '''  where dprid=' + dprid + ' and pcode=''' +
            ado1.FieldByName('pcode').AsString + '''';
          adotemp1.ExecSQL;
          isnosub := False;
          isnosubEOF := False;
          break;

          // aado1.Next;
        end;
        // if isnotsub then  break;
        // Memo1.Lines.Add(ado1.FieldByName('pcode').AsString+'      ');
        // Application.ProcessMessages;
        if not isnosubEOF then
        begin
          // pullAll111(ado1.FieldByName('pcode').AsString);
          Result := ado1.FieldByName('pcode').AsString;
        end;

        if isnosubEOF then
        begin
          if curpparent = 'P66' then
            Application.ProcessMessages;
          Result := pullBackpush(curpparent);
        end;

        /// /////////
        // pullAll(ado1.FieldByName('pcode').AsString);
      end;
      if ado1.RecordCount = 0 then
      begin
        if curpparent = 'P66' then
          Application.ProcessMessages;
        Result := pullBackpush(curpparent);
      end;
    end;
  end;
  function pullAll(curpp: string; isdraw: boolean): string;
  var
    ado1, ado2, adotemp1: TADOQuery;
    g1, b1, isnosub, isnosubEOF: boolean;
    cpc1, cpc2: string;
    cfcp1, cfcp2, ccp1, ccp2, I: Integer;
    curpparent, curpID, curpFC, aroundColors1, allowColors1, C1248C1111,
      allowColors: string;
    pullBackpushResult: string;
  begin
    adotemp1 := TADOQuery.Create(self);
    adotemp1.Connection := self.ADOConnection1;
    ado1 := TADOQuery.Create(self);
    ado1.Connection := self.ADOConnection1;
    ado2 := TADOQuery.Create(self);
    ado2.Connection := self.ADOConnection1;

    ado2.Close;
    ado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
      ' and p.pcode =''' + curpp + '''';
    ado2.Open;
    curpparent := ado2.FieldByName('ParentP').AsString;
    curpID := ado2.FieldByName('id').AsString;
    curpFC := ado2.FieldByName('FC').AsString;
    if isdraw then
    begin
      // Memo1.Lines.Delete(Memo1.Lines.Count - 1);
      Memo1.Lines.Add(leftstr(curpp + '          ', 10) + curpFC + '   :' +
        inttostr(Memo1.Lines.Count + 1));
      // if curpp='ROOT' then   exit;
      drawppp(curpp, curpFC);
    end;

    Application.ProcessMessages;
    if exitOut then
      exit;
    // curpp := aado1.FieldByName('pcode').AsString;
    // aado1.Refresh;  缺少更新的键列信息
    ado2.Close;
    ado2.SQL.Text := 'select count(*) as cc from points as p where p.dprid=' +
      dprid + ' and p.fc=0';
    ado2.Open;
    if ado2.FieldByName('cc').AsInteger = 0 then
    begin
      RResutString := '有解，已完成';
      showmessage('有解，已完成');
      exit;
    end;

    if curpparent = 'Root' then
    begin
      RResutString := '穷举算法已完成，但无解';
      showmessage('穷举算法已完成，但无解');
      exit;
    end;

    /// //////////////////////////////////
    if curpp = 'P8' then
      Application.ProcessMessages;
    if 1 = 2 then
      if (Memo1.Lines[Memo1.Lines.Count - 1] = Memo1.Lines[Memo1.Lines.Count
        - 2]) then
      begin
        Memo1.Lines.Delete(Memo1.Lines.Count - 1);
        Application.ProcessMessages;
        Memo1.Lines.Delete(Memo1.Lines.Count - 1);
        Application.ProcessMessages;
        Memo1.Lines.Delete(Memo1.Lines.Count - 1);
        adotemp1.Close;
        adotemp1.SQL.Text :=
          'update points set fc=0,C1248C1111=0,ParentP=''''  where dprid=' +
          dprid + ' and pcode=''' + curpp + '''';
        adotemp1.ExecSQL;
        TLabel(self.FindComponent('FC' + curpp)).Free;
        Application.ProcessMessages;

        ado2.Close;
        ado2.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
          ' and p.pcode =''' + curpparent + '''';
        ado2.Open;
        curpp := curpparent;
        curpparent := ado2.FieldByName('ParentP').AsString;
        curpID := ado2.FieldByName('id').AsString;
        curpFC := ado2.FieldByName('FC').AsString;

        adotemp1.Close;
        adotemp1.SQL.Text :=
          'update points set fc=0,C1248C1111=0,ParentP=''''  where dprid=' +
          dprid + ' and pcode=''' + curpp + '''';
        adotemp1.ExecSQL;
        TLabel(self.FindComponent('FC' + curpp)).Free;
        Application.ProcessMessages;

        pullAll(curpparent, False);
        exit;

      end;

    /// //////////////////
    ado1.Close;
    ado1.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
      ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
      + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
      + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curpp +
      ''' and e.relation ) ' + ' and p.ParentP=''''  order by p.id ';
    ado1.Open;
    isnosub := False;
    if ado1.RecordCount > 0 then
    begin
      ado1.First;
      isnosubEOF := True;
      while not ado1.Eof do
      begin
        /// //////////
        ado2.Close;
        ado2.SQL.Text := 'select p.fc from points as p where p.dprid=' + dprid +
          ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
          + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
          + ' where e.dprid=' + dprid + ' and e.pcode1=''' +
          ado1.FieldByName('pcode').AsString + ''' and e.relation ) ';
        // +' and  p.ParentP=''''  group by p.fc order by p.fc ';
        ado2.Open;
        ado2.First;
        aroundColors1 := '';
        allowColors1 := '1234';

        // aroundColors1 := aroundColors1 + curpFC;
        allowColors1 := stringreplace(allowColors1, curpFC, '', []);
        if ado2.RecordCount > 0 then
          while not ado2.Eof do
          begin
            aroundColors1 := aroundColors1 + ado2.FieldByName('fc').AsString;
            allowColors1 := stringreplace(allowColors1,
              ado2.FieldByName('fc').AsString, '', []);
            ado2.Next;
          end;
        // if ((aroundColors='1234') or (aroundColors='01234')) then
        if allowColors1 = '' then
        begin
          isnosub := True;
          // break;
          ado1.Next;
          continue;
        end;

        allowColors := allowColors1;
        // C1248C1111 := stringreplace(allowColors, get1234(allowColors), '', []);
        // if C1248C1111 = '' then
        C1248C1111 := '-1';

        adotemp1.Close;
        adotemp1.SQL.Text := 'update points set fc=' + get1234(allowColors) +
          ',C1248C1111=' + C1248C1111 + ',ParentP=''' + curpp +
          '''  where dprid=' + dprid + ' and pcode=''' +
          ado1.FieldByName('pcode').AsString + '''';
        adotemp1.ExecSQL;
        isnosub := False;
        isnosubEOF := False;
        break;

        // aado1.Next;
      end;
      // if isnotsub then  break;
      // Memo1.Lines.Add(ado1.FieldByName('pcode').AsString+'      ');
      // Application.ProcessMessages;
      if not isnosubEOF then
        pullAll(ado1.FieldByName('pcode').AsString, True);
    end;

    if ado1.RecordCount = 0 then
    begin
      // isnosub := True;
      pullAll(curpparent, False);
    end;
    if isnosubEOF then
    begin
      isnosub := True;
    end;
    /// /////////////////////////////回溯back
    if isnosub then // 求先出curppparent
    begin
      if curpp = 'P66' then
        Application.ProcessMessages;
      pullBackpushResult := pullBackpush(curpp);

      if pullBackpushResult <> '' then
        pullAll(pullBackpushResult, True);
      // pullAll(pullBackpushResult, False);
      if pullBackpushResult = '' then
      begin
        RResutString := '穷举算法已完成，但无解';
        showmessage('穷举算法已完成，但无解');
        exit;
      end;
    end;

    ado1.Free;
    ado2.Free;
    adotemp1.Free;

  end;

/// ///函数主体开始
var
  curpp, curppparent, curppID, aroundColors, allowColors: string;
  isnotsub: boolean;
  curppFC: Integer;
  memostream: TMemoryStream;
  FFCC: TLabel;

begin
  /// ///函数主体开始    aado1, aado2, aadotemp: TADOQuery;
  exitOut := False;
  aadotemp := TADOQuery.Create(self);
  aadotemp.Connection := self.ADOConnection1;
  aado1 := TADOQuery.Create(self);
  aado1.Connection := self.ADOConnection1;
  aado2 := TADOQuery.Create(self);
  aado2.Connection := self.ADOConnection1;
  Memo1.Lines.Clear;
  curp0 := seleP0;

  aadotemp.Close;
  aadotemp.SQL.Text :=
    'update points set fc=1,C1248C1111=-1,ParentP=''Root''  where dprid=' +
    dprid + ' and pcode=''' + curp0 + '''';
  aadotemp.ExecSQL;
  Memo1.Lines.Add(leftstr(curp0 + '          ', 10) + '1    Root');
  drawppp(curp0, '1');
  FFCC := TLabel(self.FindComponent('FC' + curp0));
  FFCC.Font.Color := clred;
  aado1.Close;

  aado1.SQL.Text := 'select p.* from points as p where p.dprid=' + dprid +
    ' and p.pcode in (select e.pcode2  from (select 12 as wayissay,e1.id, e1.Pcode1,e1.Pcode2,e1.dprid,e1.RelationEX2,e1.Relation,e1.p1c,e1.p1fc,e1.p2c,e1.p2fc from edges as e1 union '
    + 'select  21 as wayissay,e2.id,e2.Pcode2,e2.Pcode1,e2.dprid,e2.RelationEX2,e2.Relation,e2.p2c,e2.p2fc,e2.p1c,e2.p1fc from edges as e2 ) as e '
    + ' where e.dprid=' + dprid + ' and e.pcode1=''' + curp0 +
    ''' and e.relation ) ' + ' and  p.ParentP=''''   order by p.id ';
  // +'  order by p.id ';
  aado1.Open;
  aado1.First;
  if aado1.RecordCount > 0 then
  begin

    aadotemp.Close;
    aadotemp.SQL.Text := 'update points set fc=2,C1248C1111=34,ParentP=''' +
      curp0 + '''  where dprid=' + dprid + ' and pcode=''' +
      aado1.FieldByName('pcode').AsString + '''';
    aadotemp.ExecSQL;
    // Memo1.Lines.Add(aado1.FieldByName('pcode').AsString+'     2');
  end;
  Application.ProcessMessages;

  RResutString := '';
  pullAll(aado1.FieldByName('pcode').AsString, True);

  aado1.Free;
  aado2.Free;
  aadotemp.Free;

  if RResutString = '有解，已完成' then
  begin
    self.ProgressBar2.Visible := False;
    self.RzLabel2.Visible := False;
    self.RzLabel3.Visible := False;
    memostream := TMemoryStream.Create;
    Memo1.Lines.SaveToStream(memostream);
    refreshhClick(nil);

    adotemp.Close;
    adotemp.SQL.Text :=
      'select min(p.fc) as fff,count(*) as cccount    from points as p where  p.dprid='
      + dprid + ' group by p.fc ';
    adotemp.Open;
    Memo1.Lines.Clear;
    memostream.Position := 0;
    Memo1.Lines.LoadFromStream(memostream);
    memostream.Free;
    Memo1.Lines.Add('算法6：穷举法（映像马踏棋盘/~全城/~天下/~飞燕）');
    Memo1.Lines.Add('最后剩余如下' + inttostr(adotemp.RecordCount) + '种颜色：');
    adotemp.First;
    while not adotemp.Eof do
    begin
      Memo1.Lines.Add('颜色：' + (adotemp.FieldByName('fff').AsString) + '  数量：' +
        adotemp.FieldByName('cccount').AsString);
      adotemp.Next;
    end;
  end
  else
  begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('算法6：穷举法（映像马踏棋盘/~全城/~天下/~飞燕）');
    Memo1.Lines.Add(RResutString);

  end;
end;

procedure TFC.N6Click(Sender: TObject);
var
  PPP: TShape;
  eee, fuckLine: TRzLine;
  ttt: TLabel;
  I, www, hhh: Integer;
  lengthcal: real;
  pcode, truelength, curp, fflag: string;
  p1x, p1y, p2x, p2y: Integer;
  bbb: boolean;
  fcp1, fcp2, cp1, cp2, maxc: Integer;
begin
  for I := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[I] is TLabel)) then
    begin
      if (((uppercase(self.Components[I].Name[1]) + uppercase(self.Components[I]
        .Name[2])) = 'FC')) then
      begin
        self.Components[I].Free;
        continue;
      end;
    end;

  end;

  // fflag := '原始算法';
  fflag := '原始算法2';

  /// //////////////////////////////////////////////////////////////////////////////////////////////////
  /// /////////////////////////////////////////////////////////////////////////////////////////////////
  if (fflag = '原始算法2') then // if (fflag = '原始算法2') then
  begin

    // if (1 = 1) then
    // if (1 = 2) then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select pp.* from (select p.*,(select count(*) from edges as e where (e.relation) '
        + ' and e.dprid=p.dprid and (e.pcode1=p.pcode or e.pcode2=p.pcode)) as cccc  '
        + 'from points as p where  p.dprid=' + dprid +
        ') as pp order by pp.cccc';
      ADOQuery1.Open;
      ADOQuery1.First;
      I := -1;
      while not ADOQuery1.Eof do
      begin
        I := I + 1;
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set C=' + inttostr(I) + ',FC=' +
          inttostr(I) + ',CCC=' + ADOQuery1.FieldByName('cccc').AsString +
          ' where pcode=''' + ADOQuery1.FieldByName('pcode').AsString +
          ''' and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;
        ADOQuery1.Next;
      end;
    end;

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update edges set relationex2=relation where dprid=' +
      dprid + ' ';
    ADOQuery2.ExecSQL;

  end; // if (fflag = '原始算法2') then

  refreshhClick(nil);
end;

procedure TFC.N7Click(Sender: TObject);
begin
  showmessage('此为演示数据中弹出五环肯普链的例子，要代码来模拟才出现，现实中我找不到实例，演示五环肯普链用');
  isTest5Chain := 1; // 实例且改代码才可测五环肯普链涟漪
  isTest5ChainReturnOK := 0; // 实例且改代码才可测五环肯普链涟漪
  KePupClick(nil);
  isTest5Chain := 0; // 实例且改代码才可测五环肯普链涟漪
  isTest5ChainReturnOK := 0; // 实例且改代码才可测五环肯普链涟漪
end;

procedure TFC.N8Click(Sender: TObject);
begin
  showmessage('此为演示数据中弹出五环肯普链的例子，要返回成功还要要代码来修改数据模拟才出现，现实中我找不到实例，演示五环肯普链用');
  isTest5Chain := 1; // 实例且改代码才可测五环肯普链涟漪
  isTest5ChainReturnOK := 1; // 实例且改代码才可测五环肯普链涟漪
  KePupClick(nil);
  isTest5Chain := 0; // 实例且改代码才可测五环肯普链涟漪
  isTest5ChainReturnOK := 0; // 实例且改代码才可测五环肯普链涟漪
end;

procedure TFC.RzButton1OLDClick(Sender: TObject);
var
  i1, i2, i3, k1, k2, k3: Integer;
  j1, j2, j3, j4, j5, j6: Integer;
  i00, i01, i02, i03, i04, i05, i06, i07, i08, i09: Integer;

  RResult: string;
begin
  if RadioButton1.Checked then
    TRzButton(Sender).Tag := 1
  else
    TRzButton(Sender).Tag := 2;
  Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '反例.jpg');

  RResult := '';



  // 九重循环，九层之台，起于累土，千里之行，始于足下

  for i1 := 1 to 4 do // 雨
    for j1 := 1 to 4 do // 晴
      for i2 := 1 to 4 do // 圆
        for j2 := 1 to 4 do // 缺
          for i3 := 1 to 4 do // 贫
            for j3 := 1 to 4 do // 富
              for k1 := 1 to 4 do // 天
                for k2 := 1 to 4 do // 地
                  for k3 := 1 to 4 do // 人
                    for j4 := 1 to 4 do
                      for j5 := 1 to 4 do
                        for j6 := 1 to 4 do
                        begin
                          // if ((i1 = j1) or (i1 = j3) or (i1 = k1)) then
                          // continue;
                          // if ((j1 = i1) or (j1 = i2) or (j1 = k1)) then
                          // continue;
                          // if ((i2 = j2) or (i2 = j1) or (i2 = k2) or (i2=k1)) then
                          // continue;
                          // if ((j2 = i2) or (j2 = i3) or (j2 = k2) or (j2=k3)) then
                          // continue;
                          // if ((i3 = j2) or (i3 = j3) or (i3 = k3)) then
                          // continue;
                          // if ((j3 = i3) or (j3 = i1) or (j3 = k3) or(j3=k1)) then
                          // continue;
                          //
                          // if ((k1 = i1) or (k1 = j1) or (k1 = k2) or (k1 = k3) or (k1=i2) or (i1=j3)) then
                          // continue;
                          // if ((k2 = i2) or (k2 = j2) or (k2 = k1) or (k2 = k3)) then
                          // continue;
                          // if ((k3 = i3) or (k3 = j3) or (k3 = k2) or (k3 = k1)or (k3=j2)) then
                          // continue;

                          if ((i1 = k1) or (i1 = k3) or (i1 = j1) or (i1 = j6))
                          then
                            continue;
                          if ((i2 = k1) or (i2 = k2) or (i2 = j2) or (i2 = j3))
                          then
                            continue;
                          if ((i3 = k2) or (i3 = k3) or (i3 = j4) or (i3 = j5))
                          then
                            continue;

                          if ((j1 = k1) or (j1 = i1) or (j1 = j2)) then
                            continue;
                          if ((j2 = k1) or (j2 = i2) or (j2 = j1)) then
                            continue;
                          if ((j3 = k2) or (j3 = i2) or (j3 = j4)) then
                            continue;
                          if ((j4 = k2) or (j4 = i3) or (j4 = j3)) then
                            continue;
                          if ((j5 = k3) or (j5 = i3) or (j5 = j6)) then
                            continue;
                          if ((j6 = k3) or (j6 = i1) or (j6 = j5)) then
                            continue;

                          if ((k1 = i1) or (k1 = j1) or (k1 = j2) or (k1 = i2)
                            or (k1 = k2) or (k1 = k3)) then
                            continue;
                          if ((k2 = i2) or (k2 = j3) or (k2 = j4) or (k1 = i3)
                            or (k2 = k1) or (k2 = k3)) then
                            continue;
                          if ((k3 = i3) or (k3 = j5) or (k3 = j6) or (k3 = i1)
                            or (k3 = k2) or (k3 = k1)) then
                            continue;

                          RResult := '雨' + inttostr(i1) + '晴' + inttostr(j1) +
                            '圆' + inttostr(i2) + '缺' + inttostr(j2) + '贫' +
                            inttostr(i3) + '富' + inttostr(j3) + '天' +
                            inttostr(k1) + '地' + inttostr(k2) + '人' +
                            inttostr(k3);
                          break;
                        end;
  if RResult = '' then
    showmessage('穷举历遍，无解！四色定理不成立')
  else
    showmessage(RResult);
end;

procedure TFC.RzButton2Click(Sender: TObject);
var
  FC1, FC2, ok: Integer;
  pcode1, pcode2: string;
begin
  ok := 0;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text :=
    'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
    + dprid + ') as pFC1, ' +
    '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
    + dprid + ') as pFC2 ' + ' from edges where Relation ' +
    ' and dprid=' + dprid;

  ADOQuery1.Open;
  ADOQuery1.First;
  while not ADOQuery1.Eof do
  begin
    FC1 := ADOQuery1.FieldByName('pFC1').AsInteger;
    FC2 := ADOQuery1.FieldByName('pFC2').AsInteger;
    pcode1 := ADOQuery1.FieldByName('pcode1').AsString;
    pcode2 := ADOQuery1.FieldByName('pcode2').AsString;
    if (FC1 = FC2) then
    begin
      ok := ok + 1;
      showmessage(pcode1 + ' 与 ' + pcode2 + ' 相邻有同色同为' + inttostr(FC1) + '，不行');
    end;
    if (FC1 * FC2 = 0) then
    begin
      ok := ok + 1;
      showmessage(pcode1 + ' 与 ' + pcode2 + ' 有一个颜值为0，不行');
    end;
    ADOQuery1.Next;
  end;
  if (ok = 0) then
    showmessage('相邻全不同色，行')
  else
    showmessage('相邻有同色或颜值为0，不行');

end;

procedure TFC.RzButton1Click(Sender: TObject);
var
  p1, p2, p3, p4, p5, p6, pp6i, tempi: Integer;
  j1, j2, j3, j4, j5, j6: Integer;
  i00, i01, i02, i03, i04, i05, i06, i07, i08, i09: Integer;
  PP6: array [1 .. 6] of Integer;
  RResult, pcode1, pcode2, temps: string;
  pindex1, pindex2: Integer;
  ok, notok: boolean;
begin
  if RadioButton1.Checked then
    TRzButton(Sender).Tag := 1
  else
    TRzButton(Sender).Tag := 2;
  Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '反例.jpg');

  RResult := '';

  N6Click(nil);

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'update points set CCC=0,F1=0,C=0,FC=0 where  dprid=' +
    dprid + ' ';
  ADOQuery2.ExecSQL;

  ADOQuery2.Close;
  ADOQuery2.SQL.Text := 'select  count(1) as pc from points where 1=1 and F1=0 '
    + ' and dprid=' + dprid + ' ';
  ADOQuery2.Open;
  PCount := ADOQuery2.FieldByName('pc').AsInteger;

  curPcount := PCount + 1;

  while curPcount > 6 do
  begin
    curPcount := curPcount - 1;
    if curPcount = 6 then
    begin
      ADOQuery2.Close;
      ADOQuery2.SQL.Text := 'select  * from points where 1=1 and F1=0 ' +
        ' and dprid=' + dprid + ' ';
      ADOQuery2.Open;
      ADOQuery2.First;
      tempi := 0;
      while not ADOQuery2.Eof do
      begin
        tempi := tempi + 1;
        ADOQuery2.Edit;
        ADOQuery2.FieldByName('F1').AsInteger := tempi;
        ADOQuery2.Post;
        ADOQuery2.Next;
      end;
      break;
    end;

    ADOQuery1.Close;
    ADOQuery1.SQL.Text :=
      'select ww.* from (select w.pcode1,count(1) as pc from (select pcode1,pcode2 from edges where Relation '
      + ' and dprid=' + dprid +
      ' and pcode1 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) + ')  ' +
      ' union select pcode2,pcode1 from edges where relation and dprid=' + dprid
      + ' and pcode1 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' + dprid +
      'and F1<' + inttostr(curPcount) + ')  ' +
      ' ) as w group by w.pcode1) as ww order by ww.pc';
    ADOQuery1.Open;
    if ADOQuery1.FieldByName('pc').AsInteger > 5 then
    begin
      showmessage('数据有错了');

    end;

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'update points set F1=' + inttostr(curPcount) +
      ',CCC=' + ADOQuery1.FieldByName('pc').AsString + ' where pcode=''' +
      ADOQuery1.FieldByName('pcode1').AsString + ''' and dprid=' + dprid + ' ';
    ADOQuery2.ExecSQL;
    // exit;

  end;
  if curPcount = 6 then
  // showmessage(inttostr(PCount));
  begin
    // 九重循环，九层之台，起于累土，千里之行，始于足下
    ok := False;
    notok := True;
    for p1 := 1 to 4 do
    begin
      for p2 := 1 to 4 do
      begin
        for p3 := 1 to 4 do
        begin
          for p4 := 1 to 4 do
          begin
            for p5 := 1 to 4 do
            begin
              for p6 := 1 to 4 do
              begin
                PP6[1] := p1;
                PP6[2] := p2;
                PP6[3] := p3;
                PP6[4] := p4;
                PP6[5] := p5;
                PP6[6] := p6;
                ok := True;
                notok := True;
                ADOQuery1.Close;
                ADOQuery1.SQL.Text :=
                  'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                  + dprid + ') as pF1, ' +
                  '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                  + dprid + ') as pF2 ' + ' from edges where Relation ' +
                  ' and dprid=' + dprid + ' ';
                ADOQuery1.Open;
                ADOQuery1.First;
                while not ADOQuery1.Eof do
                begin
                  // pcode1 := ADOQuery1.FieldByName('pF1').AsString;
                  // pcode2 := ADOQuery1.FieldByName('pF2').AsString;
                  pindex1 := ADOQuery1.FieldByName('pF1').AsInteger;
                  pindex2 := ADOQuery1.FieldByName('pF2').AsInteger;
                  if ((pindex1 > 0) and (pindex1 < 7)) then
                    if ((pindex2 > 0) and (pindex2 < 7)) then
                      if PP6[pindex1] = PP6[pindex2] then
                      begin
                        notok := True;
                        ok := False;
                        break;
                      end;
                  ADOQuery1.Next;
                end;
                if ok then
                  for pp6i := 1 to 6 do
                  begin

                    ADOQuery2.Close;
                    ADOQuery2.SQL.Text := 'update points set FC=' +
                      inttostr(PP6[pp6i]) + ' where F1=' + inttostr(pp6i) +
                      ' and dprid=' + dprid + ' ';
                    ADOQuery2.ExecSQL;
                  end;

                if ok then
                  break;
              end;
              if ok then
                break;
            end;
            if ok then
              break;
          end;
          if ok then
            break;
        end;
        if ok then
          break;
      end;
      if ok then
        break;
    end;
  end;

  while curPcount < PCount do
  begin

    curPcount := curPcount + 1;
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := 'select  * from points where 1=1 and F1= ' +
      inttostr(curPcount) + ' and dprid=' + dprid + ' ';
    ADOQuery2.Open;
    tempi := ADOQuery2.FieldByName('CCC').AsInteger;
    if ADOQuery2.FieldByName('pcode').AsString = 'P96' then
      Application.ProcessMessages; // 断点查错，果然不顺也
    if tempi < 4 then
    begin

      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        showmessage('小于4的，可能有错了');
      end
      else
      begin
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set FC=' + temps[1] + ' where F1='
          + inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;

      end;
    end;
    if tempi = 4 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        // 4环肯普链树  必定1234
        showmessage('4环肯普链树  必定1234');
      end
      else
      begin
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set FC=' + temps[1] + ' where F1='
          + inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;

      end;
    end;
    if tempi = 5 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        + dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' +
        dprid + ' and (pcode1=''' + ADOQuery2.FieldByName('pcode').AsString +
        ''' or pcode2=''' + ADOQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      ADOQuery1.Open;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        temps := temps.Replace(ADOQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(ADOQuery1.FieldByName('pFC2').AsString, '');
        ADOQuery1.Next;
      end;
      if temps = '' then
      begin
        // 5环肯普链树   必定121234
        showmessage('5环肯普链树   必定121234');
      end
      else
      begin
        ADOQuery2.Close;
        ADOQuery2.SQL.Text := 'update points set FC=' + temps[1] + ' where F1='
          + inttostr(curPcount) + ' and dprid=' + dprid + ' ';
        ADOQuery2.ExecSQL;

      end;
    end;
  end;

  refreshhClick(nil);
  showmessage('ok');
end;

procedure TFC.RzLine1MouseEnter(Sender: TObject);
var
  www: TLabel;
  w111: TstringList;
  w1, w2, w3: string;
begin
  // LineBeforeColor,LableBeforeColor:TColor;
  LineBeforeColor := TRzLine(Sender).LineColor;
  TRzLine(Sender).LineColor := clblue;
  www := TLabel(self.FindComponent('M' + TRzLine(Sender).Name));
  if www <> nil then
  begin
    LableBeforeColor := www.Font.Color;
    www.Font.Color := clblue;
    // www.BringToFront;

  end;
  w3 := TRzLine(Sender).Name;
  w111 := TstringList.Create;
  w111.Delimiter := 'P';
  w111.DelimitedText := w3;
  w1 := 'P' + w111[1];
  w2 := 'P' + w111[2];
  // TShape(self.FindComponent(w1)).BringToFront;
  www := TLabel(self.FindComponent('M' + w1));
  if www <> nil then
  begin
    www.Font.Color := clblue;
    // www.BringToFront;

  end;

  // TShape(self.FindComponent(w2)).BringToFront;
  www := TLabel(self.FindComponent('M' + w2));
  if www <> nil then
  begin
    www.Font.Color := clblue;
    // www.BringToFront;

  end;
  w111.Free;

end;

procedure TFC.RzLine1MouseLeave(Sender: TObject);
var
  www: TLabel;
  w111: TstringList;
  w1, w2, w3: string;
begin
  TRzLine(Sender).LineColor := LineBeforeColor;
  www := TLabel(self.FindComponent('M' + TRzLine(Sender).Name));
  if www <> nil then
  begin
    www.Font.Color := LableBeforeColor;
    // www.BringToFront;

  end;
  w3 := TRzLine(Sender).Name;
  w111 := TstringList.Create;
  w111.Delimiter := 'P';
  w111.DelimitedText := w3;
  w1 := 'P' + w111[1];
  w2 := 'P' + w111[2];
  TShape(self.FindComponent(w1)).BringToFront;
  www := TLabel(self.FindComponent('M' + w1));
  if www <> nil then
  begin
    www.Font.Color := clBlack;
    // LableBeforeColor;不想理太多无用的事了
    // www.BringToFront;

  end;

  // TShape(self.FindComponent(w2)).BringToFront;
  www := TLabel(self.FindComponent('M' + w2));
  if www <> nil then
  begin
    www.Font.Color := clBlack;
    // LableBeforeColor;不想理太多无用的事了
    // www.BringToFront;

  end;
  w111.Free;
end;

procedure TFC.RzNumericEdit1Change(Sender: TObject);
  function IsShiftKeyPressed: boolean;
  begin
    Result := (GetKeyState(VK_SHIFT) and $80) <> 0;
  end;

begin
  if IsShiftKeyPressed then
  else
    refreshhClick(nil);
  // 按住shift键，可以屏蔽过滤中间连续变化的值  //delphi   判断按下shift键

end;

end.
