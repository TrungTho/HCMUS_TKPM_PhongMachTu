using DevExpress.Mvvm;
using DevExpress.Mvvm.POCO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HeThongPhongMachTu.ViewModels
{
    public class TiepNhan_DSTrongNgayViewModel:BaseViewModel
    {
        private INavigationService NavigationService { get { return this.GetService<INavigationService>(); } }

        public TiepNhan_DSTrongNgayViewModel() { }

        public void NavigateDetails()
        {
            NavigationService.Navigate("ucTiepNhan_DSBenhNhan", null, this);
        }
    }
}
