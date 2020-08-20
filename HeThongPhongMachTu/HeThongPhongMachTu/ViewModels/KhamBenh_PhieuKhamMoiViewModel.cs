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
    public class KhamBenh_PhieuKhamMoiViewModel:BaseViewModel
    {
        private ObservableCollection<ChiDinhDungThuoc> _listChiDinhThuoc;
        public ObservableCollection<ChiDinhDungThuoc> ListChiDinhThuoc { get => _listChiDinhThuoc; set { _listChiDinhThuoc = value; OnPropertyChanged(); } }
        private ChiDinhDungThuoc _tmpChiDinh;
        public ChiDinhDungThuoc TmpChiDinh { get => _tmpChiDinh; set { _tmpChiDinh = value; OnPropertyChanged(); } }
        private BenhNhan _tmpBN;
        public BenhNhan TmpBN { get => _tmpBN; set { _tmpBN = value; OnPropertyChanged(); } }
        private PhieuKham _tmpPhieuKham;
        public PhieuKham TmpPhieuKham { get => _tmpPhieuKham; set => _tmpPhieuKham = value; }

        public ICommand LoadDataOfBenhNhanCommand { get; set; }
        public ICommand InsertToListViewCommand { get; set; }

        public KhamBenh_PhieuKhamMoiViewModel()
        {
            //load data of benhnhan to profile controls
            LoadDataOfBenhNhanCommand = new RelayCommand<object>((p) => { return true; }, (p) => LoadDataOfBenhNhan());
            InsertToListViewCommand = new RelayCommand<object>((p) => { return true; }, (p) => InsertToListView());
            ListChiDinhThuoc = new ObservableCollection<ChiDinhDungThuoc>();
            TmpPhieuKham = new PhieuKham();


            //init PhieuKham & ChiDinhDungThuoc
            //count all same day PhieuKham
            int sttPhieuKhamMoi = 0;
            var queries = DataProvider.Instance.DB.PhieuKhams.ToList();
            foreach (var query in queries)
            {
                if (query.NgayLap == DateTime.Now.Date)
                    sttPhieuKhamMoi++;

            }

            TmpPhieuKham.MaPK = "PK" + DateTime.UtcNow.Date.ToString("dd/MM/yyyy").Replace("/","") + sttPhieuKhamMoi.ToString();
            TmpPhieuKham.MaNV = "admin";
            TmpPhieuKham.NgayLap = DateTime.UtcNow.Date;
            
        }
        
        void LoadDataOfBenhNhan()
        {
            //pass data from last listview to variable TmpBN
            TmpBN = KhamBenh_ChoKhamViewModel._selectedBenhNhan;

            TmpChiDinh = new ChiDinhDungThuoc(); 
        }

        bool checkValidInfor(string TenThuoc, int SoLuong)
        {
            if (SoLuong>0)
            {
                var queries = DataProvider.Instance.DB.Thuocs.Where(x => x.TenThuoc == TenThuoc).FirstOrDefault();

                if (queries != null)
                {
                    Thuoc thuoc = queries as Thuoc;
                    if (thuoc.TongSoLuong >= SoLuong)
                        return true;
                }

            }
            return false;
        }

        void InsertToListView()
        {
            //check if userinput is valid or invalid
            if (checkValidInfor(TmpChiDinh.TenThuoc, TmpChiDinh.SoLuong))
            {
                var tmp = new ChiDinhDungThuoc();
                tmp.STT = ListChiDinhThuoc.Count() + 1;
                tmp.TenThuoc = TmpChiDinh.TenThuoc;
                tmp.SoLuong = TmpChiDinh.SoLuong;
                tmp.GhiChu = "Ngày uống "+ TmpChiDinh.GhiChu.Substring(0,TmpChiDinh.GhiChu.IndexOf(" ")) + " lần" + TmpChiDinh.GhiChu.Substring(TmpChiDinh.GhiChu.IndexOf(" "));
                tmp.MaPK = TmpPhieuKham.MaPK;
                Thuoc tmpThuoc = DataProvider.Instance.DB.Thuocs.Where(x => x.TenThuoc == tmp.TenThuoc).FirstOrDefault() as Thuoc;
                tmp.MaThuoc = tmpThuoc.MaThuoc;
                tmp.MaDV = tmpThuoc.MaDV;

                ListChiDinhThuoc.Add(tmp);
            }
            else
                MessageBox.Show("Thông tin không hợp lệ/n Vui lòng kiểm tra lại", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
        }
    }
}
