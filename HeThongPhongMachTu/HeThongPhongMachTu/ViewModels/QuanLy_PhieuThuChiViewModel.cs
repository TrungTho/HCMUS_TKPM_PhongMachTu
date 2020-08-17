using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HeThongPhongMachTu.ViewModels
{
    public class QuanLy_PhieuThuChiViewModel : BaseViewModel
    {
        private ObservableCollection<PhieuThuChi> _listPhieuThuChi;

        public ObservableCollection<PhieuThuChi> ListPhieuThuChi { get => _listPhieuThuChi; set { _listPhieuThuChi = value; OnPropertyChanged(); } }

        public QuanLy_PhieuThuChiViewModel()
        {
            //itemsource for listview
            ListPhieuThuChi = new ObservableCollection<PhieuThuChi>();

            //select all record in phieuthuchi
            var queries = DataProvider.Instance.DB.PhieuThuChis.ToList();

            //modify some attribute to show in listview
            int stt = 0;
            foreach (var query in queries)
            {
                stt++;
                PhieuThuChi phieuThuChi = new PhieuThuChi();
                phieuThuChi = query;
                ListPhieuThuChi.Add(phieuThuChi);
            }
        }
    }
}
