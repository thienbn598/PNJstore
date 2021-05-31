namespace WebsiteTrangSuc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Chitietdonhang")]
    public partial class Chitietdonhang
    {
        [Display(Name ="Mã hóa đơn")]
        public int Id { get; set; }
        [Display(Name ="Mã đơn hàng")]
        public int? IdDonHang { get; set; }
        [Display(Name ="Mã sản phẩm")]
        public int? IdSanPham { get; set; }
        [Display(Name ="Số lượng")]
        public int? Soluong { get; set; }
        [Display(Name ="Đơn giá")]
        public double? Dongia { get; set; }
    }
}
