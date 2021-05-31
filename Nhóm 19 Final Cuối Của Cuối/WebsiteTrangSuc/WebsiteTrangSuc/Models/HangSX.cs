namespace WebsiteTrangSuc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HangSX")]
    public partial class HangSX
    {
        [Key]
        public int IdHang { get; set; }
        [Display(Name ="Mô tả")]
        [Column(TypeName = "ntext")]
        public string Mota { get; set; }

        [StringLength(255)]
        [Display (Name ="Website")]
        public string Website { get; set; }
        [Display(Name ="Liên Hệ")]
        public string LienHe { get; set; }
        [Display (Name ="Ưu tiên")]
        public int? UTien { get; set; }
        [Display(Name ="Thực thi")]
        public int? ThucThi { get; set; }
        [Display(Name ="Ngôn ngữ")]
        [StringLength(5)]
        public string NgonNgu { get; set; }
    }
}
