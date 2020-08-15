using System;
using DevExpress.Mvvm;
using System.Windows;

namespace HeThongPhongMachTu.ViewModels
{
    public class MainViewModel : BaseViewModel
    {
        public MainViewModel()
        {
            var screen = new DangNhap();
            screen.ShowDialog();
        }
    }
}