unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Grids, DBGrids;

type
  TForm12 = class(TForm)
    lbl1: TLabel;
    lbl10: TLabel;
    btn1: TButton;
    cbb1: TComboBox;
    dbgrd1: TDBGrid;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm12.posisiawal;
begin
  bersih;
end;

procedure TForm12.bersih;
begin
  cbb1.Text:='';
end;

procedure TForm12.btn1Click(Sender: TObject);
begin
  if cbb1.Text = 'hubungan' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT hubungan.id, siswa.nama_siswa, ortu.nama');
    zqry1.SQL.Add('FROM hubungan');
    zqry1.SQL.Add('INNER JOIN siswa ON hubungan.siswa_id = siswa.id');
    zqry1.SQL.Add('INNER JOIN ortu ON hubungan.ortu_id = ortu.id');
    zqry1.Open;
  end else
  if cbb1.Text = 'catatan' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT catatan.id, siswa.nama_siswa, ortu.nama, wali.nama, poin.nama');
    zqry1.SQL.Add('FROM catatan');
    zqry1.SQL.Add('INNER JOIN siswa ON catatan.siswa_id = siswa.id');
    zqry1.SQL.Add('INNER JOIN poin ON catatan.poin_id = poin.id');
    zqry1.SQL.Add('INNER JOIN wali ON catatan.wali_id = wali.id');
    zqry1.SQL.Add('INNER JOIN ortu ON catatan.ortu_id = ortu.id');
    zqry1.Open;
  end;
end;


end.
