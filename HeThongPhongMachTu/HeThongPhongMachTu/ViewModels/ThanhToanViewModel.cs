using DevExpress.Mvvm;
using DevExpress.Mvvm.POCO;
using DevExpress.Xpf.WindowsUI;
using HeThongPhongMachTu.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace HeThongPhongMachTu.ViewModels
{
    public class ThanhToanViewModel:BaseViewModel
    {
        #region command
        #endregion

        public ICommand SwitchToTiepNhan { get; set; }

        private INavigationService NavigationService { get { return this.GetService<INavigationService>(); } }


        public ThanhToanViewModel()
        {
            SwitchToTiepNhan = new RelayCommand<NavigationFrame>((p) => { return p ==null? false: true; }, (p) => { doSomething(p); });
            
        }

        void doSomething(NavigationFrame p)
        {
            //MessageBox.Show("hahahaha");
            ////NavigationService.Navigate("ucTiepNhan", null, this);
            //p.Source = UriKind(Views.ucTiepNhapOptions)
        }

    }
}
