using DevExpress.Mvvm;
using DevExpress.Mvvm.POCO;
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
    public class TiepNhan_DSTrongNgayViewModel:BaseViewModel
    {
        #region command
        #endregion

        private ObservableCollection<BenhNhan> _listbntrongngay;

        public ObservableCollection<BenhNhan> ListBNTrongNgay { get => _listbntrongngay; set { _listbntrongngay = value; OnPropertyChanged(); } }

        public ICommand SearchCommand { get; set; }
        public ICommand LoadDataToListViewCommand { get; set; }

        public TiepNhan_DSTrongNgayViewModel()
        {
            SearchCommand = new RelayCommand<TextBox>((p) => { return p==null?false : true; }, (p) =>LoadDataToListView(p));
            LoadDataToListViewCommand = new RelayCommand<object>((p) => { return true; }, (p) =>LoadDataToListViewNew());

            
        }

        private void LoadDataToListViewNew()
        {
            //itemsource for listview
            ListBNTrongNgay = new ObservableCollection<BenhNhan>();

            var queries = DataProvider.Instance.DB.CT_DanhSachKham.ToList();
            
            //modify some attribute to show in listview
            int stt = 0;
            foreach (var query in queries)
                if (query.ThoiGian.Date == DateTime.Now.Date)
                {

                    stt++;
                    BenhNhan benhNhan = new BenhNhan();
                    benhNhan = DataProvider.Instance.DB.BenhNhans.Where(x => x.MaBN == query.MaBN).First() as BenhNhan;
                    benhNhan.STT = stt;
                    benhNhan.Tuoi = (DateTime.Now.Year - benhNhan.NgaySinh.Year).ToString();
                    benhNhan.SEX = benhNhan.GioiTinh == true ? "Nam" : "Nữ";

                    ListBNTrongNgay.Add(benhNhan);
                }
        }

        void LoadDataToListView(TextBox p)
        {
            if (p.Text=="")
                MessageBox.Show("Mời nhập thông tin cần tìm kiếm vào ô tìm kiếm", "Alert", MessageBoxButton.OK, MessageBoxImage.Warning);
            else
            {
                string userInput = p.Text;

                //itemsource for listview
                ListBNTrongNgay = new ObservableCollection<BenhNhan>();

                //select all record in benhnhan has mabn = userinput
                var queries = DataProvider.Instance.DB.BenhNhans.Where(x=>x.MaBN==userInput);
                List<BenhNhan> tmplist = new List<BenhNhan>();
                tmplist = queries.ToList();

                if (tmplist.Count()>0)
                {
                    //modify some attribute to show in listview
                    int stt = ListBNTrongNgay.Count()+1;

                    BenhNhan benhNhan = new BenhNhan();
                    benhNhan = tmplist[0];

                    benhNhan.STT = stt;
                    benhNhan.SEX = benhNhan.GioiTinh == true ? "Nam" : "Nữ";

                    ListBNTrongNgay.Add(benhNhan);

                }
                else
                {
                    MessageBox.Show("Thông tin đã nhập không chính xác, vui lòng kiểm tra lại", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }

            }

        }

    }
}
