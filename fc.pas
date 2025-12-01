{%RunFlags MESSAGES+}
unit FC;

{$mode objfpc}{$H+}
//{$I lcl_defines.inc}
interface

uses
  Types, Math, StrUtils, DateUtils,
  LazFileUtils, LazUTF8,
  LResources, LCLStrConsts,
  Classes, SysUtils, DB, SQLDB, SQLite3Conn, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls, LCLType, Menus,//,files;//System;
  lMessages;

type

  { TMain }

  TMain = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button2: TButton;
    Button3: TButton;
    hintPoint: TMenuItem;
    memoPoint: TMenuItem;
    lineMenu: TPopupMenu;
    lineBeginEnd: TMenuItem;
    updateMemo: TMenuItem;
    Linememo: TMenuItem;
    shiftEdges: TToggleBox;
    shiftPoints: TToggleBox;
    SQLTransaction2: TSQLTransaction;
    SQLTransaction3: TSQLTransaction;
    stepTime: TEdit;
    Image1: TImage;
    Label3: TLabel;
    Kepu: TMenuItem;
    KePuPlay5circle: TMenuItem;
    KePuPlay5circle222: TMenuItem;
    PopupMenu1: TPopupMenu;
    pMenu: TPopupMenu;
    ScrollBox1: TScrollBox;
    setpoints: TButton;
    DataSource1: TDataSource;
    Memo_SaveToTxT: TMemo;
    pointsXYpos: TButton;
    addOnePoint: TButton;
    emptyfree: TButton;
    Button7: TButton;
    Button8: TButton;
    refrash: TButton;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Memo3: TMemo;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    ProgressBar1: TProgressBar;
    Shape1: TShape;
    Splitter1: TSplitter;
    SQLConnector1: TSQLConnector;
    SQLConnector2: TSQLConnector;
    SQLConnector3: TSQLConnector;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLtemp: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    OpenDialog1: Topendialog;
    userclickwww: TMenuItem;
    delOnePoint: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure Button10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure Button11Click(Sender: TObject);
    procedure delOnePointClick(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure Label3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure shiftPointsChange(Sender: TObject);
    procedure shiftPointsClick(Sender: TObject);
    procedure shiftEdgesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure addOnePointClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure refreshClick(Sender: TObject);
    procedure emptyfreeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pointsXYposClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure setpointsClick(Sender: TObject);
    procedure Shape1ChangeBounds(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure Shape1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure Shape1Paint(Sender: TObject);
    procedure KepuClick(Sender: TObject);
    procedure KePuPlay5circleClick(Sender: TObject);
    procedure KePuPlay5circle222Click(Sender: TObject);
    procedure shiftEdgesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure shiftPointsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure updateMemoClick(Sender: TObject);
    procedure userclickwwwClick(Sender: TObject);
  private

  public
    isdebug: integer;
    alreadyLength: double;
    beginp, endp, FFF, ALLPATH2, MEMO2, ALLLength2: string;
    PPP: TStringList;
    oriP: Tpoint;
    userclick: boolean;
    LabelsCaptions: TStringList;

    function getPcode(pcode: string): tshape;
    procedure refreshoneP(ccolor: string; pcode: string; iitime1000: integer;
      ccclred: TColor);
    procedure fromLabelcaption;
    procedure fromLabelcaptionC(onlyc: TColor);
    procedure AutorefreshALLP;
    procedure looktime(iitime1000: integer);
    procedure savetoLabelcaption;
    procedure groupcount;
    procedure showli(cap,msg: string);
  end;

type
  //   TSmallPoint =
  //{$ifndef FPC_REQUIRES_PROPER_ALIGNMENT}
  //  packed
  //{$endif FPC_REQUIRES_PROPER_ALIGNMENT}
  //  record
  //      X,
  //      Y : SmallInt;
  //      end;
  //TlinePoint =
  //  {$ifndef FPC_REQUIRES_PROPER_ALIGNMENT}
  //  packed
  //  {$endif FPC_REQUIRES_PROPER_ALIGNMENT}
  //  record
  //  beginPcode: string;
  //  endPcode: string;
  //  direction: string;
  //  beginPoint: tpoint;
  //  endPoint: tpoint;
  //end;
  //PlinePoint =^TlinePoint;
  TlinePoint = class(TComponent)
  private
  protected
  public
    beginPcode: string;
    endPcode: string;
    direction: string;
    beginPoint: tpoint;
    endPoint: tpoint;
  end;

  { TPsubpPoint }

  TPsubpPoint = class(TComponent)
  private
  protected
  public
    Pcode: string;
    subPcode: TStringList;
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  Main: TMain;
  // FC: TFC;
  userid: string;
  demoid: string;
  dprid: string;
  AllPath, AllPath_: TStringList;
  tempList: TStringList;
  Origin: Tpoint;
  LineBeforeColor, LableBeforeColor, MyLineColor: TColor;
  mouseMoveCount, PCount, curPcount: integer;
  wwwname: string;
  shiftPointsB, shiftEdgesB: boolean;
  shiftPointsL, shiftEdgesL: TStringList;
  exitOut: boolean;
  isTest5Chain: integer; // 实例且改代码才可测五环肯普链涟漪
  isTest5ChainReturnOK: integer; // 实例且改代码才可测五环肯普链涟漪
  shapeList: TFPList;//TPointerList;//TList;
  // shapeList: TList;//TPointerList;//TList;
  LineList: TFPList;//TPointerList;//TList;
  TPsubpPointList: TFPList;
  OnPainNoPainColor: boolean;


  online: TlinePoint;
  showliForm:boolean;
implementation

uses  msgshow, u_points, msgshow2, u_edges;

  {$R *.lfm}

  { TMain }

procedure TMain.FormShow(Sender: TObject);
begin
  wwwname := '开发者：孝感动天/卧冰求鲤';
  // wwwname := '开发者：四色定要治理/四邻不安/相邻必反/草木皆兵/围棋紧箍/不是我~干的/和我无关  ';
  // wwwname := '开发者：不是我/不是我干的，和我无关/与我无关，身无分文/心无罣碍，路人甲/打酱油，老矮丑穷/身矮面丑一米八九  ';
  // wwwname := '开发者：不/不是我/不是我干的/不是我干的好事/孝感动天';
  self.Caption :=
    '四色(定理/猜想)染色算法小软件Version1.11        2025.6.26        ' +
    wwwname + '        广东吴川梅菉';
  Application.Title := self.Caption;
  // 四色定理染色算法小软件Version1.11        2025.6.13     开发者：不是我/不是我干的，和我无关/与我无关，身无分文/心无罣碍，路人甲/打酱油
  userid := '1';
  demoid := '2';
  dprid := userid;


  main.SQLConnector1.connected := True;
  main.SQLTransaction1.Active := True;
  frmpoints.SQLConnector1.connected := False;
  frmpoints.SQLTransaction1.Active := False;
  frmedges.SQLConnector1.connected := False;
  frmedges.SQLTransaction1.Active := False;
  image1.Picture.LoadFromFile(extractfilepath(ParamStr(0)) + '用户地图.jpg');
  refrash.Click;
end;

procedure TMain.RadioButton1Click(Sender: TObject);
begin
  dprid := demoid;
end;

procedure TMain.RadioButton2Click(Sender: TObject);
begin
  dprid := userid;
end;

procedure TMain.setpointsClick(Sender: TObject);
begin
  u_points.frmPoints.ShowModal;
  refrash.Click;
end;

procedure TMain.Shape1ChangeBounds(Sender: TObject);
begin

end;

procedure TMain.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  //if ((x> tshape(Sender).Left) and (x<(tshape(Sender).Left+tshape(Sender).Width))) then
  // if ((y> tshape(Sender).top) and (y<(tshape(Sender).top+tshape(Sender).Height))) then
  tshape(Sender).Tag := (x) * 100000 + (y);
end;

procedure TMain.Shape1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
var
  x0, y0, L0, T0: integer;
  i, j, k: integer;
  //www: tshape;
  pcode1, pcode2: string;
  pcode1Shape, pcode2Shape: Tshape;
  pcode1Pointer, pcode2Pointer: Tpoint;
  pline: TlinePoint;
begin
  if tshape(Sender).Tag < 100000 then exit;
  x0 := trunc(tshape(Sender).Tag div 100000);
  y0 := tshape(Sender).Tag - x0 * 100000;
  L0 := tshape(Sender).left;
  T0 := tshape(Sender).top;
  tshape(Sender).Left := tshape(Sender).left + x - x0;
  //tshape(Sender).Left :=  x - x0;
  tshape(Sender).top := tshape(Sender).top + y - y0;
  //tshape(Sender).top := y - y0;
  //tshape(Sender).Tag := x * 100000 + y;

  //SQLQuery1.Close;
  //SQLQuery1.SQL.Text := 'select * from edges where relation=1 and (pcode1=''' +
  //  tshape(Sender).Name + ''' or pcode2=''' + tshape(Sender).Name +
  //  ''') and dprid=' + dprid;
  //self.SQLQuery1.Open;
  //SQLQuery1.First;
  //while not SQLQuery1.EOF do
  //begin
  //  pcode1 := SQLQuery1.FieldByName('pcode1').AsString;
  //  pcode2 := SQLQuery1.FieldByName('pcode2').AsString;
  //  if pcode1 = tshape(Sender).Name then
  //    pcode1Shape := tshape(Sender)
  //  else
  //    pcode1Shape := getpcode(pcode1);
  //  if pcode2 = tshape(Sender).Name then
  //    pcode2Shape := tshape(Sender)
  //  else
  //    pcode2Shape := getpcode(pcode2);
  //  pcode1Pointer.x := pcode1Shape.Left + (pcode1Shape.Width div 2);
  //  pcode1Pointer.y := pcode1Shape.top + (pcode1Shape.Height div 2);
  //  pcode2Pointer.x := pcode2Shape.Left + (pcode2Shape.Width div 2);
  //  pcode2Pointer.y := pcode2Shape.top + (pcode2Shape.Height div 2);
  //  //self.Image1.Canvas.Line(pcode1Pointer,pcode2Pointer);
  //  self.ScrollBox1.Canvas.Line(pcode1Pointer, pcode2Pointer);  //ok
  //  pline := TlinePoint.Create(nil);
  //  pline.beginPcode := pcode1;
  //  pline.endPcode := pcode2;
  //  pline.direction := 'from1to2';
  //  pline.beginPoint := pcode1Pointer;
  //  pline.endPoint := pcode2Pointer;
  //  linelist.Add(pline);
  //  SQLQuery1.Next;
  //end;
  ////SQLQuery1.Close;
  for i := TPsubpPointList.Count - 1 downto 0 do
  begin
    try
      if (TPsubpPointList.Items[i]) <> nil then
      begin
        if TPsubpPoint(TPsubpPointList.Items[i]).Pcode = tshape(Sender).Name then
        begin

          for j := 0 to TPsubpPoint(TPsubpPointList.Items[i]).subPcode.Count - 1 do
          begin
            pcode1 := tshape(Sender).Name;
            pcode2 := TPsubpPoint(TPsubpPointList.Items[i]).subPcode[j];
            pcode1Shape := tshape(Sender);
            pcode2Shape := getpcode(pcode2);

            pcode2Pointer.x := pcode2Shape.Left + (pcode2Shape.Width div 2);
            pcode2Pointer.y := pcode2Shape.top + (pcode2Shape.Height div 2);
            //self.Image1.Canvas.Line(pcode1Pointer,pcode2Pointer);

            pcode1Pointer.x := L0 + (pcode1Shape.Width div 2);
            pcode1Pointer.y := T0 + (pcode1Shape.Height div 2);
            //ScrollBox1.Canvas.Brush.Color := clred;//clForm;//ScrollBox1.Color;
            ScrollBox1.Canvas.pen.Color := clForm;//clForm;//clblack;  clDefault
            ScrollBox1.Canvas.pen.Mode := pmMerge;
            self.ScrollBox1.Canvas.Line(pcode1Pointer, pcode2Pointer);  //ok

            pcode1Pointer.x := pcode1Shape.Left + (pcode1Shape.Width div 2);
            pcode1Pointer.y := pcode1Shape.top + (pcode1Shape.Height div 2);

            //ScrollBox1.Canvas.Brush.Color := clwhite;//clblack;
            ScrollBox1.Canvas.pen.Color := clblack;//clblack;
            ScrollBox1.Canvas.pen.Mode := pmCopy;
            self.ScrollBox1.Canvas.Line(pcode1Pointer, pcode2Pointer);  //ok




            pline := TlinePoint.Create(nil);
            pline.beginPcode := pcode1;
            pline.endPcode := pcode2;
            pline.direction := 'from1to2';
            pline.beginPoint := pcode1Pointer;
            pline.endPoint := pcode2Pointer;
            linelist.Add(pline);
            if 1 = 2 then
              for k := 0 to linelist.Count - 1 do
              begin
                if ((TlinePoint(linelist.Items[k]).beginPcode = tshape(Sender).Name) or
                  (TlinePoint(linelist.Items[k]).endPcode = tshape(Sender).Name)) then
                begin
                  if not ((TlinePoint(linelist.Items[k]).beginPoint =
                    pline.beginPoint) and
                    (TlinePoint(linelist.Items[k]).endPoint = pline.endPoint)) then
                  begin
                    self.ScrollBox1.Canvas.Brush.Color := ScrollBox1.Color;
                    self.ScrollBox1.Canvas.Line(TlinePoint(linelist.Items[k]).beginPoint,
                      TlinePoint(linelist.Items[k]).endPoint);  //ok

                  end;
                end;

              end;
          end;
          break;
        end;
      end;
    except
    end;
    application.ProcessMessages;
  end;
end;

procedure TMain.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
var
  x0, y0, xycenter: integer;
  p, t: tpoint;
  ii: integer;
  cc: tcolor;
begin
  if tshape(Sender).Tag < 100000 then exit;
  application.ProcessMessages;
  x0 := trunc(tshape(Sender).Tag div 100000);
  y0 := tshape(Sender).Tag - x0 * 100000;
  xycenter := StrToInt(edit1.Text) div 2;   //15
  tshape(Sender).Tag := 0;
  SQLTransaction1.Active := True;
  //SQLQuery1.Close;
  //SQLQuery1.SQL.Text := 'select * from points where pcode=''' + tshape(
  //  Sender).Name + ''' and dprid=' + dprid;
  //self.SQLQuery1.Open;
  //if SQLQuery1.RecordCount = 1 then
  //begin
  //  SQLQuery1.edit;
  //  //SQLQuery1.FieldByName('dprid').AsString := dprid;
  //  //SQLQuery1.FieldByName('pcode').AsString := 'P' + IntToStr(I);
  //  //SQLQuery1.FieldByName('pname').AsString := 'P' + IntToStr(I);
  //  SQLQuery1.FieldByName('px').AsInteger := tshape(Sender).Left + x - xycenter;
  //  //tshape(Sender).Left + x0;
  //  SQLQuery1.FieldByName('py').AsInteger := tshape(Sender).top + y - xycenter;
  //  //tshape(Sender).top + y0;
  //  SQLQuery1.Post;   /////////////////////////
  //  SQLQuery1.ApplyUpdates();

  SQLtemp.Close;
  SQLtemp.SQL.Text := 'update points set px=' +
    IntToStr(tshape(Sender).Left + x - xycenter) + ',py=' +
    IntToStr(tshape(Sender).top + y - xycenter) + ' where dprid=' +
    dprid + ' and pcode=''' + TShape(Sender).Name + '''';
  SQLtemp.ExecSQL;

  SQLTransaction1.Commit;
  SQLTransaction1.Active := True;
  /////////////////////////////////////////
  if shiftEdges.Caption = '正在shift边......' then
  begin
    cc := TShape(Sender).Brush.Color;
    TShape(Sender).Brush.Color := clred;
    ii := GetTickCount64;
    while ((GetTickCount64 - ii) < 250) do
      Application.ProcessMessages;
    // 这个常没反应，不灵，所以要这样，不顺
    //if Shift = [ssShift] then
    if ssShift in Shift then
    begin
      shiftEdgesL.Add(TShape(Sender).Name);
    end;
    //if Shift = [ssCtrl] then
    if ssCtrl in Shift then
    begin
      shiftEdgesL[shiftEdgesL.Count - 1] :=
        shiftEdgesL[shiftEdgesL.Count - 1] + ':' + TShape(Sender).Name;
      // 这个常可以星形，一个中心，其余多个，但分割时亦不顺

    end;
    TShape(Sender).Brush.Color := cc;

    exit;
  end;



  ///////////////////////////////////////////////////
  if Button = mbRight then
  begin
    p.X := X;
    p.Y := Y;
    t := TShape(Sender).clienttoscreen(p);
    delOnePoint.Hint := TShape(Sender).Name;
    hintPoint.Hint := TShape(Sender).hint;
    hintPoint.Caption := '提示：' + hintPoint.Hint;
    updateMemo.Hint := TShape(Sender).Name;
    sqltemp.Close;
    sqltemp.SQL.Text := 'select memo from points where dprid=' +
      dprid + ' and pcode=''' + TShape(Sender).Name + '''';
    sqltemp.Open;
    if sqltemp.RecordCount > 0 then
    begin
      memoPoint.Caption := '备注：' + sqltemp.FieldByName('memo').AsString;
      memoPoint.hint := sqltemp.FieldByName('memo').AsString;
    end;
    sqltemp.Close;
    pMenu.Popup(t.X, t.Y);

    exit;
  end;
  if not (ssShift in Shift) then
    refreshClick(nil);
end;

procedure TMain.Shape1Paint(Sender: TObject);
var
  p, c, cap: string;
  www: tpoint;
  ccolor: string;
  ccclred, brushcolor: tcolor;
  ii, kk, w: integer;
begin
  //   if TShape(Sender).Name=application.Hint then
  //  application.ProcessMessages;
  if Sender = nil then exit;
  cap := TShape(Sender).Caption;
  p := cap.Substring(0, cap.IndexOf(';'));
  c := cap.Substring(cap.IndexOf(';') + 1);
  // TShape(Sender).Canvas.TextOut(-10,-10,p);
  www.X := -20;
  www.y := -20;
  www := TShape(Sender).ClientToParent(www, Tscrollbox(TShape(Sender).parent));
  if CheckBox1.Checked then
    Tscrollbox(TShape(Sender).parent).Canvas.TextOut(www.x, www.y, p);
  //image1.Canvas.TextOut(www.x, www.y, p);
  //  self.ScrollBox1.Canvas.TextOut(www.x, www.y, p);
  w := StrToInt(edit1.Text);
  //TShape(Sender).Canvas.TextOut(w div 2, w div 2, c);
  TShape(Sender).Canvas.TextOut((w div 3), (w div 3) - 2, c);

  if c <> '0' then
    ccolor := c;
  //application.ProcessMessages;
  ccolor := c;
  if ccolor = '0' then
    ccclred := clwhite;
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
  //TShape(Sender).Color := ccclred;
  ////////////////////////////////  TShape(Sender).Brush.Color := ccclred;
  //if not OnPainNoPainColor then
  //application.ProcessMessages;
  if Sender = nil then exit;
  brushcolor := TShape(Sender).Brush.Color;

  if ComboBox1.Text = '染色方案一' then
  begin
    if brushcolor <> clred then
      if not ((brushcolor = clAqua) or (brushcolor = clHighLight) or
        (brushcolor = clmedgray) or (brushcolor = clblue) or
        (brushcolor = clwindowFrame)) then
        TShape(Sender).Brush.Color := ccclred;
  end;
  if ComboBox1.Text = '染色方案二' then
  begin

  end;


  // iitime1000 := trunc(strtoint(stepTime.text));
  ii := GetTickCount64;
  //now0f:= time() ;
  // while ((now()-now0f)<( (0.1)/24*3600) ) do
  // while ((GetTickCount64 - ii) < 100) do
  Application.ProcessMessages;
end;

function TMain.getPcode(pcode: string): tshape;
var
  i: integer;
begin
  Result := nil;
  for i := shapeList.Count - 1 downto 0 do
  begin
    try
      if TGraphicControl(shapeList.Items[i]) is tshape then
        if tshape(shapeList.Items[i]).Name = pcode then
        begin
          Result := tshape(shapeList.Items[i]);
          break;
          application.ProcessMessages;
        end;
    except
    end;
    application.ProcessMessages;
  end;
end;

procedure TMain.refreshoneP(ccolor: string; pcode: string; iitime1000: integer;
  ccclred: TColor);
var
  ijk, ii: integer;
  www: string;
  ooo: tshape;
  nowf, now0f: real;
  w: Tdatetime;
begin
  //  if pcode=application.Hint then
  //   application.ProcessMessages;
  //if ccclred <> clred then
  //  // 没有现成的橙色orange，事先自备才可
  //  if not ((ccclred = clAqua) or (ccclred = clHighLight) or (ccclred = clmedgray) or
  //    (ccclred = clblue) or (ccclred = clwindowFrame)) then


  if ComboBox1.Text = '染色方案一' then
  begin
    if ccclred <> clred then
      // 没有现成的橙色orange，事先自备才可
      if not ((ccclred = clAqua) or (ccclred = clHighLight) or
        (ccclred = clmedgray) or (ccclred = clblue) or (ccclred = clwindowFrame)) then
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
  end;
  if ComboBox1.Text = '染色方案二' then
  begin

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
  end;

  ooo := getpcode(pcode);
  if ooo <> nil then
  begin
    www := ooo.Caption;
    // getpcode(pcode).Caption:= www.Substring(www.IndexOf(';'));
    ooo.Caption := www.Substring(0, www.IndexOf(';')) + ';' + ccolor;
    // if not OnPainNoPainColor then exit;
    //if not OnPainNoPainColor then
    begin

      if ComboBox1.Text = '染色方案一' then
      begin
        ooo.Brush.Color := ccclred;
        //if ccclred=clred then
        //   ooo.Brush.Color := ccclred;
        // application.ProcessMessages;
        //sleep(100);
        ooo.OnPaint(ooo);
      end;
      if ComboBox1.Text = '染色方案二' then
      begin
        ooo.Brush.Color := ccclred;
        ooo.OnPaint(ooo);
      end;

    end;
    //    GetTickCount
    iitime1000 := trunc(StrToInt(stepTime.Text));
    ii := GetTickCount64;
    //now0f:= time() ;
    // while ((now()-now0f)<( (0.1)/24*3600) ) do
    while ((GetTickCount64 - ii) < iitime1000) do
      Application.ProcessMessages;
    //  looktime(-1);

  end;
  exit;




  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TLabel)) then
    begin
      if (uppercase(self.Components[ijk].Name) = uppercase('FC' + pcode)) then
      begin
        TLabel(self.Components[ijk]).Caption := ccolor;
        if not (ccclred = clwhite) then
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
      //showmessage(self.Components[ijk].Name); //shape1
      if (uppercase(self.Components[ijk].Name) = uppercase(pcode)) then
      begin

        if not (ccclred = clwhite) then
        begin
          TShape(self.Components[ijk]).Brush.Color := ccclred; // clred;

        end;
        Application.ProcessMessages;
        break;
      end;
    end;
  end;
  // iitime1000 := 0;
  //iitime1000 := trunc(strtoint(stepTime.text));
  //ii := Winapi.Windows.GetTickCount;
  //while ((Winapi.Windows.GetTickCount - ii) < iitime1000) do
  //  Application.ProcessMessages;
  //looktime(-1);
  if ccolor = '5' then
    Application.ProcessMessages;

end;

procedure TMain.fromLabelcaption;
var
  ijk, ii: integer;
  p, c, cap, ccolor: string;
  ccclred: tcolor;
begin
  // LabelsCaptions.Clear;
  //OnPainNoPainColor := False;
  application.ProcessMessages;
  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TShape)) then
      // if LabelsCaptions.Values[uppercase(self.Components[ijk].Name)]<>nil then
      if LabelsCaptions.Values[uppercase(self.Components[ijk].Name)] <> '' then
      begin
        TShape(self.Components[ijk]).Caption :=
          LabelsCaptions.Values[uppercase(self.Components[ijk].Name)];

        if ComboBox1.Text = '染色方案一' then
        begin
          //TShape(self.Components[ijk]).Brush.Color := clwhite;
          //     OnPainNoPainColor:=false;
          cap := TShape(self.Components[ijk]).Caption;
          p := cap.Substring(0, cap.IndexOf(';'));
          c := cap.Substring(cap.IndexOf(';') + 1);
          ccolor := c;
          if ccolor = '0' then
            ccclred := clwhite;
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
          TShape(self.Components[ijk]).Brush.Color := ccclred;
          //tshape(self.Components[ijk]).Refresh;
          tshape(self.Components[ijk]).OnPaint(tshape(self.Components[ijk]));
          //OnPainNoPainColor:=true;
        end;
        if ComboBox1.Text = '染色方案二' then
        begin
          TShape(self.Components[ijk]).Brush.Color := clwhite;
          tshape(self.Components[ijk]).OnPaint(tshape(self.Components[ijk]));
        end;

      end;
  end;
  //ii := gettickcount64;
  //while (gettickcount64 - ii) < 100 do
  //  application.ProcessMessages;
  //OnPainNoPainColor := True;
  //application.ProcessMessages;
end;

procedure TMain.fromLabelcaptionC(onlyc: TColor);
var
  ijk, ii: integer;
  p, c, cap, ccolor: string;
  ccclred: tcolor;
begin
  // LabelsCaptions.Clear;
  //OnPainNoPainColor := False;
  //    fromLabelcaption;
  //  exit;


  application.ProcessMessages;
  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is TShape)) then
      //    if LabelsCaptions.Values[uppercase(self.Components[ijk].Name)]<>nil then
      if LabelsCaptions.Values[uppercase(self.Components[ijk].Name)] <> '' then
      begin
        if self.Components[ijk].Name = application.hint then
          application.ProcessMessages;
        // LabelsCaptions.Add(uppercase(self.Components[ijk].Name)+'='+TLabel(self.Components[ijk]).Caption);
        //if TShape(self.Components[ijk]).Color = onlyc then
        //if not ((ccclred = clAqua) or (ccclred = clHighLight) or (ccclred = clmedgray) or
        //  (ccclred = clblue) or (ccclred = clwindowFrame)) then
        //if ((TShape(self.Components[ijk]).Brush.Color = onlyc ) or
        //    (TShape(self.Components[ijk]).Brush.Color = clAqua ) or
        //     (TShape(self.Components[ijk]).Brush.Color = clHighLight ) or
        //     (TShape(self.Components[ijk]).Brush.Color = clmedgray ) or
        //     (TShape(self.Components[ijk]).Brush.Color = clblue ) or
        //     (TShape(self.Components[ijk]).Brush.Color = clwindowFrame ) ) then
        if TShape(self.Components[ijk]).Brush.Color = onlyc then
          //if TShape(self.Components[ijk]).Brush.Color = clblue then
        begin
          //if TShape(self.Components[ijk]).Brush.Color = clblue then
          //  application.ProcessMessages;
          //if TShape(self.Components[ijk]).Brush.Color = onlyc then
          //  application.ProcessMessages;
          //if TShape(self.Components[ijk]).Brush.Color = clred then
          //  application.ProcessMessages;
          TShape(self.Components[ijk]).Caption :=
            LabelsCaptions.Values[uppercase(self.Components[ijk].Name)];
          if ComboBox1.Text = '染色方案一' then
          begin
            //TShape(self.Components[ijk]).Brush.Color := clwhite;
            //     OnPainNoPainColor:=false;
            cap := TShape(self.Components[ijk]).Caption;
            p := cap.Substring(0, cap.IndexOf(';'));
            c := cap.Substring(cap.IndexOf(';') + 1);
            ccolor := c;
            if ccolor = '0' then
              ccclred := clwhite;
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
            TShape(self.Components[ijk]).Brush.Color := ccclred;
            //tshape(self.Components[ijk]).Refresh;
            tshape(self.Components[ijk]).OnPaint(tshape(self.Components[ijk]));
            //OnPainNoPainColor:=true;
          end;
          if ComboBox1.Text = '染色方案二' then
          begin
            TShape(self.Components[ijk]).Brush.Color := clwhite;
            tshape(self.Components[ijk]).OnPaint(tshape(self.Components[ijk]));
          end;
        end;

      end;
  end;
  //ii := gettickcount64;
  //while (gettickcount64 - ii) < 500 do
  //  application.ProcessMessages;
  //OnPainNoPainColor := True;
  //application.ProcessMessages;
end;

procedure TMain.AutorefreshALLP;
var
  ijk, ii: integer;
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

procedure TMain.looktime(iitime1000: integer);
var
  ii: integer;
  sqltemp1: TSQLQuery;
begin
  userclick := True;
  ii := GetTickCount64;
  if iitime1000 > -1 then
    while ((GetTickCount64 - ii) < iitime1000) do
      Application.ProcessMessages;
  if iitime1000 = -1 then
  begin
    while userclick do
      Application.ProcessMessages;
    sqltemp1 := TSQLQuery.Create(self);
    sqltemp1.DataBase := sqltemp.DataBase;
    sqltemp1.Transaction := sqltemp.Transaction;
    Application.ProcessMessages;
    sqltemp1.Close;
    sqltemp1.SQL.Text := 'select * from points where dprid=' + dprid;
    sqltemp1.Open;
    sqltemp1.First;
    while not sqltemp1.EOF do
    begin
      LabelsCaptions.Values[uppercase(sqltemp1.FieldByName('pcode').AsString)] :=
        sqltemp1.FieldByName('fc').AsString;
      sqltemp1.Next;
    end;

    self.fromLabelcaptionC(clred);
    sqltemp1.Free;
  end;

end;

procedure TMain.savetoLabelcaption;
var
  ijk, ii: integer;
begin
  LabelsCaptions.Clear;
  for ijk := self.ComponentCount - 1 downto 0 do
  begin
    if ((self.Components[ijk] is tshape)) then
    begin

      LabelsCaptions.Add(uppercase(self.Components[ijk].Name) +
        '=' + tshape(self.Components[ijk]).Caption);
      //tshape(self.Components[ijk]).OnPaint(tshape(self.Components[ijk]));
    end;
  end;

end;



procedure TMain.groupcount;
var
  ccc: string;
begin
  memo1.Lines.Clear;

  sqltemp.Close;
  sqltemp.SQL.Text := 'select  count(1) as c  from points where dprid=' + dprid;
  sqltemp.Open;
  ccc := sqltemp.FieldByName('c').AsString;
  sqltemp.Close;
  sqltemp.SQL.Text := 'select  fc ,count(1) as c  from points where dprid=' +
    dprid + ' group by fc order by fc ';
  sqltemp.Open;
  sqltemp.First;
  memo1.Lines.Add('顔色总数:' + IntToStr(sqltemp.RecordCount));
  while not sqltemp.EOF do
  begin
    memo1.Lines.Add('顔色' + sqltemp.FieldByName('fc').AsString +
      ':' + sqltemp.FieldByName('c').AsString);
    sqltemp.Next;
  end;
  memo1.Lines.Add('总数:' + ccc);
end;

procedure TMain.showli(cap,msg: string);
var
  ii:integer;
  ffff:tform;
begin

  showliform:=false;
  ffff:=CreateMessageDialog(cap,msg,mtCustom,[mbok]);  //showmessage
  //  TMsgDlgType    = (mtWarning, mtError, mtInformation, mtConfirmation, mtCustom);
  //TMsgDlgBtn     = (mbYes, mbNo, mbOK, mbCancel, mbAbort, mbRetry, mbIgnore,
  //                  mbAll, mbNoToAll, mbYesToAll, mbHelp, mbClose);
  ffff.OnCloseQuery:=self.OnCloseQuery;
   for ii:=0 to ffff.ComponentCount-1 do
   begin
       if ffff.Components[ii] is tbitbtn then     //classname=tbitbtn
       //showmessage(tbitbtn(ffff.Components[ii]).Caption); //  &OK
        //showmessage(tbitbtn(ffff.Components[ii]).name); //  name显示为空白，难怪不易找也
       if  string(tbitbtn(ffff.Components[ii]).Caption).IndexOf('OK')>-1 then
           tbitbtn(ffff.Components[ii]).OnClick:=bitbtn1.OnClick;
   end;
  ffff.Show;
  while not showliform do
  application.ProcessMessages;
end;

procedure TMain.pointsXYposClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: boolean;
  I: integer;
begin
  if Application.MessageBox('是否清空用户项目数据？',
    '是否继续？', MB_YESNO) <> idYes then
    exit;
  SQLTransaction1.Active := True;
  SQLQuery1.Close;
  SQLQuery1.SQL.Text := 'delete  from points where dprid=' + dprid;
  SQLQuery1.ExecSQL;
  SQLQuery1.Close;
  SQLQuery1.SQL.Text := 'delete  from edges where dprid=' + dprid + '';
  SQLQuery1.ExecSQL;
  // SQLQuery1.ApplyUpdates();
  SQLTransaction1.Commit;
  SQLTransaction1.Active := True;
  FFF := '';
  self.Tag := 0;

  if dprid = userid then
  begin
    SQLQuery1.Close;
    SQLQuery1.SQL.Text := 'select * from points where dprid=' + dprid;
    self.SQLQuery1.Open;
    if SQLQuery1.RecordCount = 0 then
    begin
      NewString := '';
      ClickedOK := InputQuery('总质点个数不能小于6个',
        '请输入总的质点个数', NewString);
      if ClickedOK then
      begin
        if StrToInt(NewString) < 6 then
          exit;
        ProgressBar1.Visible := True;
        ProgressBar1.Min := 0; // ：=1，结果出错于0时。
        ProgressBar1.Max := StrToInt(NewString);
        SQLTransaction1.Active := True;
        // SQLQuery1.Close;
        //SQLQuery1.SQL.Text := 'delete from  linesxy where linetext=''-1''';
        //SQLQuery1.ExecSQL;SQLTransaction1.Commit;
        ////SQLQuery1.ApplyUpdates();
        for I := 1 to StrToInt(NewString) do
        begin

          SQLQuery1.Append;
          //SQLQuery1.Insert;
          SQLQuery1.FieldByName('dprid').AsString := dprid;
          SQLQuery1.FieldByName('pcode').AsString := 'P' + IntToStr(I);
          SQLQuery1.FieldByName('pname').AsString := 'P' + IntToStr(I);
          SQLQuery1.FieldByName('px').AsInteger := 100 + I * 10;
          SQLQuery1.FieldByName('py').AsInteger := 100 + I * 10;
          SQLQuery1.Post;
          SQLQuery1.ApplyUpdates();

          ProgressBar1.Position := I;
        end;
        ProgressBar1.Visible := False;
        SQLQuery1.ApplyUpdates();
        SQLTransaction1.Commit;
        SQLTransaction1.Active := True;

      end;
    end;
  end;
  if dprid = userid then
  begin
    SQLTransaction1.Active := True;
    SQLQuery1.Close;
    SQLQuery1.SQL.Text := 'select * from edges where dprid=' + dprid;
    self.SQLQuery1.Open;
    if SQLQuery1.RecordCount = 0 then
    begin
      SQLQuery3.Close;
      SQLQuery3.SQL.Text :=
        'select * from points where dprid=' + dprid + '  order by id';
      SQLQuery3.Open;
      SQLQuery2.Close;
      SQLQuery2.SQL.Text :=
        'select * from points where dprid=' + dprid + '  order by id';
      SQLQuery2.Open;
      SQLQuery2.First;
      ProgressBar1.Visible := True;
      ProgressBar1.Min := 0;
      ProgressBar1.Position := 0;
      ProgressBar1.Max := SQLQuery3.RecordCount * SQLQuery2.RecordCount;
      while not SQLQuery2.EOF do
      begin
        SQLQuery3.First;
        while not SQLQuery3.EOF do
        begin
          ProgressBar1.Position := ProgressBar1.Position + 1;
          if SQLQuery3.FieldByName('id').AsInteger <=
            SQLQuery2.FieldByName('id').AsInteger then
          begin
            SQLQuery3.Next;
            continue;
          end;
          SQLQuery1.Append;
          SQLQuery1.FieldByName('dprid').AsString := dprid;
          SQLQuery1.FieldByName('ecode').AsString :=
            SQLQuery2.FieldByName('pcode').AsString +
            SQLQuery3.FieldByName('pcode').AsString;
          SQLQuery1.FieldByName('pcode1').AsString :=
            SQLQuery2.FieldByName('pcode').AsString;
          SQLQuery1.FieldByName('pcode2').AsString :=
            SQLQuery3.FieldByName('pcode').AsString;
          SQLQuery1.FieldByName('pname1').AsString :=
            SQLQuery2.FieldByName('pname').AsString;
          SQLQuery1.FieldByName('pname2').AsString :=
            SQLQuery3.FieldByName('pname').AsString;
          SQLQuery1.FieldByName('Relation').AsBoolean := False;
          // SQLQuery1.FieldByName('direct').AsString := '双向或者无方向<-->';
          SQLQuery1.Post;
          SQLQuery3.Next;
        end;
        SQLQuery2.Next;
      end;
    end;
    SQLQuery1.ApplyUpdates();

    SQLTransaction1.Commit;
    SQLTransaction1.Active := True;
    ProgressBar1.Visible := False;
  end;
end;

procedure TMain.FormCreate(Sender: TObject);
begin

  MyLineColor := clGrayText; // clSilver;
  // refreshhClick(nil);
  AllPath := TStringList.Create;
  AllPath_ := TStringList.Create;
  tempList := TStringList.Create;
  PPP := TStringList.Create;

  shiftPointsB := False;
  shiftEdgesB := False;
  shiftPointsL := TStringList.Create;
  shiftEdgesL := TStringList.Create;
  LabelsCaptions := TStringList.Create;


  shapeList := TFPList.Create;
  LineList := TFPList.Create;
  TPsubpPointList := TFPList.Create;
  OnPainNoPainColor := False;

end;

procedure TMain.Button11Click(Sender: TObject);
begin
  exitOut := True;
  Close;
end;

procedure TMain.delOnePointClick(Sender: TObject);
var
  pcode: string;
begin
  if application.MessageBox('删除此质点？', PChar(Tmenuitem(Sender).Hint),
    MB_OKCANCEL) = ID_OK then
  begin
    pcode := delonepoint.Hint;
    sqltemp.Close;
    sqltemp.SQL.Text := 'delete from points where dprid=' + dprid +
      ' and pcode=''' + pcode + '''';
    sqltemp.ExecSQL;
    sqltemp.Close;
    sqltemp.SQL.Text := 'delete from edges where dprid=' + dprid +
      ' and pcode1=''' + pcode + '''';
    sqltemp.ExecSQL;
    sqltemp.Close;
    sqltemp.SQL.Text := 'delete from edges where dprid=' + dprid +
      ' and pcode2=''' + pcode + '''';
    sqltemp.ExecSQL;
    sqltransaction1.Commit;

    refrash.Click;
  end;
end;

procedure TMain.Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
var
  p, t, aaa, bbb, ccc: tpoint;
  ii: integer;
  ab, ac, bc, L, minL, H, minH, Sabc, pp: real;
  Cap, minLCaption, minHCaption: string;
  p1, p2: string;
  curline: TlinePoint;
  c: tcolor;
begin

  //exit;
  ////测试正确
  //   海伦公式是通过三角形三边长度直接计算面积的公式，表达式为S=sqrt(p(p−a)(p−b)(p−c))
  //，其中p=(a+b+c)/2 为半周长。
  //online    三角形海伦面积公式，求得点到各边之高之距离，不仅最小高，还要诸高排序，取一个最小范围，这样不足取也


  p.X := X;
  p.Y := Y;
  t := TImage(Sender).clienttoscreen(p);
  //ccc:=p;
  ccc := TImage(Sender).ClientToParent(p);

  minL := 1000000000;
  minH := 1000000000;
  for ii := lineList.Count - 1 downto 0 do
  begin
    try
      //if tobject(shapeList.Items[i]) is TlinePoint then
      if lineList.Items[ii] <> nil then
      begin
        aaa := TlinePoint(lineList.Items[ii]).beginPoint;
        bbb := TlinePoint(lineList.Items[ii]).endPoint;

        ab := sqrt((aaa.X - bbb.X) * (aaa.X - bbb.X) + (aaa.y - bbb.y) *
          (aaa.y - bbb.y));
        ac := sqrt((aaa.X - ccc.X) * (aaa.X - ccc.X) + (aaa.y - ccc.y) *
          (aaa.y - ccc.y));
        bc := sqrt((ccc.X - bbb.X) * (ccc.X - bbb.X) + (ccc.y - bbb.y) *
          (ccc.y - bbb.y));

        pp := (ab + ac + bc) / 2;
        Sabc := sqrt(pp * (pp - ab) * (pp - bc) * (pp - ac));
        H := Sabc / ab;
        //三角形海伦面积公式，求得点到各边之高之距离，不仅最小高，还要诸高排序，取一个最小范围，这样不足取也
        //if H < minH then
        //begin
        //  minH := H;
        //  minHCaption := Cap;
        //end;
        L := sqrt(((ab) - (ac) - (bc)) * ((ab) - (ac) - (bc)));
        Cap := TlinePoint(lineList.Items[ii]).beginPcode + ' <--> ' +
          TlinePoint(lineList.Items[ii]).endPcode;//+ '=' + floattostr(L);
        //  p1 := TlinePoint(lineList.Items[ii]).beginPcode;
        //  p2 := TlinePoint(lineList.Items[ii]).endPcode;
        if L < minL then
        begin
          minL := L;
          minLCaption := Cap;
          p1 := TlinePoint(lineList.Items[ii]).beginPcode;
          p2 := TlinePoint(lineList.Items[ii]).endPcode;
          curline := TlinePoint(lineList.Items[ii]);
          minH := H;
        end;

        if L < -1 then
        begin
          linememo.Caption :=
            TlinePoint(lineList.Items[ii]).beginPcode +
            TlinePoint(lineList.Items[ii]).endPcode;
          linemenu.PopUp(t.x, t.y);
          break;
        end;
        if minL < 2 then
          if minH < 5 then
            break;
        application.ProcessMessages;
      end;
    except
    end;
    application.ProcessMessages;
  end;

  //if ii = 0 then
  begin
    //if minLcaption = minHcaption then
    if minL < 2 then
      if minH < 5 then
      begin

        if online <> nil then
        begin
          ScrollBox1.Canvas.Pen.Width := 2;
          ScrollBox1.Canvas.Pen.Color := clgrayText;
          ScrollBox1.Canvas.Line(online.beginPoint, online.endPoint);  //ok
        end;
        online := curline;
        c := ScrollBox1.Canvas.Pen.Color;
        ScrollBox1.Canvas.Pen.Color := clblue;
        ScrollBox1.Canvas.Pen.Width := 2;
        ScrollBox1.Canvas.Line(online.beginPoint, online.endPoint);  //ok
        ScrollBox1.Canvas.Pen.Width := 1;
        ScrollBox1.Canvas.Pen.Color := c;
        image1.ShowHint := False;
        application.ProcessMessages;
        image1.Hint := online.beginPcode + '::' + online.endPcode;
        image1.ShowHint := True;
        application.ProcessMessages;
      end;

    if ((minL >= 2) or (minH >= 5)) then
      //if minL >= 2 then
      //  if minH>10 then
    begin
      if online <> nil then
      begin
        ScrollBox1.Canvas.Pen.Width := 2;
        ScrollBox1.Canvas.Pen.Color := clgrayText;
        ScrollBox1.Canvas.Line(online.beginPoint, online.endPoint);  //ok
        //getpcode(online.beginPcode).OnPaint(getpcode(online.beginPcode));
        //getpcode(online.endPcode).OnPaint(getpcode(online.endPcode));
        //getpcode(online.beginPcode).BringToFront;
        //getpcode(online.endPcode).BringToFront;
      end;
      online := nil;
    end;
  end;

end;

procedure TMain.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
var
  p, t, aaa, bbb, ccc: tpoint;
  ii: integer;
  ab, ac, bc, L, minL, H, minH, Sabc, pp: real;
  Cap, minLCaption, minHCaption: string;
  p1, p2: string;
  curline: TlinePoint;
  c: tcolor;
begin
  //if shiftPointsB then
  if shiftPoints.Caption = '正在shift点......' then
    //if (Shift = [ssShift]) then
    if ssShift in Shift then
      shiftPointsL.Add(IntToStr(X) + ':' + IntToStr(Y));

  if Button = mbRight then
  begin

    //exit;
    ////测试正确
    //   海伦公式是通过三角形三边长度直接计算面积的公式，表达式为S=sqrt(p(p−a)(p−b)(p−c))
    //，其中p=(a+b+c)/2 为半周长。
    //online  三角形海伦面积公式，求得点到各边之高之距离，不仅最小高，还要诸高排序，取一个最小范围，这样不足取也


    p.X := X;
    p.Y := Y;
    t := TImage(Sender).clienttoscreen(p);
    //ccc:=p;
    ccc := TImage(Sender).ClientToParent(p);

    minL := 1000000000;
    minH := 1000000000;
    for ii := lineList.Count - 1 downto 0 do
    begin
      try
        //if tobject(shapeList.Items[i]) is TlinePoint then
        if lineList.Items[ii] <> nil then
        begin
          aaa := TlinePoint(lineList.Items[ii]).beginPoint;
          bbb := TlinePoint(lineList.Items[ii]).endPoint;

          ab := sqrt((aaa.X - bbb.X) * (aaa.X - bbb.X) + (aaa.y - bbb.y) *
            (aaa.y - bbb.y));
          ac := sqrt((aaa.X - ccc.X) * (aaa.X - ccc.X) + (aaa.y - ccc.y) *
            (aaa.y - ccc.y));
          bc := sqrt((ccc.X - bbb.X) * (ccc.X - bbb.X) + (ccc.y - bbb.y) *
            (ccc.y - bbb.y));
          L := sqrt(((ab) - (ac) - (bc)) * ((ab) - (ac) - (bc)));
          Cap := TlinePoint(lineList.Items[ii]).beginPcode + ' <--> ' +
            TlinePoint(lineList.Items[ii]).endPcode;//+ '=' + floattostr(L);
          //  p1 := TlinePoint(lineList.Items[ii]).beginPcode;
          //  p2 := TlinePoint(lineList.Items[ii]).endPcode;
          if L < minL then
          begin
            minL := L;
            minLCaption := Cap;
            p1 := TlinePoint(lineList.Items[ii]).beginPcode;
            p2 := TlinePoint(lineList.Items[ii]).endPcode;
            curline := TlinePoint(lineList.Items[ii]);
          end;
          //pp := (ab + ac + bc) / 2;
          //Sabc := sqrt(pp * (pp - ab) * (pp - bc) * (pp - ac));
          //H := Sabc / ab; 三角形海伦面积公式，求得点到各边之高之距离，不仅最小高，还要诸高排序，取一个最小范围，这样不足取也
          //if H < minH then
          //begin
          //  minH := H;
          //  minHCaption := Cap;
          //end;
          if L < -1 then
          begin
            linememo.Caption :=
              TlinePoint(lineList.Items[ii]).beginPcode +
              TlinePoint(lineList.Items[ii]).endPcode;
            linemenu.PopUp(t.x, t.y);
            break;
          end;
          application.ProcessMessages;
        end;
      except
      end;
      application.ProcessMessages;
    end;
    //linemenu.PopUp(t.x, t.y);
    if ii = 0 then
    begin
      //if minLcaption = minHcaption then
      if minL < 2 then
        //  if minH<10 then
      begin
        sqltemp.Close;
        sqltemp.SQL.Text := 'select memo from edges where dprid=' +
          dprid + ' and ((pcode1=''' + p1 + ''' and pcode2=''' + p2 +
          ''' ) or (pcode1=''' + p2 + ''' and pcode2=''' + p1 + ''' ))';
        sqltemp.Open;
        if sqltemp.RecordCount > 0 then
        begin
          linememo.Caption := '备注：' + sqltemp.FieldByName('memo').AsString;
          linememo.hint := sqltemp.FieldByName('memo').AsString;
        end;
        sqltemp.Close;
        //linememo.Caption := minLCaption;
        lineBeginEnd.Caption := minLCaption;

        if online <> nil then
        begin
          ScrollBox1.Canvas.Pen.Width := 2;
          ScrollBox1.Canvas.Pen.Color := clgrayText;
          ScrollBox1.Canvas.Line(online.beginPoint, online.endPoint);  //ok
        end;
        online := curline;
        c := ScrollBox1.Canvas.Pen.Color;
        ScrollBox1.Canvas.Pen.Color := clblue;
        ScrollBox1.Canvas.Pen.Width := 2;
        ScrollBox1.Canvas.Line(online.beginPoint, online.endPoint);  //ok
        ScrollBox1.Canvas.Pen.Width := 1;
        ScrollBox1.Canvas.Pen.Color := c;
        linemenu.PopUp(t.x, t.y);
        //linemenu.PopUp(500, 500);
      end;
    end;
  end;
end;

procedure TMain.Label3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  if (Button = mbRight) then
    ShowMessage('自思肯普法时，动态染色时，可以设置每步每点时长（毫秒），以利于观察也');
end;

procedure TMain.shiftPointsChange(Sender: TObject);
begin

end;

procedure TMain.shiftPointsClick(Sender: TObject);
//var
//  i: integer;
//begin
//  //shiftPoints.Caption := 'www';
//  //
//  //i := gettickcount64;
//  //while (gettickcount64 - i) < 3000 do
//  //  //application.ProcessMessages;
//  //  sleep(111);
//end;
var
  I, ccc: integer;
  c: longint;
  pcode, pname, px, py: string;
begin
  //if shiftPointsB then
  if shiftPoints.Caption = '正在shift点......' then
  begin
    //shiftPointsB := False;
    shiftPoints.Caption := 'shift点(看右键)';
    shiftPoints.Checked := False;
    if dprid = userid then
    begin
      SQLtemp.Close;
      //SQLtemp.SQL.Text := 'select * from points where dprid=' + userid;
      SQLtemp.SQL.Text := 'select count(1) as ccc from points where dprid=' + dprid;
      SQLtemp.Open;
      //SQLtemp.Refresh;
      // if SQLtemp.RecordCount = 0 then
      ccc := 0;
      ccc := SQLtemp.FieldByName('ccc').AsInteger;
      //if SQLtemp.RecordCount >0 then
      if ccc > 0 then
      begin
        //  c := 0
        // else
        //  ccc := SQLtemp.RecordCount;    //????  SQLQuery1.RecordCount实际不止10，但返回值竟为10，怪
        for I := 0 to shiftPointsL.Count - 1 do
        begin
          //SQLtemp.Append;
          //SQLtemp.FieldByName('dprid').AsString := dprid;
          //SQLtemp.FieldByName('pcode').AsString := 'P' + inttostr(I + ccc);
          //SQLtemp.FieldByName('pname').AsString := 'P' + inttostr(I + ccc);
          //SQLtemp.FieldByName('px').AsInteger :=
          //  strtoint(leftstr(shiftPointsL[I], pos(':', shiftPointsL[I]) - 1));
          //SQLtemp.FieldByName('py').AsInteger :=
          //  strtoint(copy(shiftPointsL[I], pos(':', shiftPointsL[I]) + 1,
          //  length(shiftPointsL[I]) - pos(':', shiftPointsL[I])));
          //SQLtemp.Post;
          //SQLtemp.ApplyUpdates();
          pcode := 'P' + IntToStr(I + ccc + 1);
          pname := 'P' + IntToStr(I + ccc + 1);
          px := leftstr(shiftPointsL[I], pos(':', shiftPointsL[I]) - 1);
          py := copy(shiftPointsL[I], pos(':', shiftPointsL[I]) + 1,
            length(shiftPointsL[I]) - pos(':', shiftPointsL[I]));
          SQLtemp.Close;
          SQLtemp.SQL.Text := 'insert into points (dprid,pcode,pname,px,py) values(' +
            dprid + ' , ''' + pcode + ''' ,''' + pname + ''',' + px + ',' + py + ')';
          SQLtemp.ExecSQL;


          SQLQuery2.Close;
          SQLQuery2.SQL.Text :=
            'select * from points where dprid=' + userid + '  order by id';
          SQLQuery2.Open;
          //SQLQuery1.Append;
          //SQLQuery1.FieldByName('dprid').AsString := dprid;
          //SQLQuery1.FieldByName('pcode').AsString :=
          //  'P' + IntToStr(SQLQuery1.RecordCount + 1);
          //SQLQuery1.FieldByName('pname').AsString :=
          //  'P' + IntToStr(SQLQuery1.RecordCount + 1);
          //SQLQuery1.FieldByName('px').AsInteger := 500;
          //SQLQuery1.FieldByName('py').AsInteger := 500;
          //SQLQuery1.Post;
          //SQLQuery1.ApplyUpdates();
          SQLQuery3.Close;
          SQLQuery3.SQL.Text := 'select * from edges where dprid=' + userid;
          SQLQuery3.Open;
          SQLQuery2.First;
          while not SQLQuery2.EOF do
          begin
            if SQLQuery2.FieldByName('pcode').AsString = pcode then
            begin
              SQLQuery2.Next;
              continue;
            end;
            SQLQuery3.Append;
            SQLQuery3.FieldByName('dprid').AsString := userid;
            SQLQuery3.FieldByName('ecode').AsString :=
              SQLQuery2.FieldByName('pcode').AsString + pcode;
            SQLQuery3.FieldByName('pcode1').AsString :=
              SQLQuery2.FieldByName('pcode').AsString;
            SQLQuery3.FieldByName('pcode2').AsString :=
              pcode;
            SQLQuery3.FieldByName('pname1').AsString :=
              SQLQuery2.FieldByName('pname').AsString;
            SQLQuery3.FieldByName('pname2').AsString :=
              pname;
            SQLQuery3.FieldByName('Relation').AsBoolean := False;
            SQLQuery3.Post;
            SQLQuery3.ApplyUpdates();
            SQLQuery2.Next;
          end;
        end;
        ProgressBar1.Visible := False;
      end;
    end;

    sqltransaction1.Commit;
    sqltransaction1.Active := True;
    refreshClick(nil);
    u_points.frmPoints.ShowModal;
    u_edges.frmEdges.Show;
    refreshClick(nil);

  end // ;
  else // if not shiftPointsB then
  begin
    // Button4Click(nil); //手工清空点
    //shiftPointsB := True;
    shiftPoints.Caption := '正在shift点......';
    shiftPoints.Checked := True;
    shiftPointsL.Clear;

  end;
end;

procedure TMain.shiftEdgesClick(Sender: TObject);
//begin
//showmessage('www');
//application.MessageBox('w','ccc',MB_OK);
// application.ProcessMessages;
// application.MessageBox('ok','ok',MB_OK);
//application.ProcessMessages;
//application.MessageBox('ok', 'ok', MB_OKCANCEL);
//end;
var
  I: integer;
  LLine, star, ends: string;
begin
  if shiftEdges.Caption = '正在shift边......' then
  begin
    //shiftEdgesB := False;
    shiftEdges.Caption := 'shift边(看右键)';

    /// 手工创建全部边
    for I := 0 to shiftEdgesL.Count - 1 do
    begin
      LLine := shiftEdgesL[I] + ':';
      star := leftstr(LLine, pos(':', LLine) - 1);
      ends := stringreplace(LLine, star, '', []);
      ends := stringreplace(ends, ':', '', []);
      while ends <> '' do
      begin
        SQLQuery2.Close;
        SQLQuery2.SQL.Text := 'update edges set relation=true' +
          ' where dprid=' + userid + ' and  pcode1=''' + star +
          ''' and pcode2=''' + leftstr(ends, pos(':', ends) - 1) + '''';
        SQLQuery2.ExecSQL;
        SQLQuery2.Close;
        SQLQuery2.SQL.Text := 'update edges set relation=true' +
          ' where dprid=' + userid + ' and  pcode2=''' + star +
          ''' and pcode1=''' + leftstr(ends, pos(':', ends) - 1) + '''';
        SQLQuery2.ExecSQL;

        ends := stringreplace(ends, leftstr(ends, pos(':', ends) - 1), '', []);
        ends := stringreplace(ends, ':', '', []);
      end;
    end;
    ProgressBar1.Visible := False;
    sqltransaction1.Commit;
    sqltransaction1.Active := True;
    refreshClick(nil);
    u_points.frmPoints.ShowModal;
    u_edges.frmEdges.Show;
    refreshClick(nil);

  end // ;
  else // if not shiftPointsB then
  begin
    // edgesssClick(nil);
    //shiftEdgesB := True;
    shiftEdges.Caption := '正在shift边......';
    shiftEdges.Checked := True;
    shiftEdgesL.Clear;

  end;
end;

procedure TMain.Button10Click(Sender: TObject);
begin

end;

procedure TMain.BitBtn1Click(Sender: TObject);
begin
      tform(tbitbtn(sender).parent).Close;
end;

procedure TMain.Button10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin

end;

procedure TMain.Button10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
var
  www: tpoint;
begin
  //if  Button=mbLeft then
  //   Button:=mbRight;
  www.x := x;
  www.y := y;
  www := button10.ClientToParent(www, self);
  self.PopupMenu1.PopUp(www.x, www.y);
end;

procedure TMain.Button1Click(Sender: TObject);
var
  www1: TMemoryStream;
begin

  if not FileExists('说明.txt') then
  begin
    Memo_SaveToTxT.Lines.SaveToFile('说明.txt');
  end;
  if FileExists('说明.txt') then
  begin
    //ShellExecute(self.Handle, 'open', '说明.txt', '', nil, SW_SHOWNORMAL);
    //.('gedit  说明.txt');
    //Memo_SaveToTxT.Lines.Clear;
    //Memo_SaveToTxT.Lines.LoadFromFile('说明.txt');
    //Memo_SaveToTxT.
    //msgshow.showMSG:=msgshow.TshowMSG.Create();
    // msgshow.showMSG.init('说明.txt');
    //ExtractFilePath(application.filename)+ '说明.txt';
    //application.ShellExecute('gedit  说明.txt');
    //paramstr(
    //self.MEMO3.lines.LoadFromFile('说明.txt');
    self.MEMO3.Lines.LoadFromFile(ExtractFilePath(ParamStr(0)) + '说明.txt');

    msgshow.showMSG.ShowModal;
  end
  else
    ShowMessage('找不到说明文件');
end;

procedure TMain.Button2Click(Sender: TObject);
begin
  msgshow2.showMSG2.Show;
end;

procedure TMain.Button3Click(Sender: TObject);
begin
  if opendialog1.Execute then
  begin
    image1.Picture.LoadFromFile(opendialog1.FileName);
  end;
end;

procedure TMain.addOnePointClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: boolean;
  I: integer;
begin
  if dprid = userid then
  begin
    SQLQuery1.Close;
    SQLQuery1.SQL.Text := 'select * from points where dprid=' + userid;
    SQLQuery1.Open;
    if SQLQuery1.RecordCount > 0 then
    begin
      NewString := '';
      ClickedOK := InputQuery('是否要增加一个质点',
        '新的质点坐标x=500;y=500', NewString);
      if ClickedOK then
      begin
        SQLQuery2.Close;
        SQLQuery2.SQL.Text := 'select * from points where dprid=' +
          userid + '  order by id';
        SQLQuery2.Open;
        SQLQuery1.Append;
        SQLQuery1.FieldByName('dprid').AsString := dprid;
        SQLQuery1.FieldByName('pcode').AsString :=
          'P' + IntToStr(SQLQuery1.RecordCount + 1);
        SQLQuery1.FieldByName('pname').AsString :=
          'P' + IntToStr(SQLQuery1.RecordCount + 1);
        SQLQuery1.FieldByName('px').AsInteger := 500;
        SQLQuery1.FieldByName('py').AsInteger := 500;
        SQLQuery1.FieldByName('memo').AsString := NewString;
        SQLQuery1.Post;
        SQLQuery1.ApplyUpdates();
        SQLQuery3.Close;
        SQLQuery3.SQL.Text := 'select * from edges where dprid=' + userid;
        SQLQuery3.Open;
        SQLQuery2.First;
        while not SQLQuery2.EOF do
        begin
          if SQLQuery2.FieldByName('pcode').AsString = SQLQuery1.FieldByName(
            'pcode').AsString then
          begin
            SQLQuery2.Next;
            continue;
          end;
          SQLQuery3.Append;
          SQLQuery3.FieldByName('dprid').AsString := userid;
          SQLQuery3.FieldByName('ecode').AsString :=
            SQLQuery2.FieldByName('pcode').AsString +
            SQLQuery1.FieldByName('pcode').AsString;
          SQLQuery3.FieldByName('pcode1').AsString :=
            SQLQuery2.FieldByName('pcode').AsString;
          SQLQuery3.FieldByName('pcode2').AsString :=
            SQLQuery1.FieldByName('pcode').AsString;
          SQLQuery3.FieldByName('pname1').AsString :=
            SQLQuery2.FieldByName('pname').AsString;
          SQLQuery3.FieldByName('pname2').AsString :=
            SQLQuery1.FieldByName('pname').AsString;
          SQLQuery3.FieldByName('Relation').AsBoolean := False;
          SQLQuery3.Post;
          SQLQuery3.ApplyUpdates();
          SQLQuery2.Next;
        end;
      end;
    end;
  end;
  sqltransaction1.Commit;
  sqltransaction1.Active := True;
  refreshClick(nil);
  u_points.frmPoints.ShowModal;
  u_edges.frmEdges.Show;
  refreshClick(nil);
end;

procedure TMain.Button7Click(Sender: TObject);
var
  FC1, FC2, ok: integer;
  pcode1, pcode2: string;
begin
  ok := 0;
  SQLQuery1.Close;
  SQLQuery1.SQL.Text :=
    'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
    + dprid + ') as pFC1, ' +
    '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid=' +
    dprid + ') as pFC2 ' + ' from edges where Relation ' + ' and dprid=' + dprid;

  SQLQuery1.Open;
  SQLQuery1.First;
  while not SQLQuery1.EOF do
  begin
    FC1 := SQLQuery1.FieldByName('pFC1').AsInteger;
    FC2 := SQLQuery1.FieldByName('pFC2').AsInteger;
    pcode1 := SQLQuery1.FieldByName('pcode1').AsString;
    pcode2 := SQLQuery1.FieldByName('pcode2').AsString;
    if (FC1 = FC2) then
    begin
      ok := ok + 1;
      ShowMessage(pcode1 + ' 与 ' + pcode2 + ' 相邻有同色同为' +
        IntToStr(FC1) + '，不行');
    end;
    if (FC1 * FC2 = 0) then
    begin
      ok := ok + 1;
      ShowMessage(pcode1 + ' 与 ' + pcode2 + ' 有一个颜值为0，不行');
    end;
    SQLQuery1.Next;
  end;
  if (ok = 0) then
    ShowMessage('相邻全不同色，行')
  else
    ShowMessage('相邻有同色或颜值为0，不行');

end;

procedure TMain.Button8Click(Sender: TObject);
begin
  u_edges.frmEdges.ShowModal;
  //u_edges.frmEdges.Show;
  refrash.Click;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: boolean);
var
  i: integer;
begin
  //for i := shapeList.Count - 1 downto 0 do
  //begin
  //  tshape(shapeList.Items[i]^).Free;
  //end;
  //shapeList.Free;
  //for i := LineList.Count - 1 downto 0 do
  //begin
  //  tshape(LineList.Items[i]^).Free;
  //end;
  //LineList.Free;
  if sender<>self then
  begin
     showliform:=true;
     exit;
  end;



  for i := shapeList.Count - 1 downto 0 do
  begin
    try
      //if i=20 then
      //  application.ProcessMessages;
      if (shapeList.Items[i]) <> nil then
        if TGraphicControl(shapeList.Items[i]) is tshape then
        begin
          tshape(shapeList.Items[i]).Visible := False;
          tshape(shapeList.Items[i]).Free;
          shapeList.Items[i] := nil;
          shapeList.Count := shapeList.Count - 1;
          application.ProcessMessages;
        end;
    except
      application.ProcessMessages;
    end;
    application.ProcessMessages;
  end;
  shapeList.Free;
  for i := lineList.Count - 1 downto 0 do
  begin
    try
      if (lineList.Items[i]) <> nil then
      begin
        tlinepoint(lineList.Items[i]).Free;
        lineList.Items[i] := nil;
        lineList.Count := lineList.Count - 1;
        application.ProcessMessages;
      end;
    except
    end;
    application.ProcessMessages;
  end;
  LineList.Free;

  for i := TPsubpPointList.Count - 1 downto 0 do
  begin
    try
      if (TPsubpPointList.Items[i]) <> nil then
      begin
        TPsubpPoint(TPsubpPointList.Items[i]).Free;
        TPsubpPointList.Items[i] := nil;
        TPsubpPointList.Count := TPsubpPointList.Count - 1;
        application.ProcessMessages;
      end;
    except
    end;
    application.ProcessMessages;
  end;
  TPsubpPointList.Clear;
  TPsubpPointList.Free;
end;

procedure TMain.KepuClick(Sender: TObject);
var
  p1, p2, p3, p4, p5, p6, pp6i, tempi: integer;
  j1, j2, j3, j4, j5, j6: integer;
  i00, i01, i02, i03, i04, i05, i06, i07, i08, i09: integer;
  PP6: array [1 .. 6] of integer;
  PPcode6: array [1 .. 6] of string;
  RResult, pcode1, pcode2, temps: string;
  pindex1, pindex2: integer;
  ok, notok: boolean;
  Tcolor4pCode: array [0 .. 4] of string;

  colorindex, orderStep, ijk, stept: integer;
  isHaveSameColor: boolean;
  Tcolor5pCode: array [0 .. 5] of string; // Tcolor5pCode
  PPcode5ColorIndex: array [0 .. 5] of integer; // ColorIndex
  Abacd_A, Abacd_b, Abacd_Aa, Abacd_c, Abacd_d: string; // Tcolor5pCode
  a, b, aa, c, d: integer; // PPcode5Index
  // isTest5Chain: Integer; // 实例且改代码才可测五环肯普链涟漪
  // isTest5ChainReturnOK: Integer; // 实例且改代码才可测五环肯普链涟漪
  isOK: integer;

  www: string;
  //SQLQuery2.FieldByName('pcode').AsString  :string;
  //SQLQuery3.FieldByName('pcode1').AsString  :string;
begin
  // isTest5Chain := 1; // 实例且改代码才可测五环肯普链涟漪
  // isTest5Chain := 0; // 实例且改代码才可测五环肯普链涟漪

  exitOut := False;
  // if RadioButton1.Checked then

  // TRzButton(Sender).Tag := 1
  // else
  // TRzButton(Sender).Tag := 2;
  // Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '反例.jpg');

  RResult := '';

  // N6Click(nil);
  //OnPainNoPainColor := True;
  sqlQuery2.Close;
  sqlQuery2.SQL.Text :=
    'update points set CCC=0,F1=0,C=0,FC=0,C1248C1111=0 where  dprid=' + dprid + ' ';
  sqlQuery2.ExecSQL;//SQLTransaction2.Commit;

  sqlQuery2.Close;
  sqlQuery2.SQL.Text := 'select  count(1) as pc from points where 1=1 and F1=0 ' +
    ' and dprid=' + dprid + ' ';
  sqlQuery2.Open;
  PCount := sqlQuery2.FieldByName('pc').AsInteger;
  /// ////测试五环用   隐去一点
  if isTest5Chain = 1 then
    // if 1 = 2 then
  begin
    PCount := PCount - 1;
    sqltemp.Close;
    sqltemp.SQL.Text :=
      'update points set dprid=2 where pcode=''P0'' and dprid=' + dprid + ' ';
    // 测试时P0正确是dprid=1，现暂动态改为2来测试
    sqltemp.ExecSQL;//SQLTransaction1.Commit;
    sqltemp.Close;
    sqltemp.SQL.Text :=
      'update edges set relation=0 where pcode1=''P0'' and dprid=' + dprid + ' ';
    // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
    sqltemp.ExecSQL;//SQLTransaction1.Commit;
  end;
  /// ////测试五环用
  curPcount := PCount + 1;

  while curPcount > 6 do
  begin
    curPcount := curPcount - 1;
    if curPcount = 6 then
    begin
      SQLQuery2.Close;
      SQLQuery2.SQL.Text := 'select  * from points where 1=1 and F1=0 ' +
        ' and dprid=' + dprid + ' ';
      SQLQuery2.Open;
      SQLQuery2.First;
      tempi := 0;
      while not SQLQuery2.EOF do
      begin
        tempi := tempi + 1;
        SQLQuery2.Edit;
        SQLQuery2.FieldByName('F1').AsInteger := tempi;
        SQLQuery2.Post;
        SQLQuery2.Next;
      end;
      SQLQuery2.ApplyUpdates();
      break;
    end;

    SQLQuery1.Close;
    SQLQuery1.SQL.Text :=
      'select ww.* from (select w.pcode1,count(1) as pc from (select pcode1,pcode2 from edges where Relation '
      + ' and dprid=' + dprid +
      ' and pcode1 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) + ')  ' +
      ' union select pcode2,pcode1 from edges where relation and dprid=' +
      dprid + ' and pcode1 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) + ')  ' +
      // ' ) as w group by w.pcode1) as ww order by ww.pc';  notok  //测试四环，五环
      // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1';  //ookk
      // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
      ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1'; // ookk
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
    // 上面两句SQL有个order by ww.pcode1确不同，有者，可解那个双四环，无者，第二个不可解
    // 无者，可用于测试五环乎，同样算法，因为一个order出现可解与不可解之大事
    if isTest5ChainReturnOK = 1 then
      /// /测试五环用   隐去一点
      SQLQuery1.SQL.Text :=
        /// /测试五环用   隐去一点
        'select ww.* from (select w.pcode1,count(1) as pc from (select pcode1,pcode2 from edges where Relation '
        + ' and dprid=' + dprid +
        '  and pcode1 in (select pcode from points where  dprid=' +
        dprid + ' and F1<' + IntToStr(curPcount) +
        ') and pcode2 in (select pcode from points where  dprid=' +
        dprid + ' and F1<' + IntToStr(curPcount) + ')  ' +
        ' union select pcode2,pcode1 from edges where relation and dprid=' +
        dprid + ' and pcode1 in (select pcode from points where  dprid=' +
        dprid + ' and F1<' + IntToStr(curPcount) +
        ') and pcode2 in (select pcode from points where  dprid=' +
        dprid + ' and F1<' + IntToStr(curPcount) + ')  ' +
        ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';
    // notok // 测试四环，五环
    www := SQLQuery1.SQL.Text;
    // showmessage(www);
    SQLQuery1.Open;
    if SQLQuery1.FieldByName('pc').AsInteger > 5 then
    begin
      ShowMessage('数据有错了');

    end;

    SQLQuery2.Close;
    SQLQuery2.SQL.Text := 'update points set F1=' + IntToStr(curPcount) +
      ',CCC=' + SQLQuery1.FieldByName('pc').AsString + ' where pcode=''' +
      SQLQuery1.FieldByName('pcode1').AsString + ''' and dprid=' + dprid + ' ';
    SQLQuery2.ExecSQL;//SQLTransaction2.Commit;
    // exit;

  end;
  if curPcount = 6 then
    // showmessage(inttostr(PCount));
  begin
    // 九重循环，九层之台，起于累土，千里之行，始于足下
    ok := False;
    notok := True;

    SQLQuery1.Close;
    SQLQuery1.SQL.Text :=
      'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
      + dprid + ') as pF1, ' +
      '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid=' +
      dprid + ') as pF2 ' + ' from edges where Relation ' + ' and dprid=' + dprid + ' ';
    SQLQuery1.Open;

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
                // SQLQuery1.Close;
                // SQLQuery1.SQL.Text :=
                // 'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                // + dprid + ') as pF1, ' +
                // '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                // + dprid + ') as pF2 ' + ' from edges where Relation ' +
                // ' and dprid=' + dprid + ' ';
                // SQLQuery1.Open;
                SQLQuery1.First;
                while not SQLQuery1.EOF do
                begin
                  // pcode1 := SQLQuery1.FieldByName('pF1').AsString;
                  // pcode2 := SQLQuery1.FieldByName('pF2').AsString;
                  pindex1 := SQLQuery1.FieldByName('pF1').AsInteger;
                  pindex2 := SQLQuery1.FieldByName('pF2').AsInteger;
                  if ((pindex1 > 0) and (pindex1 < 7)) then
                    if ((pindex2 > 0) and (pindex2 < 7)) then
                      if PP6[pindex1] = PP6[pindex2] then
                      begin
                        notok := True;
                        ok := False;
                        break;
                      end;
                  SQLQuery1.Next;
                end;
                if ok then
                  for pp6i := 1 to 6 do
                  begin

                    SQLQuery2.Close;
                    SQLQuery2.SQL.Text :=
                      'update points set FC=' + IntToStr(PP6[pp6i]) +
                      ' where F1=' + IntToStr(pp6i) + ' and dprid=' + dprid + ' ';
                    SQLQuery2.ExecSQL;//SQLTransaction2.Commit;

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
  refreshClick(nil); // 刷新图中各点
  if not ok then
  begin
    ShowMessage('此图肯定没有四色解');
    exit;
  end;
  stept := trunc(StrToInt(stepTime.Text));
  // 这里若要刷新开始六点颜值，写代码，不想写，用处不大乎
  sqltemp.Close;
  sqltemp.SQL.Text := 'select * from points  where F1<7 and dprid=' + dprid + ' ';
  sqltemp.Open;
  sqltemp.First;
  while not sqltemp.EOF do
    // for pp6i := 1 to 6 do
  begin
    // PPcode6[pp6i] := sqltemp.FieldByName('pcode').AsString;
    refreshoneP(sqltemp.FieldByName('fc').AsString, sqltemp.FieldByName('pcode')
      .AsString, 0, clMoneyGreen);
    sqltemp.Next;
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
          sqltemp.Close;
          sqltemp.SQL.Text :=
            'update points set dprid=1,CCC=5,F1=118,FC=0,C1248C1111=0  where pcode=''P0'' and dprid=2';
          // 测试时P0正确是dprid=1，现暂动态改为2来测试
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          sqltemp.Close;
          sqltemp.SQL.Text :=
            'update edges set relation=1 where (ecode=''P0P1'' or ecode=''P0P2'' or ecode=''P0P3''  or  ecode=''P0P4''  or ecode=''P0P5'') and dprid=' + dprid + ' '; // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
          sqltemp.ExecSQL;//SQLTransaction1.Commit;

        end;
      end;
    /// ////测试五环用

    SQLQuery2.Close;
    SQLQuery2.SQL.Text := 'select  * from points where 1=1 and F1= ' +
      IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
    SQLQuery2.Open;
    tempi := SQLQuery2.FieldByName('CCC').AsInteger;
    //SQLQuery2FieldByName_pcode_AsString:=  SQLQuery2.FieldByName('pcode').AsString;
    if SQLQuery2.FieldByName('pcode').AsString = 'P96' then
      Application.ProcessMessages; // 断点查错，果然不顺也
    if tempi < 4 then
    begin

      SQLQuery1.Close;
      SQLQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        +
        dprid + ') as pFC2 ' + ' from edges where Relation ' +
        ' and dprid=' + dprid + ' and (pcode1=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''' or pcode2=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      SQLQuery1.Open;
      SQLQuery1.First;
      while not SQLQuery1.EOF do
      begin
        temps := temps.Replace(SQLQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(SQLQuery1.FieldByName('pFC2').AsString, '');
        SQLQuery1.Next;
      end;
      if temps = '' then
      begin
        ShowMessage('小于4的，可能有错了');
      end
      else
      begin
        sqltemp.Close;
        sqltemp.SQL.Text := 'update points set FC=' + temps[1] +
          ' where F1=' + IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
        sqltemp.ExecSQL;//SQLTransaction1.Commit;
        // refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 4 then
    begin
      SQLQuery1.Close;
      SQLQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        +
        dprid + ') as pFC2 ' + ' from edges where Relation ' +
        ' and dprid=' + dprid + ' and (pcode1=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''' or pcode2=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      SQLQuery1.Open;
      SQLQuery1.First;
      while not SQLQuery1.EOF do
      begin
        temps := temps.Replace(SQLQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(SQLQuery1.FieldByName('pFC2').AsString, '');
        SQLQuery1.Next;
      end;
      if temps = '' then
      begin
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
        //  showmessage('4环肯普链树');
        isOK := 0;
        // showmessage('4环肯普链树  必定1234');
        // refreshhClick(nil); // 刷新图中各点
        Tcolor4pCode[0] := SQLQuery2.FieldByName('pcode').AsString;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(IntToStr(0), Tcolor4pCode[0], 0, clOlive);
        if (Tcolor4pCode[0] = 'P11') then
          Application.ProcessMessages;
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        SQLQuery1.First;
        while not SQLQuery1.EOF do
        begin
          for colorindex := 1 to 4 do
          begin
            if SQLQuery1.FieldByName('pFC1').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode1').AsString;
            if SQLQuery1.FieldByName('pFC2').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode2').AsString;
          end;
          SQLQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // ('P95', 'P112', 'P51', 'P96', 'P94')最后一点P95
        // C1248C1111 备份字段用也
        sqltemp.Close;
        sqltemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        sqltemp.ExecSQL;//SQLTransaction1.Commit;
        //refreshoneP(IntToStr(1), Tcolor4pCode[1], 0, cllime);
        //refreshoneP(IntToStr(2), Tcolor4pCode[2], 0, clFuchsia);
        //refreshoneP(IntToStr(3), Tcolor4pCode[3], 0, clyellow);
        //refreshoneP(IntToStr(4), Tcolor4pCode[4], 0, clskyblue);
        //if not ((ccclred = clAqua) or (ccclred = clHighLight) or (ccclred = clmedgray) or
        //  (ccclred = clblue) or (ccclred = clwindowFrame)) then
        refreshoneP(IntToStr(1), Tcolor4pCode[1], 0, clAqua);
        refreshoneP(IntToStr(2), Tcolor4pCode[2], 0, clHighLight);
        refreshoneP(IntToStr(3), Tcolor4pCode[3], 0, clmedgray);
        application.hint := Tcolor4pCode[4];
        refreshoneP(IntToStr(4), Tcolor4pCode[4], 0, clblue);


        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        //    ShowMessage('4环肯普链树：' + Tcolor4pCode[1] + ',' +
        //      Tcolor4pCode[2] + ',' + Tcolor4pCode[3] + ',' + Tcolor4pCode[4] + ',');
        //application.MessageBox(PChar('4环肯普链树：' + Tcolor4pCode[1] +
        //  ',' + Tcolor4pCode[2] + ',' + Tcolor4pCode[3] + ',' + Tcolor4pCode[4]),
        //  '4环肯普链树：', MB_OK);

        showli('4环肯普链树：',('4环肯普链树：' + Tcolor4pCode[1] +
          ',' + Tcolor4pCode[2] + ',' + Tcolor4pCode[3] + ',' + Tcolor4pCode[4]));
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
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set C=0 where  dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            sqltemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点
            sqltemp.SQL.Text :=
              'update points set FC=' + IntToStr(p2) + ',C=1 where pcode=''' +
              Tcolor4pCode[p1] + ''' and dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            // sqltemp.Close;
            // sqltemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // sqltemp.ExecSQL;SQLTransaction1.Commit;
            refreshoneP(IntToStr(p2), Tcolor4pCode[p1], 1000, clred);

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
              SQLQuery3.Close;
              SQLQuery3.SQL.Text :=
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
                IntToStr(curPcount) + ' and  pF12<' + IntToStr(curPcount) +
                ')' + ' and ( pFC1=' + IntToStr(p1) + ' or pFC1=' +
                IntToStr(p2) + ' or pFC2=' + IntToStr(p1) + ' or pFC2=' +
                IntToStr(p2) + ')';
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
              SQLQuery3.Open;
              SQLQuery3.First;
              while not SQLQuery3.EOF do
              begin

                if (SQLQuery3.FieldByName('pcode1').AsString = 'P11') then
                  Application.ProcessMessages;
                if (SQLQuery3.FieldByName('pFC1').AsString =
                  SQLQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (SQLQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (SQLQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;

                    end;

                  // if 1=2 then
                  if (((SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor4pCode[1]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor4pCode[2]) or
                    (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor4pCode[3]) or (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor4pCode[4])) and
                    ((SQLQuery3.FieldByName('pcode2').AsString = Tcolor4pCode[1]) or
                    (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor4pCode[2]) or (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor4pCode[3]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor4pCode[4]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;

                  end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor4pCode[1]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor4pCode[2]) or (SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor4pCode[3]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor4pCode[4]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor4pCode[1]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor4pCode[2]) or (SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor4pCode[3]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor4pCode[4]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    sqltemp.Close;
                    sqltemp.SQL.Text :=
                      'update points set FC=' + (IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode1').AsString +
                      ''' and dprid=' + dprid + ' ';
                    sqltemp.ExecSQL;
                    //SQLTransaction1.Commit; SQLTransaction1.Active:=true;
                    refreshoneP((IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // SQLQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    break;
                  end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    sqltemp.Close;
                    sqltemp.SQL.Text :=
                      'update points set FC=' + (IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode2').AsString +
                      ''' and dprid=' + dprid + ' ';
                    sqltemp.ExecSQL;
                    //SQLTransaction1.Commit;SQLTransaction1.Active:=true;
                    refreshoneP((IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    break;
                  end;

                end;
                SQLQuery3.Next;
              end;
              // if 1=2 then
              if isHaveSameColor then
                // if SQLQuery3.RecordCount=0 then
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
            // sqltemp.Close;
            // sqltemp.SQL.Text :=
            // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // sqltemp.ExecSQL;SQLTransaction1.Commit;
            sqltemp.Close;
            // Tcolor4pCode[3] := 1; // 肯普链树中心点
            sqltemp.SQL.Text :=
              'update points set FC=' + IntToStr(p1) + ' where pcode=''' +
              Tcolor4pCode[0] + ''' and dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            refreshoneP(IntToStr(p1), Tcolor4pCode[0], 1000, clred);
            self.savetoLabelcaption;
            break;
          end;
        end;
        self.fromLabelcaption;
        if not isHaveSameColor then
          // if ((not isHaveSameColor) and (isOK = 0)) then
          //ShowMessage('4环肯普链树，这个已经可解了')
          application.MessageBox('4环肯普链树，这个已经可解了',
            '4环肯普链树：', MB_OK)

        else
        begin
          // ShowMessage('4环肯普链树，仍然不可解');
          application.MessageBox('4环肯普链树，仍然不可解',
            '4环肯普链树：', MB_OK);
          sqltemp.Close;
          sqltemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' '; // 手工调试时，将两个字段齐改才行
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
      end
      else
      begin
        sqltemp.Close;
        sqltemp.SQL.Text := 'update points set FC=' + temps[1] +
          ' where F1=' + IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
        sqltemp.ExecSQL;//SQLTransaction1.Commit;  SQLTransaction1.Active:=true;
        // refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 5 then
    begin
      SQLQuery1.Close;
      SQLQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        +
        dprid + ') as pFC2 ' + ' from edges where Relation ' +
        ' and dprid=' + dprid + ' and (pcode1=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''' or pcode2=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      SQLQuery1.Open;
      SQLQuery1.First;
      while not SQLQuery1.EOF do
      begin
        temps := temps.Replace(SQLQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(SQLQuery1.FieldByName('pFC2').AsString, '');
        SQLQuery1.Next;
      end;
      if temps = '' then
      begin
        // 5环肯普链树   必定121234
        // showmessage('5环肯普链树   必定121234');
        // showmessage('5环肯普链树');
        isOK := 0;

        Tcolor5pCode[0] := SQLQuery2.FieldByName('pcode').AsString;
        PPcode5ColorIndex[0] := 0;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(IntToStr(0), Tcolor5pCode[0], 0, clOlive);
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        SQLQuery1.First;
        colorindex := 0;
        while not SQLQuery1.EOF do
        begin
          colorindex := colorindex + 1;
          // for colorindex := 1 to 5 do
          begin
            if SQLQuery1.FieldByName('pcode1').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode1').AsString;
              PPcode5ColorIndex[colorindex] :=
                SQLQuery1.FieldByName('pFC1').AsInteger;
              // break;
            end;
            if SQLQuery1.FieldByName('pcode2').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode2').AsString;
              PPcode5ColorIndex[colorindex] :=
                SQLQuery1.FieldByName('pFC2').AsInteger;
              // break;
            end;
          end;
          SQLQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // C1248C1111 备份字段用也
        sqltemp.Close;
        sqltemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        sqltemp.ExecSQL;//SQLTransaction1.Commit;
        //refreshoneP(IntToStr(PPcode5ColorIndex[1]), Tcolor5pCode[1], 0, cllime);
        //refreshoneP(IntToStr(PPcode5ColorIndex[2]), Tcolor5pCode[2], 0,clFuchsia);
        //refreshoneP(IntToStr(PPcode5ColorIndex[3]), Tcolor5pCode[3], 0,clyellow);
        //refreshoneP(IntToStr(PPcode5ColorIndex[4]), Tcolor5pCode[4], 0,clskyblue);
        //refreshoneP(IntToStr(PPcode5ColorIndex[5]), Tcolor5pCode[5], 0,clsilver);
        //if not ((ccclred = clAqua) or (ccclred = clHighLight) or (ccclred = clmedgray) or
        //  (ccclred = clblue) or (ccclred = clwindowFrame)) then
        refreshoneP(IntToStr(PPcode5ColorIndex[1]), Tcolor5pCode[1], 0, clAqua);
        refreshoneP(IntToStr(PPcode5ColorIndex[2]), Tcolor5pCode[2], 0, clHighLight);
        refreshoneP(IntToStr(PPcode5ColorIndex[3]), Tcolor5pCode[3], 0, clmedgray);
        refreshoneP(IntToStr(PPcode5ColorIndex[4]), Tcolor5pCode[4], 0, clblue);
        refreshoneP(IntToStr(PPcode5ColorIndex[5]), Tcolor5pCode[5], 0, clwindowFrame);

        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        //  ShowMessage('5环肯普链树：' + Tcolor5pCode[1] + ',' +
        //    Tcolor5pCode[2] + ',' + Tcolor5pCode[3] + ',' + Tcolor5pCode[4] +
        //   ',' + Tcolor5pCode[5] + ',');
        //application.MessageBox(
        //  PChar('5环肯普链树：' + Tcolor5pCode[1] + ',' +
        //  Tcolor5pCode[2] + ',' + Tcolor5pCode[3] + ',' + Tcolor5pCode[4] +
        //  ',' + Tcolor5pCode[5])
        //  , '5环肯普链树：', MB_OK);
        showli('5环肯普链树：', '5环肯普链树：' + Tcolor5pCode[1] + ',' +
          Tcolor5pCode[2] + ',' + Tcolor5pCode[3] + ',' + Tcolor5pCode[4] +
          ',' + Tcolor5pCode[5]);
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
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set FC=1,C1248C1111=1 where  pcode=''P82'' and  dprid='
              +
              dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          end;
          if isTest5ChainReturnOK = 0 then
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          begin
            /// ////测试五环用
            // 这里可以update具体颜值，以测试五环用
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set FC=3,C1248C1111=3 where  pcode=''P82'' and  dprid='
              +
              dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
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
          sqltemp.Close;
          sqltemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          sqltemp.Close;
          sqltemp.SQL.Text := 'update points set C=0 where  dprid=' +
            dprid + ' ';
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          sqltemp.Close;
          self.fromLabelcaptionC(clred);
          // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
          sqltemp.SQL.Text := 'update points set FC=' +
            IntToStr(PPcode5ColorIndex[p2]) + ',C=1 where pcode=''' +
            Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          // sqltemp.Close;
          // sqltemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
          // dprid + ' ';
          // sqltemp.ExecSQL;SQLTransaction1.Commit;
          refreshoneP(IntToStr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
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
            SQLQuery3.Close;
            SQLQuery3.SQL.Text :=
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
              IntToStr(curPcount) + ' and  pF12<' + IntToStr(curPcount) +
              ')' + ' and ( pFC1=' + IntToStr(PPcode5ColorIndex[p1]) +
              ' or pFC1=' + IntToStr(PPcode5ColorIndex[p2]) + ' or pFC2=' +
              IntToStr(PPcode5ColorIndex[p1]) + ' or pFC2=' +
              IntToStr(PPcode5ColorIndex[p2]) + ')';
            SQLQuery3.Open;
            SQLQuery3.First;
            while not SQLQuery3.EOF do
            begin
              if SQLQuery3.FieldByName('pcode1').AsString = 'P3' then
                if SQLQuery3.FieldByName('pcode2').AsString = 'P12' then
                  Application.ProcessMessages;

              if (SQLQuery3.FieldByName('pFC1').AsString =
                SQLQuery3.FieldByName('pFC2').AsString) then
              begin

                if (SQLQuery3.FieldByName('pC1').AsInteger > 0) then
                  if (SQLQuery3.FieldByName('pC2').AsInteger > 0) then
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                // if 1=2 then
                if (((SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode1')
                  .AsString = Tcolor5pCode[3]) or
                  (SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[5])) and
                  ((SQLQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[1]) or
                  (SQLQuery3.FieldByName('pcode2').AsString =
                  Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode2').AsString =
                  Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode2').AsString =
                  Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                  .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                begin
                  isHaveSameColor := True;
                  break;
                end;
                if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                  if (((SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                  if (((SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  sqltemp.Close;
                  sqltemp.SQL.Text :=
                    'update points set FC=' +
                    (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                    ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                    SQLQuery3.FieldByName('pcode1').AsString +
                    ''' and dprid=' + dprid + ' ';
                  sqltemp.ExecSQL;//SQLTransaction1.Commit;
                  refreshoneP((IntToStr(PPcode5ColorIndex[p1]) +
                    IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                    SQLQuery3.FieldByName('pcode1').AsString, 1000, clred);
                  // looktime(-1);
                  // SQLQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if SQLQuery3.FieldByName('pcode1').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
                if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  sqltemp.Close;
                  sqltemp.SQL.Text :=
                    'update points set FC=' +
                    (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                    ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                    SQLQuery3.FieldByName('pcode2').AsString +
                    ''' and dprid=' + dprid + ' ';
                  sqltemp.ExecSQL;//SQLTransaction1.Commit;
                  refreshoneP((IntToStr(PPcode5ColorIndex[p1]) +
                    IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                    SQLQuery3.FieldByName('pcode2').AsString, 1000, clred);
                  // looktime(-1);
                  // OQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if SQLQuery3.FieldByName('pcode2').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
              end;
              SQLQuery3.Next;
            end;
            if isHaveSameColor then
              // if SQLQuery3.RecordCount=0 then
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
          //          // if SQLQuery3.RecordCount=0 then
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
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set C=0 where  dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            sqltemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
            sqltemp.SQL.Text :=
              'update points set FC=' + IntToStr(PPcode5ColorIndex[p2]) +
              ',C=1 where pcode=''' + Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            // sqltemp.Close;
            // sqltemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // sqltemp.ExecSQL;SQLTransaction1.Commit;
            refreshoneP(IntToStr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
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
              SQLQuery3.Close;
              SQLQuery3.SQL.Text :=
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
                IntToStr(curPcount) + ' and  pF12<' + IntToStr(curPcount) +
                ')' + ' and ( pFC1=' + IntToStr(PPcode5ColorIndex[p1]) +
                ' or pFC1=' + IntToStr(PPcode5ColorIndex[p2]) +
                ' or pFC2=' + IntToStr(PPcode5ColorIndex[p1]) +
                ' or pFC2=' + IntToStr(PPcode5ColorIndex[p2]) + ')';
              SQLQuery3.Open;
              SQLQuery3.First;
              while not SQLQuery3.EOF do
              begin
                if SQLQuery3.FieldByName('pcode1').AsString = 'P3' then
                  if SQLQuery3.FieldByName('pcode2').AsString = 'P12' then
                    Application.ProcessMessages;

                if (SQLQuery3.FieldByName('pFC1').AsString =
                  SQLQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (SQLQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (SQLQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  // if 1=2 then
                  if (((SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5])) and
                    ((SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[1]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[3]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[1]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[3]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    sqltemp.Close;
                    sqltemp.SQL.Text :=
                      'update points set FC=' +
                      (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode1').AsString +
                      ''' and dprid=' + dprid + ' ';
                    sqltemp.ExecSQL;//SQLTransaction1.Commit;
                    refreshoneP
                    ((IntToStr(PPcode5ColorIndex[p1]) +
                      IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // SQLQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if SQLQuery3.FieldByName('pcode1').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    sqltemp.Close;
                    sqltemp.SQL.Text :=
                      'update points set FC=' +
                      (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode2').AsString +
                      ''' and dprid=' + dprid + ' ';
                    sqltemp.ExecSQL;//SQLTransaction1.Commit;
                    refreshoneP
                    ((IntToStr(PPcode5ColorIndex[p1]) +
                      IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if SQLQuery3.FieldByName('pcode2').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                end;
                SQLQuery3.Next;
              end;
              if isHaveSameColor then
                // if SQLQuery3.RecordCount=0 then
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
          // sqltemp.Close;
          // sqltemp.SQL.Text :=
          // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
          // sqltemp.ExecSQL;//SQLTransaction1.Commit;
          sqltemp.Close;
          // Tcolor4pCode[3] := 1; // 肯普链树中心点
          sqltemp.SQL.Text := 'update points set FC=' +
            IntToStr(PPcode5ColorIndex[p1]) + ' where pcode=''' +
            Tcolor5pCode[0] + ''' and dprid=' + dprid + ' ';
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          refreshoneP(IntToStr(PPcode5ColorIndex[p1]), Tcolor5pCode[0],
            1000, clred);
          self.savetoLabelcaption;

        end;

        self.fromLabelcaption;
        if not isHaveSameColor then
          //ShowMessage('5环肯普链树，这个已经可解了')
          application.MessageBox('5环肯普链树，这个已经可解了',
            '5环肯普链树:', MB_OK)
        else
        begin
          //ShowMessage('5环肯普链树，仍然不可解');
          application.MessageBox('5环肯普链树，仍然不可解',
            '5环肯普链树:', MB_OK);
          sqltemp.Close;
          sqltemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次

        // 5环肯普链树   必定121234
      end
      else
      begin
        sqltemp.Close;
        sqltemp.SQL.Text := 'update points set FC=' + temps[1] +
          ' where F1=' + IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
        sqltemp.ExecSQL;//SQLTransaction1.Commit;
        // refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
  end;
  SQLQuery1.Close;
  SQLQuery2.Close;
  SQLQuery3.Close;
  sqltemp.Close;
  SQLTransaction1.Commit;
  refreshClick(nil);
  //AutorefreshALLP;
  groupcount;
  //ShowMessage('ok');
  //OnPainNoPainColor := False;
  application.ProcessMessages;
  //application.MessageBox('ok', 'ok', MB_OK);
  showli('ok', 'ok');
  application.ProcessMessages;
end;

procedure TMain.KePuPlay5circleClick(Sender: TObject);
var
  p1, p2, p3, p4, p5, p6, pp6i, tempi: integer;
  j1, j2, j3, j4, j5, j6: integer;
  i00, i01, i02, i03, i04, i05, i06, i07, i08, i09: integer;
  PP6: array [1 .. 6] of integer;
  PPcode6: array [1 .. 6] of string;
  RResult, pcode1, pcode2, temps: string;
  pindex1, pindex2: integer;
  ok, notok: boolean;
  Tcolor4pCode: array [0 .. 4] of string;

  colorindex, orderStep, ijk, stept: integer;
  isHaveSameColor: boolean;
  Tcolor5pCode: array [0 .. 5] of string; // Tcolor5pCode
  PPcode5ColorIndex: array [0 .. 5] of integer; // ColorIndex
  Abacd_A, Abacd_b, Abacd_Aa, Abacd_c, Abacd_d: string; // Tcolor5pCode
  a, b, aa, c, d: integer; // PPcode5Index
  isTest5Chain: integer; // 实例且改代码才可测五环肯普链涟漪
  isOK: integer;
begin

  ShowMessage(
    '此为演示数据中弹出五环肯普链的例子，要代码来模拟才出现，现实中我找不到实例，演示五环肯普链用');

  isTest5Chain := 1; // 实例且改代码才可测五环肯普链涟漪
  // isTest5Chain := 0; // 实例且改代码才可测五环肯普链涟漪
  exitOut := False;

  // Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '反例.jpg');

  RResult := '';



  SQLQuery2.Close;
  SQLQuery2.SQL.Text := 'update points set CCC=0,F1=0,C=0,FC=0 where  dprid=' +
    dprid + ' ';
  SQLQuery2.ExecSQL;

  SQLQuery2.Close;
  SQLQuery2.SQL.Text := 'select  count(1) as pc from points where 1=1 and F1=0 ' +
    ' and dprid=' + dprid + ' ';
  SQLQuery2.Open;
  PCount := SQLQuery2.FieldByName('pc').AsInteger;
  /// ////测试五环用   隐去一点
  if isTest5Chain = 1 then
    // if 1 = 2 then
  begin
    PCount := PCount - 1;
    SQLtemp.Close;
    SQLtemp.SQL.Text :=
      'update points set dprid=2 where pcode=''P0'' and dprid=' + dprid + ' ';
    // 测试时P0正确是dprid=1，现暂动态改为2来测试
    SQLtemp.ExecSQL;
    SQLtemp.Close;
    SQLtemp.SQL.Text :=
      'update edges set relation=0 where pcode1=''P0'' and dprid=' + dprid + ' ';
    // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
    SQLtemp.ExecSQL;
  end;
  /// ////测试五环用
  curPcount := PCount + 1;

  while curPcount > 6 do
  begin
    curPcount := curPcount - 1;
    if curPcount = 6 then
    begin
      SQLQuery2.Close;
      SQLQuery2.SQL.Text := 'select  * from points where 1=1 and F1=0 ' +
        ' and dprid=' + dprid + ' ';
      SQLQuery2.Open;
      SQLQuery2.First;
      tempi := 0;
      while not SQLQuery2.EOF do
      begin
        tempi := tempi + 1;
        SQLQuery2.Edit;
        SQLQuery2.FieldByName('F1').AsInteger := tempi;
        SQLQuery2.Post;
        SQLQuery2.Next;
      end;
      SQLQuery2.ApplyUpdates();
      break;
    end;

    SQLQuery1.Close;
    SQLQuery1.SQL.Text :=
      'select ww.* from (select w.pcode1,count(1) as pc from (select pcode1,pcode2 from edges where Relation '
      + ' and dprid=' + dprid +
      ' and pcode1 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) + ')  ' +
      ' union select pcode2,pcode1 from edges where relation and dprid=' +
      dprid + ' and pcode1 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) + ')  ' +
      // ' ) as w group by w.pcode1) as ww order by ww.pc';  notok  //测试四环，五环
      // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1';  //ookk
      // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
      ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1'; // ookk
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
    // 上面两句SQL有个order by ww.pcode1确不同，有者，可解那个双四环，无者，第二个不可解
    // 无者，可用于测试五环乎，同样算法，因为一个order出现可解与不可解之大事
    SQLQuery1.Open;
    if SQLQuery1.FieldByName('pc').AsInteger > 5 then
    begin
      ShowMessage('数据有错了');

    end;

    SQLQuery2.Close;
    SQLQuery2.SQL.Text := 'update points set F1=' + IntToStr(curPcount) +
      ',CCC=' + SQLQuery1.FieldByName('pc').AsString + ' where pcode=''' +
      SQLQuery1.FieldByName('pcode1').AsString + ''' and dprid=' + dprid + ' ';
    SQLQuery2.ExecSQL;
    // exit;

  end;
  if curPcount = 6 then
    // showmessage(inttostr(PCount));
  begin
    // 九重循环，九层之台，起于累土，千里之行，始于足下
    ok := False;
    notok := True;

    SQLQuery1.Close;
    SQLQuery1.SQL.Text :=
      'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
      + dprid + ') as pF1, ' +
      '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid=' +
      dprid + ') as pF2 ' + ' from edges where Relation ' + ' and dprid=' + dprid + ' ';
    SQLQuery1.Open;

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
                // SQLQuery1.Close;
                // SQLQuery1.SQL.Text :=
                // 'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                // + dprid + ') as pF1, ' +
                // '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                // + dprid + ') as pF2 ' + ' from edges where Relation ' +
                // ' and dprid=' + dprid + ' ';
                // SQLQuery1.Open;
                SQLQuery1.First;
                while not SQLQuery1.EOF do
                begin
                  // pcode1 := SQLQuery1.FieldByName('pF1').AsString;
                  // pcode2 := SQLQuery1.FieldByName('pF2').AsString;
                  pindex1 := SQLQuery1.FieldByName('pF1').AsInteger;
                  pindex2 := SQLQuery1.FieldByName('pF2').AsInteger;
                  if ((pindex1 > 0) and (pindex1 < 7)) then
                    if ((pindex2 > 0) and (pindex2 < 7)) then
                      if PP6[pindex1] = PP6[pindex2] then
                      begin
                        notok := True;
                        ok := False;
                        break;
                      end;
                  SQLQuery1.Next;
                end;
                if ok then
                  for pp6i := 1 to 6 do
                  begin

                    SQLQuery2.Close;
                    SQLQuery2.SQL.Text :=
                      'update points set FC=' + IntToStr(PP6[pp6i]) +
                      ' where F1=' + IntToStr(pp6i) + ' and dprid=' + dprid + ' ';
                    SQLQuery2.ExecSQL;

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
  refreshClick(nil); // 刷新图中各点
  if not ok then
  begin
    ShowMessage('此图肯定没有四色解');
    exit;
  end;
  stept := trunc(StrToInt(stepTime.Text));
  // 这里若要刷新开始六点颜值，写代码，不想写，用处不大乎
  SQLtemp.Close;
  SQLtemp.SQL.Text := 'select * from points  where F1<7 and dprid=' + dprid + ' ';
  SQLtemp.Open;
  SQLtemp.First;
  while not SQLtemp.EOF do
    // for pp6i := 1 to 6 do
  begin
    // PPcode6[pp6i] := SQLtemp.FieldByName('pcode').AsString;
    refreshoneP(SQLtemp.FieldByName('fc').AsString, SQLtemp.FieldByName('pcode')
      .AsString, 0, clMoneyGreen);
    SQLtemp.Next;
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
          SQLtemp.Close;
          SQLtemp.SQL.Text :=
            'update points set dprid=1,CCC=5,F1=118,FC=0 where pcode=''P0'' and dprid=2';
          // 测试时P0正确是dprid=1，现暂动态改为2来测试
          SQLtemp.ExecSQL;
          SQLtemp.Close;
          SQLtemp.SQL.Text :=
            'update edges set relation=1 where (ecode=''P0P1'' or ecode=''P0P2'' or ecode=''P0P3''  or  ecode=''P0P4''  or ecode=''P0P5'') and dprid=' + dprid + ' '; // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
          SQLtemp.ExecSQL;

        end;
      end;
    /// ////测试五环用

    SQLQuery2.Close;
    SQLQuery2.SQL.Text := 'select  * from points where 1=1 and F1= ' +
      IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
    SQLQuery2.Open;
    tempi := SQLQuery2.FieldByName('CCC').AsInteger;
    if SQLQuery2.FieldByName('pcode').AsString = 'P96' then
      Application.ProcessMessages; // 断点查错，果然不顺也
    if tempi < 4 then
    begin

      SQLQuery1.Close;
      SQLQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        +
        dprid + ') as pFC2 ' + ' from edges where Relation ' +
        ' and dprid=' + dprid + ' and (pcode1=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''' or pcode2=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      SQLQuery1.Open;
      SQLQuery1.First;
      while not SQLQuery1.EOF do
      begin
        temps := temps.Replace(SQLQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(SQLQuery1.FieldByName('pFC2').AsString, '');
        SQLQuery1.Next;
      end;
      if temps = '' then
      begin
        ShowMessage('小于4的，可能有错了');
      end
      else
      begin
        SQLtemp.Close;
        SQLtemp.SQL.Text := 'update points set FC=' + temps[1] +
          ' where F1=' + IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
        SQLtemp.ExecSQL;
        // refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 4 then
    begin
      SQLQuery1.Close;
      SQLQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        +
        dprid + ') as pFC2 ' + ' from edges where Relation ' +
        ' and dprid=' + dprid + ' and (pcode1=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''' or pcode2=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      SQLQuery1.Open;
      SQLQuery1.First;
      while not SQLQuery1.EOF do
      begin
        temps := temps.Replace(SQLQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(SQLQuery1.FieldByName('pFC2').AsString, '');
        SQLQuery1.Next;
      end;
      if temps = '' then
      begin
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
        //  showmessage('4环肯普链树');
        isOK := 0;
        // showmessage('4环肯普链树  必定1234');
        // refreshhClick(nil); // 刷新图中各点
        Tcolor4pCode[0] := SQLQuery2.FieldByName('pcode').AsString;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(IntToStr(0), Tcolor4pCode[0], 0, clOlive);
        if (Tcolor4pCode[0] = 'P11') then
          Application.ProcessMessages;
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        SQLQuery1.First;
        while not SQLQuery1.EOF do
        begin
          for colorindex := 1 to 4 do
          begin
            if SQLQuery1.FieldByName('pFC1').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode1').AsString;
            if SQLQuery1.FieldByName('pFC2').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode2').AsString;
          end;
          SQLQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // ('P95', 'P112', 'P51', 'P96', 'P94')最后一点P95
        // C1248C1111 备份字段用也
        sqltemp.Close;
        sqltemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        sqltemp.ExecSQL;//SQLTransaction1.Commit;
        //refreshoneP(IntToStr(1), Tcolor4pCode[1], 0, cllime);
        //refreshoneP(IntToStr(2), Tcolor4pCode[2], 0, clFuchsia);
        //refreshoneP(IntToStr(3), Tcolor4pCode[3], 0, clyellow);
        //refreshoneP(IntToStr(4), Tcolor4pCode[4], 0, clskyblue);
        //if not ((ccclred = clAqua) or (ccclred = clHighLight) or (ccclred = clmedgray) or
        //  (ccclred = clblue) or (ccclred = clwindowFrame)) then
        refreshoneP(IntToStr(1), Tcolor4pCode[1], 0, clAqua);
        refreshoneP(IntToStr(2), Tcolor4pCode[2], 0, clHighLight);
        refreshoneP(IntToStr(3), Tcolor4pCode[3], 0, clmedgray);
        application.hint := Tcolor4pCode[4];
        refreshoneP(IntToStr(4), Tcolor4pCode[4], 0, clblue);

        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        //ShowMessage('4环肯普链树：' + Tcolor4pCode[1] + ',' +
        //  Tcolor4pCode[2] + ',' + Tcolor4pCode[3] + ',' + Tcolor4pCode[4] + ',');
        showli('4环肯普链树：', Tcolor4pCode[1] + ',' +
          Tcolor4pCode[2] + ',' + Tcolor4pCode[3] + ',' + Tcolor4pCode[4]);
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
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set C=0 where  dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            sqltemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点
            sqltemp.SQL.Text :=
              'update points set FC=' + IntToStr(p2) + ',C=1 where pcode=''' +
              Tcolor4pCode[p1] + ''' and dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            // sqltemp.Close;
            // sqltemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // sqltemp.ExecSQL;SQLTransaction1.Commit;
            refreshoneP(IntToStr(p2), Tcolor4pCode[p1], 1000, clred);

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
              SQLQuery3.Close;
              SQLQuery3.SQL.Text :=
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
                IntToStr(curPcount) + ' and  pF12<' + IntToStr(curPcount) +
                ')' + ' and ( pFC1=' + IntToStr(p1) + ' or pFC1=' +
                IntToStr(p2) + ' or pFC2=' + IntToStr(p1) + ' or pFC2=' +
                IntToStr(p2) + ')';
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
              SQLQuery3.Open;
              SQLQuery3.First;
              while not SQLQuery3.EOF do
              begin

                if (SQLQuery3.FieldByName('pcode1').AsString = 'P11') then
                  Application.ProcessMessages;
                if (SQLQuery3.FieldByName('pFC1').AsString =
                  SQLQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (SQLQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (SQLQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;

                    end;

                  // if 1=2 then
                  if (((SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor4pCode[1]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor4pCode[2]) or
                    (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor4pCode[3]) or (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor4pCode[4])) and
                    ((SQLQuery3.FieldByName('pcode2').AsString = Tcolor4pCode[1]) or
                    (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor4pCode[2]) or (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor4pCode[3]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor4pCode[4]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;

                  end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor4pCode[1]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor4pCode[2]) or (SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor4pCode[3]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor4pCode[4]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor4pCode[1]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor4pCode[2]) or (SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor4pCode[3]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor4pCode[4]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    sqltemp.Close;
                    sqltemp.SQL.Text :=
                      'update points set FC=' + (IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode1').AsString +
                      ''' and dprid=' + dprid + ' ';
                    sqltemp.ExecSQL;
                    //SQLTransaction1.Commit; SQLTransaction1.Active:=true;
                    refreshoneP((IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // SQLQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    break;
                  end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    sqltemp.Close;
                    sqltemp.SQL.Text :=
                      'update points set FC=' + (IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode2').AsString +
                      ''' and dprid=' + dprid + ' ';
                    sqltemp.ExecSQL;
                    //SQLTransaction1.Commit;SQLTransaction1.Active:=true;
                    refreshoneP((IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    break;
                  end;

                end;
                SQLQuery3.Next;
              end;
              // if 1=2 then
              if isHaveSameColor then
                // if SQLQuery3.RecordCount=0 then
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
            // sqltemp.Close;
            // sqltemp.SQL.Text :=
            // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // sqltemp.ExecSQL;SQLTransaction1.Commit;
            sqltemp.Close;
            // Tcolor4pCode[3] := 1; // 肯普链树中心点
            sqltemp.SQL.Text :=
              'update points set FC=' + IntToStr(p1) + ' where pcode=''' +
              Tcolor4pCode[0] + ''' and dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            refreshoneP(IntToStr(p1), Tcolor4pCode[0], 1000, clred);
            self.savetoLabelcaption;
            break;
          end;
        end;
        self.fromLabelcaption;
        if not isHaveSameColor then
          // if ((not isHaveSameColor) and (isOK = 0)) then
          ShowMessage('4环肯普链树，这个已经可解了')
        else
        begin
          ShowMessage('4环肯普链树，仍然不可解');
          sqltemp.Close;
          sqltemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' '; // 手工调试时，将两个字段齐改才行
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
      end
      else
      begin
        sqltemp.Close;
        sqltemp.SQL.Text := 'update points set FC=' + temps[1] +
          ' where F1=' + IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
        sqltemp.ExecSQL;//SQLTransaction1.Commit;  SQLTransaction1.Active:=true;
        // refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 5 then
    begin
      SQLQuery1.Close;
      SQLQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        +
        dprid + ') as pFC2 ' + ' from edges where Relation ' +
        ' and dprid=' + dprid + ' and (pcode1=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''' or pcode2=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      SQLQuery1.Open;
      SQLQuery1.First;
      while not SQLQuery1.EOF do
      begin
        temps := temps.Replace(SQLQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(SQLQuery1.FieldByName('pFC2').AsString, '');
        SQLQuery1.Next;
      end;
      if temps = '' then
      begin
        // 5环肯普链树   必定121234
        // showmessage('5环肯普链树   必定121234');
        // showmessage('5环肯普链树');
        isOK := 0;

        Tcolor5pCode[0] := SQLQuery2.FieldByName('pcode').AsString;
        PPcode5ColorIndex[0] := 0;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(IntToStr(0), Tcolor5pCode[0], 0, clOlive);
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        SQLQuery1.First;
        colorindex := 0;
        while not SQLQuery1.EOF do
        begin
          colorindex := colorindex + 1;
          // for colorindex := 1 to 5 do
          begin
            if SQLQuery1.FieldByName('pcode1').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode1').AsString;
              PPcode5ColorIndex[colorindex] :=
                SQLQuery1.FieldByName('pFC1').AsInteger;
              // break;
            end;
            if SQLQuery1.FieldByName('pcode2').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode2').AsString;
              PPcode5ColorIndex[colorindex] :=
                SQLQuery1.FieldByName('pFC2').AsInteger;
              // break;
            end;
          end;
          SQLQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // C1248C1111 备份字段用也
        sqltemp.Close;
        sqltemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        sqltemp.ExecSQL;//SQLTransaction1.Commit;
        //if not ((ccclred = clAqua) or (ccclred = clHighLight) or (ccclred = clmedgray) or
        //  (ccclred = clblue) or (ccclred = clwindowFrame)) then
        refreshoneP(IntToStr(PPcode5ColorIndex[1]), Tcolor5pCode[1], 0, clAqua);
        refreshoneP(IntToStr(PPcode5ColorIndex[2]), Tcolor5pCode[2], 0, clHighLight);
        refreshoneP(IntToStr(PPcode5ColorIndex[3]), Tcolor5pCode[3], 0, clmedgray);
        refreshoneP(IntToStr(PPcode5ColorIndex[4]), Tcolor5pCode[4], 0, clblue);
        refreshoneP(IntToStr(PPcode5ColorIndex[5]), Tcolor5pCode[5], 0, clwindowFrame);
        // looktime(10000);
        // looktime(-1);
        /// ///////////////////////////////////////////////////////
        //ShowMessage('5环肯普链树：' + Tcolor5pCode[1] + ',' +
        //  Tcolor5pCode[2] + ',' + Tcolor5pCode[3] + ',' + Tcolor5pCode[4] +
        //  ',' + Tcolor5pCode[5] + ',');
        showli('5环肯普链树：', Tcolor5pCode[1] + ',' +
          Tcolor5pCode[2] + ',' + Tcolor5pCode[3] + ',' + Tcolor5pCode[4] +
          ',' + Tcolor5pCode[5] );
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
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set FC=1,C1248C1111=1 where  pcode=''P82'' and  dprid='
              +
              dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          end;
          if isTest5ChainReturnOK = 0 then
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          begin
            /// ////测试五环用
            // 这里可以update具体颜值，以测试五环用
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set FC=3,C1248C1111=3 where  pcode=''P82'' and  dprid='
              +
              dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
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
          sqltemp.Close;
          sqltemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          sqltemp.Close;
          sqltemp.SQL.Text := 'update points set C=0 where  dprid=' +
            dprid + ' ';
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          sqltemp.Close;
          self.fromLabelcaptionC(clred);
          // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
          sqltemp.SQL.Text := 'update points set FC=' +
            IntToStr(PPcode5ColorIndex[p2]) + ',C=1 where pcode=''' +
            Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          // sqltemp.Close;
          // sqltemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
          // dprid + ' ';
          // sqltemp.ExecSQL;SQLTransaction1.Commit;
          refreshoneP(IntToStr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
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
            SQLQuery3.Close;
            SQLQuery3.SQL.Text :=
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
              IntToStr(curPcount) + ' and  pF12<' + IntToStr(curPcount) +
              ')' + ' and ( pFC1=' + IntToStr(PPcode5ColorIndex[p1]) +
              ' or pFC1=' + IntToStr(PPcode5ColorIndex[p2]) + ' or pFC2=' +
              IntToStr(PPcode5ColorIndex[p1]) + ' or pFC2=' +
              IntToStr(PPcode5ColorIndex[p2]) + ')';
            SQLQuery3.Open;
            SQLQuery3.First;
            while not SQLQuery3.EOF do
            begin
              if SQLQuery3.FieldByName('pcode1').AsString = 'P3' then
                if SQLQuery3.FieldByName('pcode2').AsString = 'P12' then
                  Application.ProcessMessages;

              if (SQLQuery3.FieldByName('pFC1').AsString =
                SQLQuery3.FieldByName('pFC2').AsString) then
              begin

                if (SQLQuery3.FieldByName('pC1').AsInteger > 0) then
                  if (SQLQuery3.FieldByName('pC2').AsInteger > 0) then
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                // if 1=2 then
                if (((SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode1')
                  .AsString = Tcolor5pCode[3]) or
                  (SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[5])) and
                  ((SQLQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[1]) or
                  (SQLQuery3.FieldByName('pcode2').AsString =
                  Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode2').AsString =
                  Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode2').AsString =
                  Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                  .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                begin
                  isHaveSameColor := True;
                  break;
                end;
                if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                  if (((SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                  if (((SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  sqltemp.Close;
                  sqltemp.SQL.Text :=
                    'update points set FC=' +
                    (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                    ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                    SQLQuery3.FieldByName('pcode1').AsString +
                    ''' and dprid=' + dprid + ' ';
                  sqltemp.ExecSQL;//SQLTransaction1.Commit;
                  refreshoneP((IntToStr(PPcode5ColorIndex[p1]) +
                    IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                    SQLQuery3.FieldByName('pcode1').AsString, 1000, clred);
                  // looktime(-1);
                  // SQLQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if SQLQuery3.FieldByName('pcode1').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
                if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  sqltemp.Close;
                  sqltemp.SQL.Text :=
                    'update points set FC=' +
                    (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                    ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                    SQLQuery3.FieldByName('pcode2').AsString +
                    ''' and dprid=' + dprid + ' ';
                  sqltemp.ExecSQL;//SQLTransaction1.Commit;
                  refreshoneP((IntToStr(PPcode5ColorIndex[p1]) +
                    IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                    SQLQuery3.FieldByName('pcode2').AsString, 1000, clred);
                  // looktime(-1);
                  // OQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if SQLQuery3.FieldByName('pcode2').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
              end;
              SQLQuery3.Next;
            end;
            if isHaveSameColor then
              // if SQLQuery3.RecordCount=0 then
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
          //          // if SQLQuery3.RecordCount=0 then
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
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            sqltemp.Close;
            sqltemp.SQL.Text :=
              'update points set C=0 where  dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            sqltemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
            sqltemp.SQL.Text :=
              'update points set FC=' + IntToStr(PPcode5ColorIndex[p2]) +
              ',C=1 where pcode=''' + Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
            sqltemp.ExecSQL;//SQLTransaction1.Commit;
            // sqltemp.Close;
            // sqltemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // sqltemp.ExecSQL;SQLTransaction1.Commit;
            refreshoneP(IntToStr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
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
              SQLQuery3.Close;
              SQLQuery3.SQL.Text :=
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
                IntToStr(curPcount) + ' and  pF12<' + IntToStr(curPcount) +
                ')' + ' and ( pFC1=' + IntToStr(PPcode5ColorIndex[p1]) +
                ' or pFC1=' + IntToStr(PPcode5ColorIndex[p2]) +
                ' or pFC2=' + IntToStr(PPcode5ColorIndex[p1]) +
                ' or pFC2=' + IntToStr(PPcode5ColorIndex[p2]) + ')';
              SQLQuery3.Open;
              SQLQuery3.First;
              while not SQLQuery3.EOF do
              begin
                if SQLQuery3.FieldByName('pcode1').AsString = 'P3' then
                  if SQLQuery3.FieldByName('pcode2').AsString = 'P12' then
                    Application.ProcessMessages;

                if (SQLQuery3.FieldByName('pFC1').AsString =
                  SQLQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (SQLQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (SQLQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  // if 1=2 then
                  if (((SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5])) and
                    ((SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[1]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[3]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[1]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[3]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    sqltemp.Close;
                    sqltemp.SQL.Text :=
                      'update points set FC=' +
                      (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode1').AsString +
                      ''' and dprid=' + dprid + ' ';
                    sqltemp.ExecSQL;//SQLTransaction1.Commit;
                    refreshoneP
                    ((IntToStr(PPcode5ColorIndex[p1]) +
                      IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // SQLQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if SQLQuery3.FieldByName('pcode1').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    sqltemp.Close;
                    sqltemp.SQL.Text :=
                      'update points set FC=' +
                      (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode2').AsString +
                      ''' and dprid=' + dprid + ' ';
                    sqltemp.ExecSQL;//SQLTransaction1.Commit;
                    refreshoneP
                    ((IntToStr(PPcode5ColorIndex[p1]) +
                      IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if SQLQuery3.FieldByName('pcode2').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                end;
                SQLQuery3.Next;
              end;
              if isHaveSameColor then
                // if SQLQuery3.RecordCount=0 then
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
          // sqltemp.Close;
          // sqltemp.SQL.Text :=
          // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
          // sqltemp.ExecSQL;//SQLTransaction1.Commit;
          sqltemp.Close;
          // Tcolor4pCode[3] := 1; // 肯普链树中心点
          sqltemp.SQL.Text := 'update points set FC=' +
            IntToStr(PPcode5ColorIndex[p1]) + ' where pcode=''' +
            Tcolor5pCode[0] + ''' and dprid=' + dprid + ' ';
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          refreshoneP(IntToStr(PPcode5ColorIndex[p1]), Tcolor5pCode[0],
            1000, clred);
          self.savetoLabelcaption;

        end;

        self.fromLabelcaption;
        if not isHaveSameColor then
          ShowMessage('5环肯普链树，这个已经可解了')
        else
        begin
          ShowMessage('5环肯普链树，仍然不可解');
          sqltemp.Close;
          sqltemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          sqltemp.ExecSQL;//SQLTransaction1.Commit;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次

        // 5环肯普链树   必定121234
      end
      else
      begin
        sqltemp.Close;
        sqltemp.SQL.Text := 'update points set FC=' + temps[1] +
          ' where F1=' + IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
        sqltemp.ExecSQL;//SQLTransaction1.Commit;
        // refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
  end;

  SQLTransaction1.Commit;
  refreshClick(nil);
  groupcount;
  //ShowMessage('ok');
  //application.MessageBox('ok', 'ok', MB_OK);
  showli('ok', 'ok');
end;

procedure TMain.KePuPlay5circle222Click(Sender: TObject);
var
  p1, p2, p3, p4, p5, p6, pp6i, tempi: integer;
  j1, j2, j3, j4, j5, j6: integer;
  i00, i01, i02, i03, i04, i05, i06, i07, i08, i09: integer;
  PP6: array [1 .. 6] of integer;
  PPcode6: array [1 .. 6] of string;
  RResult, pcode1, pcode2, temps: string;
  pindex1, pindex2: integer;
  ok, notok: boolean;
  Tcolor4pCode: array [0 .. 4] of string;

  colorindex, orderStep, ijk, stept: integer;
  isHaveSameColor: boolean;
  Tcolor5pCode: array [0 .. 5] of string; // Tcolor5pCode
  PPcode5ColorIndex: array [0 .. 5] of integer; // ColorIndex
  Abacd_A, Abacd_b, Abacd_Aa, Abacd_c, Abacd_d: string; // Tcolor5pCode
  a, b, aa, c, d: integer; // PPcode5Index
  isTest5Chain: integer; // 实例且改代码才可测五环肯普链涟漪
  isOK: integer;
begin

  ShowMessage(
    '此为演示数据中弹出五环肯普链的例子，要返回成功还要要代码来修改数据模拟才出现，现实中我找不到实例，演示五环肯普链用');

  isTest5Chain := 1; // 实例且改代码才可测五环肯普链涟漪
  // isTest5Chain := 0; // 实例且改代码才可测五环肯普链涟漪
  exitOut := False;

  RResult := '';



  SQLQuery2.Close;
  SQLQuery2.SQL.Text := 'update points set CCC=0,F1=0,C=0,FC=0 where  dprid=' +
    dprid + ' ';
  SQLQuery2.ExecSQL;

  SQLQuery2.Close;
  SQLQuery2.SQL.Text := 'select  count(1) as pc from points where 1=1 and F1=0 ' +
    ' and dprid=' + dprid + ' ';
  SQLQuery2.Open;
  PCount := SQLQuery2.FieldByName('pc').AsInteger;
  /// ////测试五环用   隐去一点
  if isTest5Chain = 1 then
    // if 1 = 2 then
  begin
    PCount := PCount - 1;
    SQLtemp.Close;
    SQLtemp.SQL.Text :=
      'update points set dprid=2 where pcode=''P0'' and dprid=' + dprid + ' ';
    // 测试时P0正确是dprid=1，现暂动态改为2来测试
    SQLtemp.ExecSQL;
    SQLtemp.Close;
    SQLtemp.SQL.Text :=
      'update edges set relation=0 where pcode1=''P0'' and dprid=' + dprid + ' ';
    // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
    SQLtemp.ExecSQL;
  end;
  /// ////测试五环用
  curPcount := PCount + 1;

  while curPcount > 6 do
  begin
    curPcount := curPcount - 1;
    if curPcount = 6 then
    begin
      SQLQuery2.Close;
      SQLQuery2.SQL.Text := 'select  * from points where 1=1 and F1=0 ' +
        ' and dprid=' + dprid + ' ';
      SQLQuery2.Open;
      SQLQuery2.First;
      tempi := 0;
      while not SQLQuery2.EOF do
      begin
        tempi := tempi + 1;
        SQLQuery2.Edit;
        SQLQuery2.FieldByName('F1').AsInteger := tempi;
        SQLQuery2.Post;
        SQLQuery2.Next;
      end;
      SQLQuery2.ApplyUpdates();
      break;
    end;

    SQLQuery1.Close;
    SQLQuery1.SQL.Text :=
      'select ww.* from (select w.pcode1,count(1) as pc from (select pcode1,pcode2 from edges where Relation '
      + ' and dprid=' + dprid +
      ' and pcode1 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) + ')  ' +
      ' union select pcode2,pcode1 from edges where relation and dprid=' +
      dprid + ' and pcode1 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) +
      ') and pcode2 in (select pcode from points where  dprid=' +
      dprid + ' and F1<' + IntToStr(curPcount) + ')  ' +
      // ' ) as w group by w.pcode1) as ww order by ww.pc';  notok  //测试四环，五环
      // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1';  //ookk
      // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
      ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1'; // ookk
    // ' ) as w group by w.pcode1) as ww order by ww.pc,ww.pcode1 desc';  //测试四环，五环
    // 上面两句SQL有个order by ww.pcode1确不同，有者，可解那个双四环，无者，第二个不可解
    // 无者，可用于测试五环乎，同样算法，因为一个order出现可解与不可解之大事
    SQLQuery1.Open;
    if SQLQuery1.FieldByName('pc').AsInteger > 5 then
    begin
      ShowMessage('数据有错了');

    end;

    SQLQuery2.Close;
    SQLQuery2.SQL.Text := 'update points set F1=' + IntToStr(curPcount) +
      ',CCC=' + SQLQuery1.FieldByName('pc').AsString + ' where pcode=''' +
      SQLQuery1.FieldByName('pcode1').AsString + ''' and dprid=' + dprid + ' ';
    SQLQuery2.ExecSQL;
    // exit;

  end;
  if curPcount = 6 then
    // showmessage(inttostr(PCount));
  begin
    // 九重循环，九层之台，起于累土，千里之行，始于足下
    ok := False;
    notok := True;

    SQLQuery1.Close;
    SQLQuery1.SQL.Text :=
      'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
      + dprid + ') as pF1, ' +
      '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid=' +
      dprid + ') as pF2 ' + ' from edges where Relation ' + ' and dprid=' + dprid + ' ';
    SQLQuery1.Open;

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
                // SQLQuery1.Close;
                // SQLQuery1.SQL.Text :=
                // 'select edges.*,(select p.F1  from points as p where p.pcode=edges.pcode1 and p.dprid='
                // + dprid + ') as pF1, ' +
                // '  (select p.F1  from points as p where p.pcode=edges.pcode2 and  p.dprid='
                // + dprid + ') as pF2 ' + ' from edges where Relation ' +
                // ' and dprid=' + dprid + ' ';
                // SQLQuery1.Open;
                SQLQuery1.First;
                while not SQLQuery1.EOF do
                begin
                  // pcode1 := SQLQuery1.FieldByName('pF1').AsString;
                  // pcode2 := SQLQuery1.FieldByName('pF2').AsString;
                  pindex1 := SQLQuery1.FieldByName('pF1').AsInteger;
                  pindex2 := SQLQuery1.FieldByName('pF2').AsInteger;
                  if ((pindex1 > 0) and (pindex1 < 7)) then
                    if ((pindex2 > 0) and (pindex2 < 7)) then
                      if PP6[pindex1] = PP6[pindex2] then
                      begin
                        notok := True;
                        ok := False;
                        break;
                      end;
                  SQLQuery1.Next;
                end;
                if ok then
                  for pp6i := 1 to 6 do
                  begin

                    SQLQuery2.Close;
                    SQLQuery2.SQL.Text :=
                      'update points set FC=' + IntToStr(PP6[pp6i]) +
                      ' where F1=' + IntToStr(pp6i) + ' and dprid=' + dprid + ' ';
                    SQLQuery2.ExecSQL;

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
  refreshClick(nil); // 刷新图中各点
  if not ok then
  begin
    ShowMessage('此图肯定没有四色解');
    exit;
  end;
  stept := trunc(StrToInt(stepTime.Text));
  // 这里若要刷新开始六点颜值，写代码，不想写，用处不大乎
  SQLtemp.Close;
  SQLtemp.SQL.Text := 'select * from points  where F1<7 and dprid=' + dprid + ' ';
  SQLtemp.Open;
  SQLtemp.First;
  while not SQLtemp.EOF do
    // for pp6i := 1 to 6 do
  begin
    // PPcode6[pp6i] := SQLtemp.FieldByName('pcode').AsString;
    refreshoneP(SQLtemp.FieldByName('fc').AsString, SQLtemp.FieldByName('pcode')
      .AsString, 0, clMoneyGreen);
    SQLtemp.Next;
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
          SQLtemp.Close;
          SQLtemp.SQL.Text :=
            'update points set dprid=1,CCC=5,F1=118,FC=0 where pcode=''P0'' and dprid=2';
          // 测试时P0正确是dprid=1，现暂动态改为2来测试
          SQLtemp.ExecSQL;
          SQLtemp.Close;
          SQLtemp.SQL.Text :=
            'update edges set relation=1 where (ecode=''P0P1'' or ecode=''P0P2'' or ecode=''P0P3''  or  ecode=''P0P4''  or ecode=''P0P5'') and dprid=' + dprid + ' '; // 测试时P0正确是dprid=1，现暂动态改为2来测试  ,仅五边P1,P2,P3,P4,P5
          SQLtemp.ExecSQL;

        end;
      end;
    /// ////测试五环用

    SQLQuery2.Close;
    SQLQuery2.SQL.Text := 'select  * from points where 1=1 and F1= ' +
      IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
    SQLQuery2.Open;
    tempi := SQLQuery2.FieldByName('CCC').AsInteger;
    if SQLQuery2.FieldByName('pcode').AsString = 'P96' then
      Application.ProcessMessages; // 断点查错，果然不顺也
    if tempi < 4 then
    begin

      SQLQuery1.Close;
      SQLQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        +
        dprid + ') as pFC2 ' + ' from edges where Relation ' +
        ' and dprid=' + dprid + ' and (pcode1=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''' or pcode2=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      SQLQuery1.Open;
      SQLQuery1.First;
      while not SQLQuery1.EOF do
      begin
        temps := temps.Replace(SQLQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(SQLQuery1.FieldByName('pFC2').AsString, '');
        SQLQuery1.Next;
      end;
      if temps = '' then
      begin
        ShowMessage('小于4的，可能有错了');
      end
      else
      begin
        SQLtemp.Close;
        SQLtemp.SQL.Text := 'update points set FC=' + temps[1] +
          ' where F1=' + IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
        SQLtemp.ExecSQL;
        // refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 4 then
    begin
      SQLQuery1.Close;
      SQLQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        +
        dprid + ') as pFC2 ' + ' from edges where Relation ' +
        ' and dprid=' + dprid + ' and (pcode1=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''' or pcode2=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      SQLQuery1.Open;
      SQLQuery1.First;
      while not SQLQuery1.EOF do
      begin
        temps := temps.Replace(SQLQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(SQLQuery1.FieldByName('pFC2').AsString, '');
        SQLQuery1.Next;
      end;
      if temps = '' then
      begin
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
        ShowMessage('4环肯普链树');
        // showmessage('4环肯普链树  必定1234');
        // refreshhClick(nil); // 刷新图中各点
        Tcolor4pCode[0] := SQLQuery2.FieldByName('pcode').AsString;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(IntToStr(0), Tcolor4pCode[0], 0, clOlive);
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        SQLQuery1.First;
        while not SQLQuery1.EOF do
        begin
          for colorindex := 1 to 4 do
          begin
            if SQLQuery1.FieldByName('pFC1').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode1').AsString;
            if SQLQuery1.FieldByName('pFC2').AsInteger = colorindex then
              Tcolor4pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode2').AsString;
          end;
          SQLQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // C1248C1111 备份字段用也
        SQLtemp.Close;
        SQLtemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        SQLtemp.ExecSQL;
        //refreshoneP(IntToStr(1), Tcolor4pCode[1], 0, cllime);
        //refreshoneP(IntToStr(2), Tcolor4pCode[2], 0, clFuchsia);
        //refreshoneP(IntToStr(3), Tcolor4pCode[3], 0, clyellow);
        //refreshoneP(IntToStr(4), Tcolor4pCode[4], 0, clskyblue);
        //if not ((ccclred = clAqua) or (ccclred = clHighLight) or (ccclred = clmedgray) or
        //  (ccclred = clblue) or (ccclred = clwindowFrame)) then
        refreshoneP(IntToStr(1), Tcolor4pCode[1], 0, clAqua);
        refreshoneP(IntToStr(2), Tcolor4pCode[2], 0, clHighLight);
        refreshoneP(IntToStr(3), Tcolor4pCode[3], 0, clmedgray);
        application.hint := Tcolor4pCode[4];
        refreshoneP(IntToStr(4), Tcolor4pCode[4], 0, clblue);

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
            SQLtemp.Close;
            SQLtemp.SQL.Text :=
              'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            SQLtemp.ExecSQL;
            SQLtemp.Close;
            SQLtemp.SQL.Text :=
              'update points set C=0 where  dprid=' + dprid + ' ';
            SQLtemp.ExecSQL;
            SQLtemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点
            SQLtemp.SQL.Text :=
              'update points set FC=' + IntToStr(p2) + ',C=1 where pcode=''' +
              Tcolor4pCode[p1] + ''' and dprid=' + dprid + ' ';
            SQLtemp.ExecSQL;
            // SQLtemp.Close;
            // SQLtemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // SQLtemp.ExecSQL;
            refreshoneP(IntToStr(p2), Tcolor4pCode[p1], 1000, clred);

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
              SQLQuery3.Close;
              SQLQuery3.SQL.Text :=
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
                IntToStr(curPcount) + ' and  pF12<' + IntToStr(curPcount) +
                ')' + ' and ( pFC1=' + IntToStr(p1) + ' or pFC1=' +
                IntToStr(p2) + ' or pFC2=' + IntToStr(p1) + ' or pFC2=' +
                IntToStr(p2) + ')';
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
              SQLQuery3.Open;
              SQLQuery3.First;
              while not SQLQuery3.EOF do
              begin

                if (SQLQuery3.FieldByName('pFC1').AsString =
                  SQLQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (SQLQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (SQLQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;

                    end;

                  // if 1=2 then
                  if (((SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor4pCode[1]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor4pCode[2]) or
                    (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor4pCode[3]) or (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor4pCode[4])) and
                    ((SQLQuery3.FieldByName('pcode2').AsString = Tcolor4pCode[1]) or
                    (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor4pCode[2]) or (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor4pCode[3]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor4pCode[4]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;

                  end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    SQLtemp.Close;
                    SQLtemp.SQL.Text :=
                      'update points set FC=' + (IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode1').AsString +
                      ''' and dprid=' + dprid + ' ';
                    SQLtemp.ExecSQL;
                    refreshoneP((IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // SQLQuery3.Next;
                    // continue;
                    isHaveSameColor := True;
                    break;
                  end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;

                    SQLtemp.Close;
                    SQLtemp.SQL.Text :=
                      'update points set FC=' + (IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode2').AsString +
                      ''' and dprid=' + dprid + ' ';
                    SQLtemp.ExecSQL;
                    refreshoneP((IntToStr(p1) + IntToStr(p2))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    isHaveSameColor := True;
                    break;
                  end;

                end;
                SQLQuery3.Next;
              end;
              if not isHaveSameColor then
                // if SQLQuery3.RecordCount=0 then
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
            // SQLtemp.Close;
            // SQLtemp.SQL.Text :=
            // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // SQLtemp.ExecSQL;
            SQLtemp.Close;
            // Tcolor4pCode[3] := 1; // 肯普链树中心点
            SQLtemp.SQL.Text :=
              'update points set FC=' + IntToStr(p1) + ' where pcode=''' +
              Tcolor4pCode[0] + ''' and dprid=' + dprid + ' ';
            SQLtemp.ExecSQL;
            refreshoneP(IntToStr(p1), Tcolor4pCode[0], 1000, clred);
            self.savetoLabelcaption;
            break;
          end;
        end;
        self.fromLabelcaption;
        if not isHaveSameColor then
          ShowMessage('4环肯普链树，这个已经可解了')
        else
        begin
          ShowMessage('4环肯普链树，仍然不可解');
          SQLtemp.Close;
          SQLtemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' '; // 手工调试时，将两个字段齐改才行
          SQLtemp.ExecSQL;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次
      end
      else
      begin
        SQLtemp.Close;
        SQLtemp.SQL.Text := 'update points set FC=' + temps[1] +
          ' where F1=' + IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
        SQLtemp.ExecSQL;
        // refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
    if tempi = 5 then
    begin
      SQLQuery1.Close;
      SQLQuery1.SQL.Text :=
        'select edges.*,(select p.FC  from points as p where p.pcode=edges.pcode1 and p.dprid='
        + dprid + ') as pFC1, ' +
        '  (select p.FC  from points as p where p.pcode=edges.pcode2 and  p.dprid='
        +
        dprid + ') as pFC2 ' + ' from edges where Relation ' +
        ' and dprid=' + dprid + ' and (pcode1=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''' or pcode2=''' +
        SQLQuery2.FieldByName('pcode').AsString + ''')';
      temps := '1234';
      SQLQuery1.Open;
      SQLQuery1.First;
      while not SQLQuery1.EOF do
      begin
        temps := temps.Replace(SQLQuery1.FieldByName('pFC1').AsString, '');
        temps := temps.Replace(SQLQuery1.FieldByName('pFC2').AsString, '');
        SQLQuery1.Next;
      end;
      if temps = '' then
      begin
        // 5环肯普链树   必定121234
        // showmessage('5环肯普链树   必定121234');
        ShowMessage('5环肯普链树');
        isOK := 0;

        Tcolor5pCode[0] := SQLQuery2.FieldByName('pcode').AsString;
        PPcode5ColorIndex[0] := 0;
        // refreshoneP(inttostr(0), Tcolor4pCode[0], 3000, clgreen);
        refreshoneP(IntToStr(0), Tcolor5pCode[0], 0, clOlive);
        // ('P54', 'P55', 'P18', 'P17', 'P99')
        // 终于自建了一个点线状数据测试了，可能不符合现实世界的片状地图。测试点线状地图，只为测试肯普链用，结果也不知有没解。
        SQLQuery1.First;
        colorindex := 0;
        while not SQLQuery1.EOF do
        begin
          colorindex := colorindex + 1;
          // for colorindex := 1 to 5 do
          begin
            if SQLQuery1.FieldByName('pcode1').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode1').AsString;
              PPcode5ColorIndex[colorindex] :=
                SQLQuery1.FieldByName('pFC1').AsInteger;
              // break;
            end;
            if SQLQuery1.FieldByName('pcode2').AsString <> Tcolor5pCode[0] then
            begin
              Tcolor5pCode[colorindex] :=
                SQLQuery1.FieldByName('pcode2').AsString;
              PPcode5ColorIndex[colorindex] :=
                SQLQuery1.FieldByName('pFC2').AsInteger;
              // break;
            end;
          end;
          SQLQuery1.Next;
        end; // 以上为Tcolor4pCode[i]赋值
        // 数据正常下，不是普遍无规律的  14,3,4,13,42
        isHaveSameColor := False;
        // C1248C1111 备份字段用也
        SQLtemp.Close;
        SQLtemp.SQL.Text := 'update points set C1248C1111=FC where  dprid=' +
          dprid + ' ';
        SQLtemp.ExecSQL;
        //if not ((ccclred = clAqua) or (ccclred = clHighLight) or (ccclred = clmedgray) or
        //  (ccclred = clblue) or (ccclred = clwindowFrame)) then
        refreshoneP(IntToStr(PPcode5ColorIndex[1]), Tcolor5pCode[1], 0, clAqua);
        refreshoneP(IntToStr(PPcode5ColorIndex[2]), Tcolor5pCode[2], 0, clHighLight);
        refreshoneP(IntToStr(PPcode5ColorIndex[3]), Tcolor5pCode[3], 0, clmedgray);
        refreshoneP(IntToStr(PPcode5ColorIndex[4]), Tcolor5pCode[4], 0, clblue);
        refreshoneP(IntToStr(PPcode5ColorIndex[5]), Tcolor5pCode[5], 0, clwindowFrame);
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
            SQLtemp.Close;
            SQLtemp.SQL.Text :=
              'update points set FC=1,C1248C1111=1 where  pcode=''P82'' and  dprid='
              +
              dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            SQLtemp.ExecSQL;
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          end;
          if isTest5ChainReturnOK = 0 then
            // 此P82原本为3时，多分支5环不行，如果这改成1，提示五环成功。测试用
          begin
            /// ////测试五环用
            // 这里可以update具体颜值，以测试五环用
            SQLtemp.Close;
            SQLtemp.SQL.Text :=
              'update points set FC=3,C1248C1111=3 where  pcode=''P82'' and  dprid='
              +
              dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            SQLtemp.ExecSQL;
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
          SQLtemp.Close;
          SQLtemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          SQLtemp.ExecSQL;
          SQLtemp.Close;
          SQLtemp.SQL.Text := 'update points set C=0 where  dprid=' +
            dprid + ' ';
          SQLtemp.ExecSQL;
          SQLtemp.Close;
          self.fromLabelcaptionC(clred);
          // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
          SQLtemp.SQL.Text := 'update points set FC=' +
            IntToStr(PPcode5ColorIndex[p2]) + ',C=1 where pcode=''' +
            Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
          SQLtemp.ExecSQL;
          // SQLtemp.Close;
          // SQLtemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
          // dprid + ' ';
          // SQLtemp.ExecSQL;
          refreshoneP(IntToStr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
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
            SQLQuery3.Close;
            SQLQuery3.SQL.Text :=
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
              IntToStr(curPcount) + ' and  pF12<' + IntToStr(curPcount) +
              ')' + ' and ( pFC1=' + IntToStr(PPcode5ColorIndex[p1]) +
              ' or pFC1=' + IntToStr(PPcode5ColorIndex[p2]) + ' or pFC2=' +
              IntToStr(PPcode5ColorIndex[p1]) + ' or pFC2=' +
              IntToStr(PPcode5ColorIndex[p2]) + ')';
            SQLQuery3.Open;
            SQLQuery3.First;
            while not SQLQuery3.EOF do
            begin
              if SQLQuery3.FieldByName('pcode1').AsString = 'P3' then
                if SQLQuery3.FieldByName('pcode2').AsString = 'P12' then
                  Application.ProcessMessages;

              if (SQLQuery3.FieldByName('pFC1').AsString =
                SQLQuery3.FieldByName('pFC2').AsString) then
              begin

                if (SQLQuery3.FieldByName('pC1').AsInteger > 0) then
                  if (SQLQuery3.FieldByName('pC2').AsInteger > 0) then
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                // if 1=2 then
                if (((SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode1')
                  .AsString = Tcolor5pCode[3]) or
                  (SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1').AsString =
                  Tcolor5pCode[5])) and
                  ((SQLQuery3.FieldByName('pcode2').AsString = Tcolor5pCode[1]) or
                  (SQLQuery3.FieldByName('pcode2').AsString =
                  Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode2').AsString =
                  Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode2').AsString =
                  Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                  .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                begin
                  isHaveSameColor := True;
                  break;
                end;
                if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                  if (((SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                  if (((SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  SQLtemp.Close;
                  SQLtemp.SQL.Text :=
                    'update points set FC=' +
                    (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                    ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                    SQLQuery3.FieldByName('pcode1').AsString +
                    ''' and dprid=' + dprid + ' ';
                  SQLtemp.ExecSQL;
                  refreshoneP((IntToStr(PPcode5ColorIndex[p1]) +
                    IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                    SQLQuery3.FieldByName('pcode1').AsString, 1000, clred);
                  // looktime(-1);
                  // SQLQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if SQLQuery3.FieldByName('pcode1').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
                if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                begin
                  orderStep := orderStep + 1;
                  SQLtemp.Close;
                  SQLtemp.SQL.Text :=
                    'update points set FC=' +
                    (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                    ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                    SQLQuery3.FieldByName('pcode2').AsString +
                    ''' and dprid=' + dprid + ' ';
                  SQLtemp.ExecSQL;
                  refreshoneP((IntToStr(PPcode5ColorIndex[p1]) +
                    IntToStr(PPcode5ColorIndex[p2]))
                    .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                    SQLQuery3.FieldByName('pcode2').AsString, 1000, clred);
                  // looktime(-1);
                  // OQuery3.Next;
                  // continue;
                  // isHaveSameColor := True;
                  isOK := isOK + 1;
                  if SQLQuery3.FieldByName('pcode2').AsString = 'P1' then
                    Application.ProcessMessages;
                  break;
                end;
              end;
              SQLQuery3.Next;
            end;
            if isHaveSameColor then
              // if SQLQuery3.RecordCount=0 then
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
            SQLtemp.Close;
            SQLtemp.SQL.Text :=
              'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
            // 手工调试时，将两个字段齐改才行
            SQLtemp.ExecSQL;
            SQLtemp.Close;
            SQLtemp.SQL.Text :=
              'update points set C=0 where  dprid=' + dprid + ' ';
            SQLtemp.ExecSQL;
            SQLtemp.Close;
            self.fromLabelcaptionC(clred);
            // Tcolor4pCode[3] := 1; // 肯普链树开始点     PPcode5ColorIndex[p2]
            SQLtemp.SQL.Text :=
              'update points set FC=' + IntToStr(PPcode5ColorIndex[p2]) +
              ',C=1 where pcode=''' + Tcolor5pCode[p1] + ''' and dprid=' + dprid + ' ';
            SQLtemp.ExecSQL;
            // SQLtemp.Close;
            // SQLtemp.SQL.Text := 'update points set C=1 where ((pcode=''' + Tcolor4pCode[1] + ''') or (pcode=''' + Tcolor4pCode[2] + ''') or (pcode=''' + Tcolor4pCode[3] + ''') or (pcode=''' + Tcolor4pCode[4] + ''')) and dprid=' +
            // dprid + ' ';
            // SQLtemp.ExecSQL;
            refreshoneP(IntToStr(PPcode5ColorIndex[p2]), Tcolor5pCode[p1],
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
              SQLQuery3.Close;
              SQLQuery3.SQL.Text :=
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
                IntToStr(curPcount) + ' and  pF12<' + IntToStr(curPcount) +
                ')' + ' and ( pFC1=' + IntToStr(PPcode5ColorIndex[p1]) +
                ' or pFC1=' + IntToStr(PPcode5ColorIndex[p2]) +
                ' or pFC2=' + IntToStr(PPcode5ColorIndex[p1]) +
                ' or pFC2=' + IntToStr(PPcode5ColorIndex[p2]) + ')';
              SQLQuery3.Open;
              SQLQuery3.First;
              while not SQLQuery3.EOF do
              begin
                if SQLQuery3.FieldByName('pcode1').AsString = 'P3' then
                  if SQLQuery3.FieldByName('pcode2').AsString = 'P12' then
                    Application.ProcessMessages;

                if (SQLQuery3.FieldByName('pFC1').AsString =
                  SQLQuery3.FieldByName('pFC2').AsString) then
                begin

                  if (SQLQuery3.FieldByName('pC1').AsInteger > 0) then
                    if (SQLQuery3.FieldByName('pC2').AsInteger > 0) then
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  // if 1=2 then
                  if (((SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode1').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1')
                    .AsString = Tcolor5pCode[5])) and
                    ((SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[1]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[2]) or
                    (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[3]) or (SQLQuery3.FieldByName('pcode2').AsString =
                    Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                    .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                  begin
                    isHaveSameColor := True;
                    break;
                  end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[1]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[3]) or
                      (SQLQuery3.FieldByName('pcode1').AsString =
                      Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode1')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                    if (((SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[1]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor5pCode[2]) or (SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[3]) or
                      (SQLQuery3.FieldByName('pcode2').AsString =
                      Tcolor5pCode[4]) or (SQLQuery3.FieldByName('pcode2')
                      .AsString = Tcolor5pCode[5]))) then // 是四环的边时
                    begin
                      isHaveSameColor := True;
                      break;
                    end;
                  if (SQLQuery3.FieldByName('pC1').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    SQLtemp.Close;
                    SQLtemp.SQL.Text :=
                      'update points set FC=' +
                      (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode1').AsString +
                      ''' and dprid=' + dprid + ' ';
                    SQLtemp.ExecSQL;
                    refreshoneP
                    ((IntToStr(PPcode5ColorIndex[p1]) +
                      IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode1').AsString, 1000, clred);
                    // looktime(-1);
                    // SQLQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if SQLQuery3.FieldByName('pcode1').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                  if (SQLQuery3.FieldByName('pC2').AsInteger = 0) then
                  begin
                    orderStep := orderStep + 1;
                    SQLtemp.Close;
                    SQLtemp.SQL.Text :=
                      'update points set FC=' +
                      (IntToStr(PPcode5ColorIndex[p1]) + IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, '') +
                      ',C=' + IntToStr(orderStep) + ' where pcode=''' +
                      SQLQuery3.FieldByName('pcode2').AsString +
                      ''' and dprid=' + dprid + ' ';
                    SQLtemp.ExecSQL;
                    refreshoneP
                    ((IntToStr(PPcode5ColorIndex[p1]) +
                      IntToStr(PPcode5ColorIndex[p2]))
                      .Replace(SQLQuery3.FieldByName('pFC1').AsString, ''),
                      SQLQuery3.FieldByName('pcode2').AsString, 1000, clred);
                    // looktime(-1);
                    // OQuery3.Next;
                    // continue;
                    // isHaveSameColor := True;
                    isOK := isOK + 1;
                    if SQLQuery3.FieldByName('pcode2').AsString = 'P1' then
                      Application.ProcessMessages;
                    break;
                  end;
                end;
                SQLQuery3.Next;
              end;
              if isHaveSameColor then
                // if SQLQuery3.RecordCount=0 then
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
          // SQLtemp.Close;
          // SQLtemp.SQL.Text :=
          // 'update points set FC=C1248C1111 where  dprid=' + dprid + ' ';
          // SQLtemp.ExecSQL;
          SQLtemp.Close;
          // Tcolor4pCode[3] := 1; // 肯普链树中心点
          SQLtemp.SQL.Text := 'update points set FC=' +
            IntToStr(PPcode5ColorIndex[p1]) + ' where pcode=''' +
            Tcolor5pCode[0] + ''' and dprid=' + dprid + ' ';
          SQLtemp.ExecSQL;
          refreshoneP(IntToStr(PPcode5ColorIndex[p1]), Tcolor5pCode[0],
            1000, clred);
          self.savetoLabelcaption;

        end;

        self.fromLabelcaption;
        if not isHaveSameColor then
          ShowMessage('5环肯普链树，这个已经可解了')
        else
        begin
          ShowMessage('5环肯普链树，仍然不可解');
          SQLtemp.Close;
          SQLtemp.SQL.Text := 'update points set FC=C1248C1111 where  dprid=' +
            dprid + ' ';
          // 手工调试时，将两个字段齐改才行
          SQLtemp.ExecSQL;
          break;
        end;
        // 4环肯普链树  必定1234  ,1243,1347,1324,1423,1432,每点变一次，不是仅变两次

        // 5环肯普链树   必定121234
      end
      else
      begin
        SQLtemp.Close;
        SQLtemp.SQL.Text := 'update points set FC=' + temps[1] +
          ' where F1=' + IntToStr(curPcount) + ' and dprid=' + dprid + ' ';
        SQLtemp.ExecSQL;
        // refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 1000);
        refreshoneP(temps[1], SQLQuery2.FieldByName('pcode').AsString, 0,
          clMoneyGreen);
      end;
    end;
  end;
  sqltransaction1.Commit;
  refreshClick(nil);
  groupcount;
  //ShowMessage('ok');
  //application.MessageBox('ok', 'ok', MB_OK);
  showli('ok', 'ok');
end;

procedure TMain.shiftEdgesMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
var
  s: string;
begin
  s := '先点击清空用户项目，再点击这个按钮，然后，可以在导入地图作底图后，按住shift键不放，鼠标点击来自动批量记录坐标点，可以反复多次。然后再点击这按钮，就可以自动生成批量坐标点了。';
  s := s + #10#13 +
    '双重标志开关：先点这个按钮，再按下shift键，这两个开关，然后，鼠标左键单点，可以一次记录起点，然后ctrl键，再多个点，可以多个末点，一点对多点来自动生成多条边也';
  if (Button = mbRight) then
    ShowMessage(s);
end;

procedure TMain.shiftPointsMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
var
  s: string;
begin
  s := '先点击清空用户项目，再点击这个按钮，然后，可以在导入地图作底图后，按住shift键不放，鼠标点击来自动批量记录坐标点，可以反复多次。然后再点击这按钮，就可以自动生成批量坐标点了。';
  s := s + #10#13 +
    '双重标志开关：先点这个按钮，再按下shift键，这两个开关，然后，鼠标左键单点，可以一次记录批量记录多个点击作为多个点坐标自动输入也';
  if (Button = mbRight) then
    ShowMessage(s);
end;

procedure TMain.updateMemoClick(Sender: TObject);
var
  pcode, varmemo: string;
begin
  pcode := tmenuitem(Sender).Hint;
  varmemo := memopoint.Hint;
  if inputquery(PChar(updatememo.Hint), '修改备注：', varmemo) then
  begin
    sqltemp.Close;
    sqltemp.SQL.Text := 'update points set memo=''' + varmemo +
      ''' where dprid=' + dprid + ' and pcode=''' + pcode + '''';
    sqltemp.ExecSQL;
    sqltransaction1.Commit;
  end;

end;

procedure TMain.userclickwwwClick(Sender: TObject);
begin
  userclick := False;
end;

procedure TMain.refreshClick(Sender: TObject);
var
  i: integer;
  www: tshape;
  pcode1, pcode2: string;
  pcode1Shape, pcode2Shape: Tshape;
  pcode1Pointer, pcode2Pointer: Tpoint;
  pline: TlinePoint;//PlinePoint;//TlinePoint;
  psubp: TPsubpPoint;
  ccolor: string;
  ccclred: tcolor;
  tt: integer;
begin
  //for i:=self.component.Count-1 to 0 do
  //for i:=self.ControlCount-1 to 0 do
  //begin
  //   if   self.Controls[i] is tshape then
  //   begin
  //       self.Controls[i].Free;
  //   end;

  //end;
  //if shapeList.Count > 0 then
  for i := shapeList.Count - 1 downto 0 do
  begin
    try
      if TGraphicControl(shapeList.Items[i]) is tshape then
      begin
        tshape(shapeList.Items[i]).Visible := False;
        tshape(shapeList.Items[i]).Free;
        shapeList.Items[i] := nil;
        shapeList.Count := shapeList.Count - 1;
        application.ProcessMessages;
      end;
    except
    end;
    application.ProcessMessages;
  end;
  shapeList.Clear;
  for i := lineList.Count - 1 downto 0 do
  begin
    try
      //if tobject(shapeList.Items[i]) is TlinePoint then
      if lineList.Items[i] <> nil then
      begin
        TlinePoint(lineList.Items[i]).Free;
        lineList.Items[i] := nil;
        lineList.Count := lineList.Count - 1;
        application.ProcessMessages;
      end;
    except
    end;
    application.ProcessMessages;
  end;
  lineList.Clear;
  for i := TPsubpPointList.Count - 1 downto 0 do
  begin
    try
      if (TPsubpPointList.Items[i]) <> nil then
      begin
        TPsubpPoint(TPsubpPointList.Items[i]).Free;
        TPsubpPointList.Items[i] := nil;
        TPsubpPointList.Count := TPsubpPointList.Count - 1;
        application.ProcessMessages;
      end;
    except
    end;
    application.ProcessMessages;
  end;
  TPsubpPointList.Clear;
  //SQLTransaction1.Active := True;
  //self.ScrollBox1.Canvas.Destroy;
  self.ScrollBox1.Canvas.Brush.Color := ScrollBox1.Color;
  ScrollBox1.Canvas.FillRect(ScrollBox1.Canvas.ClipRect);
  image1.Refresh;
  image1.BringToFront;
  application.ProcessMessages;
  //self.ScrollBox1.Canvas.Create;
  application.ProcessMessages;
  SQLQuery1.Close;
  SQLQuery1.SQL.Text := 'select * from points where dprid=' + dprid;
  self.SQLQuery1.Open;
  SQLQuery1.First;
  while not SQLQuery1.EOF do
  begin
    // www := tshape.Create(nil);
    www := tshape.Create(self);
    www.Parent := ScrollBox1;
    www.Width := StrToInt(edit1.Text);
    www.Height := StrToInt(edit1.Text);
    www.Shape := stCircle;
    www.Left := SQLQuery1.FieldByName('px').AsInteger;
    www.top := SQLQuery1.FieldByName('py').AsInteger;
    www.Caption := SQLQuery1.FieldByName('pname').AsString + ';' +
      SQLQuery1.FieldByName('FC').AsString;
    www.Name := SQLQuery1.FieldByName('pcode').AsString;
    www.Hint := SQLQuery1.FieldByName('pcode').AsString;
    www.ShowHint := True;
    www.OnMouseDown := self.Shape1.OnMouseDown;
    www.OnMouseMove := self.Shape1.OnMouseMove;
    www.OnMouseUp := self.Shape1.OnMouseUp;
    www.OnPaint := self.Shape1.OnPaint;  //  www.Canvas.TextOut(0,0,www.Caption);
    // www.brush.Color := clred;
    //www.canvas.TextStyle:=[Graphics.TTextStyle.EndEllipsis];
    //www.Canvas.TextRect(www.ClientRect,www.Width div 2,www.Height div 2,www.Caption,www.canvas.TextStyle);
    //www.Canvas.TextOut(0,0,www.Caption);

    //www.Canvas.TextRect(www.ClientRect,www.Width div 2,www.Height div 2,www.Caption);
    ccolor := SQLQuery1.FieldByName('FC').AsString;
    if ccolor = '0' then
      ccclred := clwhite;
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
    www.Brush.Color := ccclred;
    shapeList.Add(www);
    //www.Tag:=;
    psubp := TPsubpPoint.Create(nil);
    psubp.Pcode := SQLQuery1.FieldByName('pcode').AsString;
    TPsubpPointList.Add(psubp);
    //tt:=gettickcount64;
    //while (gettickcount64-tt)<100 do
    //application.ProcessMessages;
    SQLQuery1.Next;
  end;



  SQLQuery1.Close;
  SQLQuery1.SQL.Text := 'select * from edges where relation=1 and dprid=' + dprid;
  self.SQLQuery1.Open;
  SQLQuery1.First;
  ScrollBox1.Canvas.pen.color := clgrayText;
  ScrollBox1.Canvas.pen.Width := 2;
  while not SQLQuery1.EOF do
  begin
    ///pline    //init???memory???
    pline := TlinePoint.Create(nil);
    pcode1 := SQLQuery1.FieldByName('pcode1').AsString;
    pcode2 := SQLQuery1.FieldByName('pcode2').AsString;
    pcode1Shape := getpcode(pcode1);
    pcode2Shape := getpcode(pcode2);
    pcode1Pointer.x := pcode1Shape.Left + (pcode1Shape.Width div 2);
    pcode1Pointer.y := pcode1Shape.top + (pcode1Shape.Height div 2);
    pcode2Pointer.x := pcode2Shape.Left + (pcode2Shape.Width div 2);
    pcode2Pointer.y := pcode2Shape.top + (pcode2Shape.Height div 2);
    //self.Image1.Canvas.Line(pcode1Pointer,pcode2Pointer);

    self.ScrollBox1.Canvas.Line(pcode1Pointer, pcode2Pointer);  //ok


    //pline^.beginPcode := pcode1;
    //pline^.endPcode := pcode2;
    //pline^.direction := 'from1to2';
    //pline^.beginPoint := pcode1Pointer;
    //pline^.endPoint := pcode2Pointer;
    //linelist.Add(pline);
    pline.beginPcode := pcode1;
    pline.endPcode := pcode2;
    pline.direction := 'from1to2';
    pline.beginPoint := pcode1Pointer;
    pline.endPoint := pcode2Pointer;
    linelist.Add(pline);
    //linelist.Add(^pline);
    //shapeList.Add(www);
    //www.Tag:=;

    for i := TPsubpPointList.Count - 1 downto 0 do
    begin
      try
        if (TPsubpPointList.Items[i]) <> nil then
        begin
          if TPsubpPoint(TPsubpPointList.Items[i]).Pcode = pcode1 then
          begin
            if TPsubpPoint(TPsubpPointList.Items[i]).subPcode.IndexOf(pcode2) = -1 then
              TPsubpPoint(TPsubpPointList.Items[i]).subPcode.add(pcode2);
          end;
          if TPsubpPoint(TPsubpPointList.Items[i]).Pcode = pcode2 then
          begin
            if TPsubpPoint(TPsubpPointList.Items[i]).subPcode.IndexOf(pcode1) = -1 then
              TPsubpPoint(TPsubpPointList.Items[i]).subPcode.add(pcode1);
          end;
        end;
      except
      end;
      application.ProcessMessages;
    end;
    SQLQuery1.Next;
  end;
  ScrollBox1.Canvas.pen.color := clblack;
  ScrollBox1.Canvas.pen.Width := 1;
  SQLQuery1.Close;
  for i := shapeList.Count - 1 downto 0 do
    if shapeList.Items[i] <> nil then
      if TGraphicControl(shapeList.Items[i]) is tshape then
      begin
        tshape(shapeList.Items[i]).BringToFront;
        tshape(shapeList.Items[i]).OnPaint(tshape(shapeList.Items[i]));
        //refreshoneP('1',tshape(shapeList.Items[i]).name,0,clMoneyGreen);
        // Application.ProcessMessages;
      end;
  // refreshoneP();
  //   refreshoneP(sqltemp.FieldByName('fc').AsString, sqltemp.FieldByName('pcode')
  //  .AsString, 0, clMoneyGreen);
end;

procedure TMain.emptyfreeClick(Sender: TObject);
begin
  if not RadioButton2.Checked then
  begin
    ShowMessage('请先选择用户项目，而不是演示项目');
    exit;
  end;
  if Application.MessageBox('是否清空用户项目数据？',
    '是否继续？', MB_YESNO) <> idYes then
    exit;
  SQLTransaction1.Active := True;
  SQLQuery1.Close;
  SQLQuery1.SQL.Text := 'delete  from points where dprid=' + dprid;
  SQLQuery1.ExecSQL;//SQLTransaction1.Commit;
  SQLQuery1.Close;
  SQLQuery1.SQL.Text := 'delete  from edges where dprid=' + dprid + '';
  SQLQuery1.ExecSQL;//SQLTransaction1.Commit;
  // SQLQuery1.ApplyUpdates();
  SQLTransaction1.Commit;
  SQLTransaction1.Active := True;
  FFF := '';
  self.Tag := 0;
  //refreshhClick(nil);
  ShowMessage('已清空用户项目数据！');
end;

procedure TMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  AllPath.Free;
  tempList.Free;
  PPP.Free;
  shiftPointsL.Free;
  shiftEdgesL.Free;
  LabelsCaptions.Free;
end;

{ TPsubpPoint }

constructor TPsubpPoint.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  subPcode := TStringList.Create;
end;

destructor TPsubpPoint.Destroy;
var
  i: integer;
begin
  subPcode.Free;
  subPcode := nil;
  inherited Destroy;

end;

end.
