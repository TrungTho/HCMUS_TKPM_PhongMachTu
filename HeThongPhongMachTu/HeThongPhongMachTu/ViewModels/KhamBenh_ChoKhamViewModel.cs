using DevExpress.Xpf.WindowsUI;
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
    public class KhamBenh_ChoKhamViewModel : BaseViewModel
    {
        private ObservableCollection<BenhNhan> _listbenhNhans;

        public ObservableCollection<BenhNhan> ListbenhNhans { get => _listbenhNhans; set { _listbenhNhans = value; OnPropertyChanged(); } }

        public static BenhNhan _selectedBenhNhan;

        public ICommand DisablePKMoiButtonCommand { get; set; }
        public ICommand EnablePKMoiButtonCommand { get; set; }
        public ICommand UpdateSelectedBenhNhan { get; set; }

        public KhamBenh_ChoKhamViewModel()
        {
            //disable button PhieuKhamMoi before any listview item is selected
            DisablePKMoiButtonCommand = new RelayCommand<NavigationButton>((p) => { return p == null ? false : true; }, (p) => p.IsEnabled = false);
            //enable button PhieuKhamMoi after any listview item is selected
            EnablePKMoiButtonCommand = new RelayCommand<NavigationButton>((p) => { return p == null ? false : true; }, (p) => p.IsEnabled = true);
            //update listview selected item to sending if user want to choose
            UpdateSelectedBenhNhan = new RelayCommand<ListView>((p) => { return p == null ? false : true; }, (p) => _selectedBenhNhan = p.SelectedItem as BenhNhan);



            //itemsource for listview
            ListbenhNhans = new ObservableCollection<BenhNhan>();

            //select all record in benhnhan
            var queries = DataProvider.Instance.DB.DanhSachKhams.ToList();

            //modify some attribute to show in listview
            int stt = 0;
            string MaDSK = "";
            foreach (var query in queries)
            {
                if (query.NgayThang == DateTime.Now.Date)
                    MaDSK = query.MaDS.ToString();
            }

            var queries_2 = DataProvider.Instance.DB.CT_DanhSachKham.ToList();

            var queries_3 = DataProvider.Instance.DB.BenhNhans.ToList();

            foreach (var query2 in queries_2)
            {
                if (query2.MaDS.ToString() == MaDSK && query2.TrangThai == true) 
                {
                    foreach (var query3 in queries_3)
                        if (query2.MaBN == query3.MaBN)
                        {
                            stt++;
                            BenhNhan benhNhan = new BenhNhan();
                            benhNhan = query3;
                            benhNhan.STT = stt;
                            benhNhan.SEX = query3.GioiTinh == true ? "Nam" : "Nữ";

                            ListbenhNhans.Add(benhNhan);
                        }
                }

            }
            
        }
    }
}