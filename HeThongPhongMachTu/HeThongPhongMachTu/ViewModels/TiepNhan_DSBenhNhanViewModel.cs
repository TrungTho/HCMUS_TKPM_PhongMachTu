using DevExpress.Mvvm;
using DevExpress.Mvvm.POCO;
using DevExpress.Xpf.WindowsUI;
using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace HeThongPhongMachTu.ViewModels
{
    public class TiepNhan_DSBenhNhanViewModel:BaseViewModel
    {
        public ICommand DisableEditButtonCommand { get; set; }
        public ICommand EnableEditButtonCommand { get; set; }
        public ICommand UpdateSelectedBenhNhan{ get; set; }

        private ObservableCollection<BenhNhan> _listbenhNhans;

        public ObservableCollection<BenhNhan> ListbenhNhans { get => _listbenhNhans; set { _listbenhNhans = value; OnPropertyChanged(); } }

        public static BenhNhan _selectedBenhNhan;

        public TiepNhan_DSBenhNhanViewModel()
        {
            //itemsource for listview
            ListbenhNhans = new ObservableCollection<BenhNhan>();
            _selectedBenhNhan = new BenhNhan();

            //select all record in benhnhan
            var queries = DataProvider.Instance.DB.BenhNhans.ToList();

            //modify some attribute to show in listview
            int stt = 0;
            foreach (var query in queries)
            {
                stt++;
                BenhNhan benhNhan = new BenhNhan();
                benhNhan = query;
                benhNhan.STT = stt;
                benhNhan.SEX = query.GioiTinh == true ? "Nam" : "Nữ";
                benhNhan.Tuoi = (DateTime.Now.Year - query.NgaySinh.Year).ToString();
                ListbenhNhans.Add(benhNhan);
            }

            //disable button PhieuKhamMoi before any listview item is selected
            DisableEditButtonCommand = new RelayCommand<NavigationButton>((p) => { return p == null ? false : true; }, (p) => p.IsEnabled=false);
            //enable button PhieuKhamMoi after any listview item is selected
            EnableEditButtonCommand = new RelayCommand<NavigationButton>((p) => { return p == null ? false : true; }, (p) => p.IsEnabled=true);
            //update listview selected item to sending if user want to choose
            UpdateSelectedBenhNhan = new RelayCommand<ListView>((p) => { return p == null ? false : true; }, (p) => _selectedBenhNhan=p.SelectedItem as BenhNhan);
        }

    }
}
