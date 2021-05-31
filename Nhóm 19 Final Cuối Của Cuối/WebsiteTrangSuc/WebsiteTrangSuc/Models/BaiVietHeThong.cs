namespace WebsiteTrangSuc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BaiVietHeThong")]
    public partial class BaiVietHeThong
    {
        [Display(Name ="ID")]
        public int ID { get; set; }

        [Required]
        [StringLength(20)]
        [Display (Name ="Tên bài viết")]
        public string cCode { get; set; }
        [Display(Name ="Nội dung bài viết")]
        [Column(TypeName = "ntext")]
        [Required]
        public string cValue { get; set; }

        [Display(Name ="Mã ngôn ngữ")]
        [Required]
        [StringLength(10)]
        public string cLangID { get; set; }
        [Display(Name ="Ngày cập nhập")]
        public DateTime cUpdateTime { get; set; }
    }
}
