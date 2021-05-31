namespace WebsiteTrangSuc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiSanPham")]
    public partial class LoaiSanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiSanPham()
        {
            Sanphams = new HashSet<Sanpham>();
        }

        [Key]
        [Display (Name ="Mã loại")]
        public int IdLoai { get; set; }

        [StringLength(256)]
        [Display(Name = "Tên loại")]
        public string Ten { get; set; }
        [Display(Name = "Tiêu đề")]
        [StringLength(300)]
        public string Tieude { get; set; }
        [Display(Name = "Mô tả")]
        [Column(TypeName = "ntext")]
        public string Mota { get; set; }
        [Display(Name = "Ưu tiên")]
        public short? Uutien { get; set; }
        [Display(Name = "Hình ảnh")]
        [StringLength(256)]
        public string Hinhanh { get; set; }
        [Display(Name = "Từ khóa")]
        [StringLength(300)]
        public string Tukhoa { get; set; }
        [Display(Name = "Thực thi")]
        public int? Thucthi { get; set; }
        [Display(Name = "Vị trí")]
        public int? Vitri { get; set; }
        [Display(Name = "Ngôn ngữ")]
        [StringLength(5)]
        public string Ngonngu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham> Sanphams { get; set; }
    }
}
