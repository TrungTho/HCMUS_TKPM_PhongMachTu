using DevExpress.Mvvm;
using DevExpress.Mvvm.POCO;
using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace HeThongPhongMachTu.ViewModels
{
    public class TiepNhan_BenhNhanCuViewModel:BaseViewModel
    {
        private BenhNhan tmpBenhNhan;

        public ICommand UpdateCommand { get; set; }
        public ICommand LoadDataToViewCommand { get; set; }

        public BenhNhan TmpBenhNhan { get => tmpBenhNhan; set { tmpBenhNhan = value; OnPropertyChanged(); } }
        private INavigationService NavigationService { get { return this.GetService<INavigationService>(); } }

        public TiepNhan_BenhNhanCuViewModel()
        {
            TmpBenhNhan = new BenhNhan();

            //load benh nhan duoc cho vao TmpBenhNhan
            //TmpBenhNhan = TiepNhan_DSBenhNhanViewModel._selectedBenhNhan;

            UpdateCommand = new RelayCommand<ComboBox>((p) => { return p == null ? false : true; }, (p) => UpdateData(p));
            LoadDataToViewCommand = new RelayCommand<object>((p) => { return true; }, (p) => LoadDataToView());
        }

        void LoadDataToView()
        {
            TmpBenhNhan = TiepNhan_DSBenhNhanViewModel._selectedBenhNhan;

        }

        void UpdateData(ComboBox p)
        {
            try
            {
                if (p.Text == "Nam")
                    TmpBenhNhan.GioiTinh = true;
                else
                    TmpBenhNhan.GioiTinh = false;

                //add data to table BenhNhan
                DataProvider.Instance.DB.BenhNhans.AddOrUpdate(TmpBenhNhan);
                DataProvider.Instance.DB.SaveChanges();
            }
            catch (Exception e)
            {
                MessageBox.Show("Thông tin đã nhập không chính xác, vui lòng kiểm tra lại", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
