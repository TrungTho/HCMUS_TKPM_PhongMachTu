using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace HeThongPhongMachTu.ViewModels
{
    public class ThanhToan_ChiTietHDViewModel:BaseViewModel
    {
        private ObservableCollection<ChiDinhDungThuoc> _listChiDinhThuoc;
        public ObservableCollection<ChiDinhDungThuoc> ListChiDinhThuoc { get => _listChiDinhThuoc; set { _listChiDinhThuoc = value; OnPropertyChanged(); } }

        private BenhNhan _tmpBN;
        public BenhNhan TmpBN { get => _tmpBN; set { _tmpBN = value; OnPropertyChanged(); } }

        private HoaDon _tmpHD;
        public HoaDon TmpHD { get => _tmpHD; set { _tmpHD = value; OnPropertyChanged(); } }

        private PhieuKham _tmpPhieuKham;
        public PhieuKham TmpPhieuKham { get => _tmpPhieuKham; set { _tmpPhieuKham = value; OnPropertyChanged(); } }

        public ICommand LoadDataCommand { get; set; }
        public ICommand UpdateDataToDBCommand { get; set; }

        public ThanhToan_ChiTietHDViewModel()
        {
            LoadDataCommand = new RelayCommand<object>((p) => { return true; }, (p) => LoadData());
            UpdateDataToDBCommand = new RelayCommand<object>((p) => { return true; }, (p) => UpdateDataToDB());

            ListChiDinhThuoc = new ObservableCollection<ChiDinhDungThuoc>();
        }

        private void LoadData()
        {
            //pass data from last listview to variable TmpHD and link to its relationship table
            TmpHD = ThanhToan_ChoThanhToanViewModel._selectedHoaDon;
            TmpBN = DataProvider.Instance.DB.BenhNhans.Where(x => x.MaBN == TmpHD.MaBN).First() as BenhNhan;
            TmpPhieuKham = DataProvider.Instance.DB.PhieuKhams.Where(x => x.MaPK == "PK" + TmpHD.MaHD.Substring(2)).First() as PhieuKham;

            var queries = DataProvider.Instance.DB.ChiDinhDungThuocs.Where(x => x.MaPK == TmpPhieuKham.MaPK);
            foreach (var chidinh in queries)
            {
                var tmpChiDinh = new ChiDinhDungThuoc();
                tmpChiDinh = chidinh;

                ListChiDinhThuoc.Add(tmpChiDinh);
            }


        }

        private void UpdateDataToDB()
        {
            TmpHD.TrangThaiThanhToan = true;
            DataProvider.Instance.DB.HoaDons.AddOrUpdate(TmpHD);
            DataProvider.Instance.DB.SaveChanges();
        }

    }
}
