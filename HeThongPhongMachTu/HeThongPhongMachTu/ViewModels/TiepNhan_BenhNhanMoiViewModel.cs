using DevExpress.Mvvm;
using DevExpress.Mvvm.POCO;
using HeThongPhongMachTu.Models;
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
    public class TiepNhan_BenhNhanMoiViewModel:BaseViewModel
    {
        private BenhNhan tmpBenhNhan;

        public ICommand SaveCommand { get; set; }
        public BenhNhan TmpBenhNhan { get => tmpBenhNhan; set { tmpBenhNhan = value; OnPropertyChanged(); } }
        private INavigationService NavigationService { get { return this.GetService<INavigationService>(); } }

        public TiepNhan_BenhNhanMoiViewModel()
        {
            TmpBenhNhan = new BenhNhan();
            TmpBenhNhan.MaBN = DateTime.UtcNow.Date.ToString("d");

            int idSTT = DataProvider.Instance.DB.DanhSachKhams.ToList().Count() + 1;

            TmpBenhNhan.MaBN = "BN" + TmpBenhNhan.MaBN +idSTT.ToString();
            SaveCommand = new RelayCommand<ComboBox>((p) => { return p == null ? false : true; }, (p) => SaveData(p));
        }

        void SaveData(ComboBox p)
        {
           try
            {
                if (p.Text == "Nam")
                    TmpBenhNhan.GioiTinh = true;
                else
                    TmpBenhNhan.GioiTinh = false;

                SoKhamBenh soKhamBenh = new SoKhamBenh();
                soKhamBenh.MaBN = TmpBenhNhan.MaBN;
                soKhamBenh.NgayLap= DateTime.UtcNow.Date;

                //add data to table BenhNhan
                DataProvider.Instance.DB.BenhNhans.Add(TmpBenhNhan);
                DataProvider.Instance.DB.SaveChanges();

                //add data to table SoKhamBenh
                DataProvider.Instance.DB.SoKhamBenhs.Add(soKhamBenh);
                DataProvider.Instance.DB.SaveChanges();



                //Th

                MessageBox.Show($"Đã thêm mới bệnh nhân:\n {TmpBenhNhan.MaBN} - {TmpBenhNhan.HoTen}", "Notification", MessageBoxButton.OK, MessageBoxImage.Information);

            }
            catch (Exception e)
            {
                MessageBox.Show("Thông tin đã nhập không chính xác, vui lòng kiểm tra lại", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

    }
}
