namespace WebsiteTrangSuc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Donhang_KhachHang
    {
        [Key]
        [Display(Name ="Mã đơn hàng")]
        public int IdDonHang { get; set; }
        [Display(Name ="Mã khách hàng")]
        public int? Idkhachhang { get; set; }
        [Display(Name ="Ngày đặt hàng")]
        public DateTime? Ngaydat { get; set; }
        [Display(Name ="Ngày giao hàng")]
        public DateTime? Ngaygiao { get; set; }
        [Display(Name ="Yêu cầu")]
        [Column(TypeName = "ntext")]
        public string Yeucau { get; set; }
        [Display(Name ="Kiểu thanh toán")]
        [StringLength(100)]
        public string Kieuthanhtoan { get; set; }
        [Display(Name ="Trạng thái")]
        public int? Trangthai { get; set; }
        [Display(Name ="Ngôn ngữ")]
        [StringLength(3)]
        public string Ngonngu { get; set; }
        [Display(Name ="Duyệt")]
        public int? Duyet { get; set; }
        [Display(Name ="Tên người nhận")]
        [StringLength(50)]
        public string Tennguoinhan { get; set; }
        [Display(Name ="Điện thoại người nhận")]
        [StringLength(50)]
        public string DTnguoinhan { get; set; }
        [Display(Name ="Email người nhận")]
        [StringLength(50)]
        public string EmailnguoiNhan { get; set; }
        [Display(Name ="Địa chỉ người nhận")]
        [StringLength(200)]
        public string Diachinguoinhan { get; set; }
    }
}
