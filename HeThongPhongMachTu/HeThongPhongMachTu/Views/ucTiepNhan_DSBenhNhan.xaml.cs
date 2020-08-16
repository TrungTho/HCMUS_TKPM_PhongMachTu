using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using HeThongPhongMachTu.ViewModels;

namespace HeThongPhongMachTu.Views
{
    /// <summary>
    /// Interaction logic for ucTiepNhan_DSBenhNhan.xaml
    /// </summary>
    public partial class ucTiepNhan_DSBenhNhan : UserControl
    {
        public TiepNhan_DSBenhNhanViewModel ViewModel { get; set; }

        public ucTiepNhan_DSBenhNhan()
        {
            InitializeComponent();
            this.DataContext = ViewModel = new TiepNhan_DSBenhNhanViewModel();
        }
    }
}
