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
        public ICommand ShowSomeThing { get; set; }

        private string ngayBatDau;
        private string ngayKetThuc;

        public string NgayBatDau { get => ngayBatDau; set { ngayBatDau = value; OnPropertyChanged(); } }
        public string NgayKetThuc { get => ngayKetThuc; set { ngayKetThuc = value; OnPropertyChanged(); } }

        public QuanLy_ThongKeViewModel()
        {
            UpdateNgayBatDauCommand = new RelayCommand<DatePicker>((p) => { return p == null ? false : true; }, (p) => NgayBatDau=p.Text);
            UpdateNgayKetThucCommand = new RelayCommand<DatePicker>((p) => { return p == null ? false : true; }, (p) => NgayKetThuc=p.Text);
            ShowSomeThing = new RelayCommand<object>((p) => { return  true; }, (p) => MessageBox.Show($"{NgayBatDau} - {ngayKetThuc}"));

        }

    }
}
