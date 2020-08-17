using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HeThongPhongMachTu.ViewModels
{
    public class NhaThuoc_ThuocTrongKhoViewModel:BaseViewModel
    {
        private ObservableCollection<Thuoc> _listThuoc;

        public ObservableCollection<Thuoc> ListThuoc { get => _listThuoc; set { _listThuoc = value; OnPropertyChanged(); } }

        public NhaThuoc_ThuocTrongKhoViewModel()
        {
            //itemsource for listview
            ListThuoc = new ObservableCollection<Thuoc>();

            //select all record in benhnhan
            var queries = DataProvider.Instance.DB.Thuocs.ToList();

            //modify some attribute to show in listview
            int stt = 0;
            foreach (var query in queries)
            {
                stt++;
                Thuoc thuoc = new Thuoc();
                thuoc = query;
                thuoc.STT = stt;

                ListThuoc.Add(thuoc);
            }


        }
    }
}
