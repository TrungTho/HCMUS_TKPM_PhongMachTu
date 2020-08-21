using DevExpress.Internal.WinApi.Windows.UI.Notifications;
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
    public class TiepNhan_BenhNhanMoiViewModel:BaseViewModel
    {
        private BenhNhan tmpBenhNhan;

        public ICommand SaveCommand { get; set; }
        public BenhNhan TmpBenhNhan { get => tmpBenhNhan; set { tmpBenhNhan = value; OnPropertyChanged(); } }
        private INavigationService NavigationService { get { return this.GetService<INavigationService>(); } }

        public TiepNhan_BenhNhanMoiViewModel()
        {
            TmpBenhNhan = new BenhNhan();
            

            TmpBenhNhan.MaBN = generateMaBN();
            SaveCommand = new RelayCommand<ComboBox>((p) => { return p == null ? false : true; }, (p) => SaveData(p));
        }

        string generateMaBN()
        {
            //get Today and format it
            string tmpDate = DateTime.UtcNow.Date.ToString("dd/MM/yyyy");
            tmpDate = tmpDate.Substring(0, 2) + tmpDate.Substring(3, 2) + tmpDate.Substring(6);

            //get stt in ct_dsk
            int idSTT = DataProvider.Instance.DB.CT_DanhSachKham.ToList().Count() + 11;

            //combine them to new id of BenhNhan
            tmpDate = "BN" + tmpDate + idSTT.ToString();

            return tmpDate;
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

                
                //add DanhSachKham if not exist
                int count = 0;
                var queries = DataProvider.Instance.DB.DanhSachKhams.ToList();

                foreach (var query in queries)
                {
                    if (query.NgayThang == DateTime.Now.Date)
                        count++;
                }

                if (count == 0)
                {
                    DanhSachKham danhSachKham = new DanhSachKham();
                    danhSachKham.NgayThang = DateTime.Now.Date;
                    danhSachKham.SoLuong = 0;

                    DataProvider.Instance.DB.DanhSachKhams.Add(danhSachKham);
                    DataProvider.Instance.DB.SaveChanges();
                }

                var queries_1 = DataProvider.Instance.DB.DanhSachKhams.ToList();

                // add CT_DanhSachKham
                foreach (var query in queries_1)
                {
                    if (query.NgayThang == DateTime.Now.Date)
                    {
                        DanhSachKham danhSachKham_1 = new DanhSachKham();
                        danhSachKham_1.MaDS = query.MaDS;
                        danhSachKham_1.NgayThang = DateTime.Now.Date;
                        danhSachKham_1.SoLuong = query.SoLuong + 1;

                        DataProvider.Instance.DB.DanhSachKhams.AddOrUpdate(danhSachKham_1);
                        DataProvider.Instance.DB.SaveChanges();

                        CT_DanhSachKham cT_DanhSachKham = new CT_DanhSachKham();
                        cT_DanhSachKham.STT = DataProvider.Instance.DB.CT_DanhSachKham.ToList().Count() + 11;
                        cT_DanhSachKham.MaDS = query.MaDS;
                        cT_DanhSachKham.MaBN = TmpBenhNhan.MaBN;
                        cT_DanhSachKham.ThoiGian = DateTime.Now;
                        cT_DanhSachKham.MaNV = "admin";
                        cT_DanhSachKham.TrangThai = true;

                        DataProvider.Instance.DB.CT_DanhSachKham.Add(cT_DanhSachKham);
                        DataProvider.Instance.DB.SaveChanges();
                    }    
                }
                MessageBox.Show($"Đã thêm mới bệnh nhân:\n {TmpBenhNhan.MaBN} - {TmpBenhNhan.HoTen}", "Notification", MessageBoxButton.OK, MessageBoxImage.Information);

                TmpBenhNhan.MaBN = generateMaBN();
            }
            catch (Exception e)
            {
                MessageBox.Show("Thông tin đã nhập không chính xác, vui lòng kiểm tra lại", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

    }
}
