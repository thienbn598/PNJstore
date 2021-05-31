namespace WebsiteTrangSuc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KhachHang")]
    public partial class KhachHang
    {
        [Key]
        [Display(Name ="Mã khách hàng")]
        public int IdKhachhang { get; set; }
        [Display(Name ="Tên truy nhập")]
        [StringLength(100)]
        public string Tentruynhap { get; set; }
        [Display(Name ="Mật khẩu")]
        [StringLength(200)]
        public string Matkhau { get; set; }
        [Display(Name ="Tên khách hàng")]
        [StringLength(200)]
        public string Tenkhachhang { get; set; }
        [Display(Name ="Ngày sinh")]
        [Column(TypeName = "date")]
        public DateTime? Ngaysinh { get; set; }
        [Display(Name ="Giới tính")]
        public short? Gioitinh { get; set; }
        [Display(Name ="Dịa chỉ")]
        [StringLength(200)]
        public string Diachi { get; set; }
        [Display(Name ="Điện thoại")]
        [StringLength(12)]
        public string Dienthoai { get; set; }
        [Display(Name ="Email")]
        [StringLength(100)]
        public string Email { get; set; }
        [Display(Name ="Câu hỏi")]
        [StringLength(300)]
        public string Cauhoi { get; set; }
        [Display(Name ="Trả lời")]
        [StringLength(30)]
        public string Traloi { get; set; }
        [Display(Name ="Mục")]
        public short? Muc { get; set; }
        [Display(Name ="Ngày tạo")]
        public DateTime? Ngaytao { get; set; }
        [Display(Name ="Tiêu đề")]
        [StringLength(512)]
        public string TieuDe { get; set; }
        [Display(Name ="Nội dung")]
        public string Noidung { get; set; }
        [Display(Name ="Thực thi")]
        public short? Thucthi { get; set; }
    }
}
