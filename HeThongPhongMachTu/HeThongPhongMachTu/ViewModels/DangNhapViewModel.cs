using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace HeThongPhongMachTu.ViewModels
{
    public class DangNhapViewModel: BaseViewModel
    {
       
            public bool Isloaded = false;
            public ICommand UnitCommand { get; set; }


            // mọi thứ xử lý sẽ nằm trong này
            public DangNhapViewModel()
            {
                //UnitCommand = new RelayCommand<object>((p) => { return true; }, (p) => {
                //    Isloaded = true;
                //    var loginWindow = new DangNhap();
                //    loginWindow.ShowDialog();
                //}
                //  );

               // UnitCommand = new RelayCommand<object>((p) => { return true; }, (p) => { UnitWindow wd = new UnitWindow(); wd.ShowDialog(); });


                //MessageBox.Show(DataProvider.Ins.DB.Users.First().DisplayName);
            }
    }
}
