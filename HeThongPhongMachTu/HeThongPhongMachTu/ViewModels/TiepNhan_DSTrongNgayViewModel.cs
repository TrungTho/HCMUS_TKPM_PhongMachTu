using DevExpress.Mvvm;
using DevExpress.Mvvm.POCO;
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
    public class TiepNhan_DSTrongNgayViewModel:BaseViewModel
    {
        #region command
        #endregion

        private ObservableCollection<BenhNhan> _listbenhNhans;

        public ObservableCollection<BenhNhan> ListbenhNhans { get => _listbenhNhans; set => _listbenhNhans = value; }

        public ICommand searchbarFocusCommand { get; set; }

        public TiepNhan_DSTrongNgayViewModel()
        {
            searchbarFocusCommand = new RelayCommand<object>((p) => { return true; }, (p) =>loadDataToSearchBar());
        }

        void loadDataToSearchBar()
        {
            //itemsource for listview
            ListbenhNhans = new ObservableCollection<BenhNhan>();

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

                ListbenhNhans.Add(benhNhan);
            }
        }

    }
}
