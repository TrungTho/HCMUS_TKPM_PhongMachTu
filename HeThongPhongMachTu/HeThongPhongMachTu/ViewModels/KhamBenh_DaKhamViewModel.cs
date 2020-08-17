using HeThongPhongMachTu.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HeThongPhongMachTu.ViewModels
{
    public class KhamBenh_DaKhamViewModel:BaseViewModel
    {
        private ObservableCollection<BenhNhan> _listbenhNhans;

        public ObservableCollection<BenhNhan> ListbenhNhans { get => _listbenhNhans; set { _listbenhNhans = value; OnPropertyChanged(); } }

        public KhamBenh_DaKhamViewModel()
        {
            //itemsource for listview
            ListbenhNhans = new ObservableCollection<BenhNhan>();

            //select all record in benhnhan
            var queries = DataProvider.Instance.DB.DanhSachKhams.ToList();

            //modify some attribute to show in listview
            int stt = 0;
            string MaDSK = "";
            foreach (var query in queries)
            {
                if (query.NgayThang.ToString() == DateTime.Now.Date.ToString())
                    MaDSK = query.MaDS.ToString();
            }

            var queries_2 = DataProvider.Instance.DB.CT_DanhSachKham.ToList();

            var queries_3 = DataProvider.Instance.DB.BenhNhans.ToList();

            foreach (var query2 in queries_2)
            {
                if (query2.MaDS.ToString() == MaDSK && query2.TrangThai == false)
                {
                    foreach (var query3 in queries_3)
                        if (query2.MaBN==query3.MaBN)
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
