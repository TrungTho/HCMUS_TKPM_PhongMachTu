using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity.Migrations;
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
        public ICommand InsertDataToDBCommand { get; set; }

        public KhamBenh_PhieuKhamMoiViewModel()
        {
            //load data of benhnhan to profile controls
            LoadDataOfBenhNhanCommand = new RelayCommand<object>((p) => { return true; }, (p) => LoadDataOfBenhNhan());
            InsertToListViewCommand = new RelayCommand<object>((p) => { return true; }, (p) => InsertToListView());
            InsertDataToDBCommand = new RelayCommand<object>((p) => { return true; }, (p) => InsertDataToDB());

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
                if (TmpChiDinh.GhiChu.IndexOf(" ") < 0)
                    tmp.GhiChu = "Ngày uống " + TmpChiDinh.GhiChu + " lần";
                else
                    tmp.GhiChu = "Ngày uống " + TmpChiDinh.GhiChu.Substring(0, TmpChiDinh.GhiChu.IndexOf(" ")) + " lần" + TmpChiDinh.GhiChu.Substring(TmpChiDinh.GhiChu.IndexOf(" "));
                tmp.MaPK = TmpPhieuKham.MaPK;
                Thuoc tmpThuoc = DataProvider.Instance.DB.Thuocs.Where(x => x.TenThuoc == tmp.TenThuoc).FirstOrDefault() as Thuoc;
                tmp.MaThuoc = tmpThuoc.MaThuoc;
                tmp.MaDV = tmpThuoc.MaDV;

                ListChiDinhThuoc.Add(tmp);
            }
            else
                MessageBox.Show("Thông tin không hợp lệ/n Vui lòng kiểm tra lại", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        int calculateBill()
        {
            int res = 0;

            foreach (var chidinh in ListChiDinhThuoc)
            {
                var thuoc = DataProvider.Instance.DB.Thuocs.Where(x => x.MaThuoc == chidinh.MaThuoc).First() as Thuoc;
                res += chidinh.SoLuong * thuoc.DonGia;
            }

            return res;
        }

        void InsertDataToDB()
        {
            try
            {
                TmpPhieuKham.MaBN = TmpBN.MaBN;

                //insert table PhieuKham
                //TmpPhieuKham.NhanVien = DataProvider.Instance.DB.NhanViens.Where(x => x.MaNV == "admin").First() as NhanVien;
                //TmpPhieuKham.SoKhamBenh = DataProvider.Instance.DB.SoKhamBenhs.Where(x => x.MaBN == TmpBN.MaBN).First() as SoKhamBenh;
                DataProvider.Instance.DB.PhieuKhams.Add(TmpPhieuKham);
                DataProvider.Instance.DB.SaveChanges();

                //insert table ChiDinhDungThuoc
                foreach (var chidinh in ListChiDinhThuoc)
                {
                    DataProvider.Instance.DB.ChiDinhDungThuocs.Add(chidinh);
                }
                DataProvider.Instance.DB.SaveChanges();

                //create HoaDon that corresponsdind with PK
                var tmpHoaDon = new HoaDon();
                tmpHoaDon.MaBN = TmpPhieuKham.MaBN;
                tmpHoaDon.MaHD = "HD" + TmpPhieuKham.MaPK.Substring(2);
                tmpHoaDon.NgayLap = TmpPhieuKham.NgayLap;
                tmpHoaDon.TongTienThanhToan = calculateBill();
                tmpHoaDon.TrangThaiGiaoThuoc = tmpHoaDon.TrangThaiGiaoThuoc = false;
                tmpHoaDon.MaNVGiaoThuoc = tmpHoaDon.MaNVThanhToan = "admin";

                DataProvider.Instance.DB.HoaDons.Add(tmpHoaDon);
                DataProvider.Instance.DB.SaveChanges();

                //change TrangThai oh BenhNhan in CT_DanhSachKham
                var ctDSK = DataProvider.Instance.DB.CT_DanhSachKham.Where(x => x.MaBN == TmpBN.MaBN).First() as CT_DanhSachKham;
                ctDSK.TrangThai = false;
                DataProvider.Instance.DB.CT_DanhSachKham.AddOrUpdate(ctDSK);
                DataProvider.Instance.DB.SaveChanges();

                MessageBox.Show($"Đã tạo phiếu khám cho bệnh nhân: {TmpBN.HoTen}\n Vui lòng thanh toán tại quầy thu ngân", "Notification", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception e)
            {
                MessageBox.Show("Tạo phiếu khám không thành công, vui lòng kiểm tra lại kết nối", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            
        }
    }
}
