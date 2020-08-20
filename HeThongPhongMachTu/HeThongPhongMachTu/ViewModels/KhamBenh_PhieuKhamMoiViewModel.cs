using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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

        public ICommand LoadDataOfBenhNhanCommand { get; set; }

        
        

        public KhamBenh_PhieuKhamMoiViewModel()
        {
            //load data of benhnhan to profile controls
            LoadDataOfBenhNhanCommand = new RelayCommand<object>((p) => { return true; }, (p) => LoadDataOfBenhNhan());

        }
        
        void LoadDataOfBenhNhan()
        {
            TmpBN = KhamBenh_ChoKhamViewModel._selectedBenhNhan;
        }

    }
}
