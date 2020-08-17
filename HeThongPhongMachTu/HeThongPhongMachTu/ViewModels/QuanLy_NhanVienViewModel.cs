using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HeThongPhongMachTu.ViewModels
{
    public class QuanLy_NhanVienViewModel:BaseViewModel
    {
        private ObservableCollection<NhanVien> _listNhanVien;

        public ObservableCollection<NhanVien> ListNhanVien { get => _listNhanVien; set { _listNhanVien = value; OnPropertyChanged(); } }

        public QuanLy_NhanVienViewModel()
        {
            //itemsource for listview
            ListNhanVien = new ObservableCollection<NhanVien>();

            //select all record in benhnhan
            var queries = DataProvider.Instance.DB.NhanViens.ToList();

            //modify some attribute to show in listview
            int stt = 0;
            foreach (var query in queries)
            {
                stt++;
                NhanVien nhanVien = new NhanVien();
                nhanVien = query;
                nhanVien.STT = stt;
                nhanVien.SEX = query.GioiTinh == true ? "Nam" : "Nữ";
                nhanVien.Tuoi = (DateTime.Now.Year - query.NgaySinh.Year).ToString();
                ListNhanVien.Add(nhanVien);
            }


        }
    }
}
