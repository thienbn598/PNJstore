namespace WebsiteTrangSuc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sanpham")]
    public partial class Sanpham
    {
        public int id { get; set; }
        [Display( Name="Mã sản phẩm")]
        [StringLength(30)]
        public string MaSanPham { get; set; }
        [Display(Name="ID Loại sản phẩm")]
        public int IdLoai { get; set; }
        [Display(Name ="Tên sản phẩm")]
        [StringLength(256)]
        public string Ten { get; set; }
        [Display(Name ="Model")]
        [StringLength(30)]
        public string Model { get; set; }
        [Display(Name ="Mô tả ngắn")]
        [StringLength(300)]
        public string MotaNgan { get; set; }
        [Display(Name ="Mô tả chi tiết")]
        [Column(TypeName = "ntext")]
        public string MotaChiTiet { get; set; }
        [Display(Name ="Thông số kỹ thuật")]
        [Column(TypeName = "ntext")]
        public string TSKyThuat { get; set; }
        [Display(Name ="Từ khóa")]
        [StringLength(300)]
        public string Tukhoa { get; set; }
        [Display(Name ="ID Hãng")]
        public int? IdHang { get; set; }
        [Display(Name ="Ngày nhập")]
        [Column(TypeName = "date")]
        public DateTime? NgayNhap { get; set; }
        [Display(Name ="Ngày cập nhập cuối")]
        [Column(TypeName = "date")]
        public DateTime? NgayCapNhatCuoi { get; set; }
        [Display(Name ="Giá cũ")]
        public double? GiaCu { get; set; }
        [Display(Name ="Giá mới")]
        public double? GiaMoi { get; set; }
        [Display(Name = "Ưu tiên")]
        public short? Uutien { get; set; }
        [Display(Name = "Thực thi")]
        public int? ThucThi { get; set; }
        [Display(Name = "Hình ảnh")]
        [StringLength(300)]
        public string HinhAnh { get; set; }
        [Display(Name = "Hình ảnh 1")]
        [StringLength(300)]
        public string HinhAnh1 { get; set; }
        [Display(Name = "Hình ảnh 2")]
        [StringLength(300)]
        public string HinhAnh3 { get; set; }
        [Display(Name = "Hình ảnh 3")]
        [StringLength(300)]
        public string HinhAnh4 { get; set; }
        [Display(Name = "Tiêu biểu")]
        public bool? TieuBieu { get; set; }
        [Display(Name = "Ngôn ngữ")]
        [StringLength(20)]
        public string Ngonngu { get; set; }

        public virtual LoaiSanPham LoaiSanPham { get; set; }
    }
}
