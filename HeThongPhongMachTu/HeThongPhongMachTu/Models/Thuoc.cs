//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HeThongPhongMachTu.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Thuoc
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Thuoc()
        {
            this.ChiDinhDungThuocs = new HashSet<ChiDinhDungThuoc>();
            this.PhieuNhapThuocs = new HashSet<PhieuNhapThuoc>();
        }
    
        public int STT { get; set; }
        public string MaThuoc { get; set; }
        public string TenThuoc { get; set; }
        public string MaDV { get; set; }
        public int TongSoLuong { get; set; }
        public int DonGia { get; set; }
        public string TinhTrang { get; set; }
        public string ThongTin { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiDinhDungThuoc> ChiDinhDungThuocs { get; set; }
        public virtual DonViThuoc DonViThuoc { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuNhapThuoc> PhieuNhapThuocs { get; set; }
    }
}
