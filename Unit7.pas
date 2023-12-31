unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, Grids, DBGrids,
  frxClass, frxDBSet;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl10: TLabel;
    lbl2: TLabel;
    lbl11: TLabel;
    lbl9: TLabel;
    lbl18: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    cbb1: TComboBox;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    lbl8: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    edt5: TEdit;
    dtp1: TDateTimePicker;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id:string;

implementation

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= false;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  cbb1.Enabled:= True;
  dtp1.Enabled:= True;
end;

procedure TForm7.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  dtp1.Date:=Now;
  cbb1.Text:='';
end;

procedure TForm7.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;                     
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  cbb1.Enabled:= False;
  dtp1.Enabled:= False;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
  if edt1.Text ='' then
  begin
  ShowMessage('SISWA ID TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text ='' then
  begin
  ShowMessage('POIN ID TIDAK BOLEH KOSONG!');
  end else
  if edt3.Text ='' then
  begin
  ShowMessage('WALI ID TIDAK BOLEH KOSONG!');
  end else
  if edt4.Text ='' then
  begin
  ShowMessage('ORANG TUA ID TIDAK BOLEH KOSONG!');
  end else
  if dtp1.Date =Now then
  begin
  ShowMessage('TANGGAL TIDAK BOLEH KOSONG!');
  end else
  if edt5.Text ='' then
  begin
  ShowMessage('SEMESTER TIDAK BOLEH KOSONG!');
  end else
  if cbb1.Text ='' then
  begin
  ShowMessage('STATUS TIDAK BOLEH KOSONG!');
  end else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into catatan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edt5.Text+'","'+cbb1.Text+'")');
    zqry1.ExecSQL ;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from catatan');
    zqry1.Open;
    ShowMessage('DATA BARHASIL DISIMPAN!');
    posisiawal;
  end;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or(edt5.Text= '')or (cbb1.Text ='')or (dtp1.Date =Now) then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString) and (edt3.Text = zqry1.Fields[3].AsString) and (edt4.Text = zqry1.Fields[4].AsString) and (edt5.Text = zqry1.Fields[5].AsString) and (dtp1.Date = zqry1.Fields[6].AsDateTime) and (cbb1.Text = zqry1.Fields[7].AsString) then
  begin
   ShowMessage('DATA TIDAK ADA PERUBAHAN');
   posisiawal;
  end else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE');
    zqry1.SQL.Clear;
    zqry1.SQL.Add('UPDATE catatan SET siswa_id="'+edt1.Text+'",poin_id="'+edt2.Text+'",wali_id="'+edt3.Text+'",ortu_id="'+edt4.Text+'",tanggal="'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'",semester="'+edt5.Text+'",status="'+cbb1.Text+'" where id="'+id+'"');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from catatan');
    zqry1.Open;
    posisiawal;
    end;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add(' delete from catatan where id="'+id+'"');
    zqry1. ExecSQL;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from catatan');
    zqry1.Open;
    ShowMessage('DATA BERHASIL DIHAPUS');
    posisiawal;
  end else
  begin
     ShowMessage('DATA BATAL DIHAPUS');
     posisiawal;
  end;
end;

procedure TForm7.btn5Click(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:= zqry1.Fields[1].AsString;
  edt2.Text:= zqry1.Fields[2].AsString;
  edt3.Text:= zqry1.Fields[3].AsString;
  edt4.Text:= zqry1.Fields[4].AsString;
  edt5.Text:= zqry1.Fields[6].AsString;
  dtp1.Date:= zqry1.Fields[5].AsDateTime;
  cbb1.Text:= zqry1.Fields[7].AsString;


  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  cbb1.Enabled:= True;
  dtp1.Enabled:= True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  posisiawal;
end;

end.
