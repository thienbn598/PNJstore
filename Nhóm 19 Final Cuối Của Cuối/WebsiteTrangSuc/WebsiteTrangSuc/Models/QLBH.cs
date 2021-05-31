namespace WebsiteTrangSuc.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class QLBH : DbContext
    {
        public QLBH()
            : base("name=QLBH")
        {
        }

        public virtual DbSet<BaiVietHeThong> BaiVietHeThongs { get; set; }
        public virtual DbSet<Chitietdonhang> Chitietdonhangs { get; set; }
        public virtual DbSet<Donhang_KhachHang> Donhang_KhachHang { get; set; }

        public virtual DbSet<HangSX> HangSXes { get; set; }
        public virtual DbSet<KhachHang> KhachHangs { get; set; }
        public virtual DbSet<LoaiSanPham> LoaiSanPhams { get; set; }
        public virtual DbSet<Menu> Menus { get; set; }
        public virtual DbSet<NguoiDung> NguoiDungs { get; set; }
        public virtual DbSet<QuangCao> QuangCaos { get; set; }
        public virtual DbSet<Sanpham> Sanphams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Donhang_KhachHang>()
                .Property(e => e.Ngonngu)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Donhang_KhachHang>()
                .Property(e => e.DTnguoinhan)
                .IsUnicode(false);

            modelBuilder.Entity<Donhang_KhachHang>()
                .Property(e => e.EmailnguoiNhan)
                .IsUnicode(false);

            modelBuilder.Entity<HangSX>()
                .Property(e => e.Website)
                .IsUnicode(false);

            modelBuilder.Entity<HangSX>()
                .Property(e => e.NgonNgu)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<KhachHang>()
                .Property(e => e.Dienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<KhachHang>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<LoaiSanPham>()
                .Property(e => e.Hinhanh)
                .IsUnicode(false);

            modelBuilder.Entity<LoaiSanPham>()
                .Property(e => e.Ngonngu)
                .IsUnicode(false);

            modelBuilder.Entity<LoaiSanPham>()
                .HasMany(e => e.Sanphams)
                .WithRequired(e => e.LoaiSanPham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Sanpham>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<Sanpham>()
                .Property(e => e.Ngonngu)
                .IsUnicode(false);

        }
    }
}
