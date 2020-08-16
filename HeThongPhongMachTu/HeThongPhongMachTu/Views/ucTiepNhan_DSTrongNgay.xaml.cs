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
    /// Interaction logic for ucTiepNhapOptions.xaml
    /// </summary>
    public partial class ucTiepNhapOptions : UserControl
    {
        public TiepNhan_DSTrongNgayViewModel ViewModel { get; set; }

        public ucTiepNhapOptions()
        {
            InitializeComponent();
            this.DataContext = ViewModel = new TiepNhan_DSTrongNgayViewModel();
        }
    }
}
