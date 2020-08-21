using DevExpress.Xpf.WindowsUI;
using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;

namespace HeThongPhongMachTu.ViewModels
{
    public class NhaThuoc_ChoNhanThuocViewModel:BaseViewModel
    {
        private ObservableCollection<HoaDon> _listHoaDon;

        public ObservableCollection<HoaDon> ListHoaDon { get => _listHoaDon; set { _listHoaDon = value; OnPropertyChanged(); } }

        public static HoaDon _selectedHoaDon;

        public ICommand DisableCTHDButtonCommand { get; set; }
        public ICommand EnableCTHDButtonCommand { get; set; }
        public ICommand UpdateSelectedBenhNhan { get; set; }

        public NhaThuoc_ChoNhanThuocViewModel()
        {
            //disable button ChiTietHoaDon before any listview item is selected
            DisableCTHDButtonCommand = new RelayCommand<NavigationButton>((p) => { return p == null ? false : true; }, (p) => LoadListHD(p));
            //enable button ChiTietHoaDon after any listview item is selected
            EnableCTHDButtonCommand = new RelayCommand<NavigationButton>((p) => { return p == null ? false : true; }, (p) => p.IsEnabled = true);
            //update listview selected item to sending if user want to choose
            UpdateSelectedBenhNhan = new RelayCommand<ListView>((p) => { return p == null ? false : true; }, (p) => _selectedHoaDon = p.SelectedItem as HoaDon);



            
        }

        private void LoadListHD(NavigationButton p)
        {
            p.IsEnabled = false;

            //itemsource for listview
            ListHoaDon = new ObservableCollection<HoaDon>();

            //select all record in benhnhan
            var queries = DataProvider.Instance.DB.HoaDons.ToList();

            //modify some attribute to show in listview
            int stt = 0;
            foreach (var query in queries)
            {
                if (query.TrangThaiThanhToan == true && query.TrangThaiGiaoThuoc == false)
                {
                    stt++;
                    HoaDon hoaDon = new HoaDon();
                    hoaDon = query;
                    hoaDon.STT = stt;
                    hoaDon.TTThanhToan = query.TrangThaiThanhToan == true ? "Đã thanh toán" : "Chưa thanh toán";
                    hoaDon.TTGiaoThuoc = query.TrangThaiGiaoThuoc == true ? "Đã giao thuốc" : "Chưa giao thuốc";

                    var queries_1 = DataProvider.Instance.DB.BenhNhans.ToList();
                    foreach (var query_1 in queries_1)
                    {
                        if (query_1.MaBN == hoaDon.MaBN)
                            hoaDon.HoTenBN = query_1.HoTen;
                    }
                    ListHoaDon.Add(hoaDon);
                }
            }
        }
    }
}
