namespace WebsiteTrangSuc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NguoiDung")]
    public partial class NguoiDung
    {
        [Display(Name ="Tài khoản")]
        [Key]
        [StringLength(32)]
        public string Username { get; set; }
        [Display(Name ="Mật khẩu")]
        [Required]
        [StringLength(100)]
        public string Password { get; set; }
        [Display(Name ="Status")]
        public bool Status { get; set; }
    }
}
