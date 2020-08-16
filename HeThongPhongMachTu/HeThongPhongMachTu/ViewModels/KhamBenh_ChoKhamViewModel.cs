using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace HeThongPhongMachTu.ViewModels
{
    public class KhamBenh_ChoKhamViewModel:BaseViewModel
    {
        #region command
        #endregion

        public ICommand ShowSomethingCommand { get; set; }

        public KhamBenh_ChoKhamViewModel()
        {
            ShowSomethingCommand = new RelayCommand<object>((p) => { return true; }, (p) => { showSomething(); });
        }

        void showSomething()
        {
            MessageBox.Show("hahahaha");
        }

    }
}
