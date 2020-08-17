using System;
using System.Collections.Generic;
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

        void ShowDataToListView()
        {
            MessageBox.Show($"{NgayBatDau} - {ngayKetThuc}");
        }

    }
}
