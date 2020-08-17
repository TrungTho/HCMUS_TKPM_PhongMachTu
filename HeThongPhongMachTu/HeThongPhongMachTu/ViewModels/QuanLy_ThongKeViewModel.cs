using DevExpress.Xpf.Editors.Helpers;
using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace HeThongPhongMachTu.ViewModels
{
    public class QuanLy_ThongKeViewModel:BaseViewModel
    {
        public ICommand UpdateNgayBatDauCommand { get; set; }
        public ICommand UpdateNgayKetThucCommand { get; set; }

        private string ngayBatDau;
        private string ngayKetThuc;

        public string NgayBatDau { get => ngayBatDau; set { ngayBatDau = value; OnPropertyChanged(); } }
        public string NgayKetThuc { get => ngayKetThuc; set { ngayKetThuc = value; OnPropertyChanged(); } }

        public QuanLy_ThongKeViewModel()
        {
            UpdateNgayBatDauCommand = new RelayCommand<DatePicker>((p) => { return p == null ? false : true; }, (p) => updateNgayBatDau(p));
            UpdateNgayKetThucCommand = new RelayCommand<DatePicker>((p) => { return p == null ? false : true; }, (p) => updateNgayKetThuc(p));
        }

        void updateNgayBatDau( DatePicker p)
        {
            NgayBatDau = p.Text;
            if (NgayKetThuc != "" && NgayKetThuc!=null)
                ShowDataToListView();
        }

        void updateNgayKetThuc (DatePicker p)
        {
            NgayKetThuc = p.Text;
            if (NgayBatDau != "" && NgayBatDau!=null)
                ShowDataToListView();
        }

        private ObservableCollection<CT_ThongKe> _listThongKe;

        public ObservableCollection<CT_ThongKe> ListThongKe { get => _listThongKe; set { _listThongKe = value; OnPropertyChanged(); } }
        void ShowDataToListView()
        {
            //itemsource for listview
            ListThongKe = new ObservableCollection<CT_ThongKe>();

            CT_ThongKe thongke= new CT_ThongKe();
            int TongThu = 0;
            int TongChi = 0;
            int SoLuotKham = 0;
            int SoThuocNhap = 0;

            var queries_1 = DataProvider.Instance.DB.PhieuThuChis.ToList();

            foreach (var query in queries_1)
            {
                if (query.NgayLap >= NgayBatDau.TryConvertToDateTime() && query.NgayLap <= NgayKetThuc.TryConvertToDateTime())
                {
                    if (query.LoaiPhieu == 1)
                        TongThu += query.GiaTri;
                    else
                        TongChi += query.GiaTri;
                }    
            }

            var queries_2 = DataProvider.Instance.DB.PhieuKhams.ToList();
            
            foreach (var query in queries_2)
            {
                if (query.NgayLap >= NgayBatDau.TryConvertToDateTime() && query.NgayLap <= NgayKetThuc.TryConvertToDateTime())
                    SoLuotKham++;
            }

            var queries_3 = DataProvider.Instance.DB.PhieuNhapThuocs.ToList();

            foreach (var query in queries_3)
            {
                if (query.NgayNhap >= NgayBatDau.TryConvertToDateTime() && query.NgayNhap <= NgayKetThuc.TryConvertToDateTime())
                    SoThuocNhap++;
            }

            thongke.TongThu = TongThu;
            thongke.TongChi = TongChi;
            thongke.LuotKham = SoLuotKham;
            thongke.SLThuocNhap = SoThuocNhap;

            ListThongKe.Add(thongke);
        }

    }
}
