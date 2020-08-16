using DevExpress.Mvvm;
using DevExpress.Mvvm.POCO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace HeThongPhongMachTu.ViewModels
{
    public class TiepNhan_DSBenhNhanViewModel:BaseViewModel
    {
        private INavigationService NavigationService { get { return this.GetService<INavigationService>(); } }

        public TiepNhan_DSBenhNhanViewModel() { }

        public void NavigateDetails()
        {
            NavigationService.Navigate("ucTiepNhan_DSTrongNgay", null, this);
        }

    }
}
