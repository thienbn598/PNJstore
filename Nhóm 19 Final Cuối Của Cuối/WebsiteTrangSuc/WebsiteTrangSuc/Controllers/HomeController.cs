using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteTrangSuc.Models;

namespace WebsiteTrangSuc.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        QLBH db = new QLBH();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult LienHe()
        {
            var lienhe = db.BaiVietHeThongs.Where(s => s.cCode == "ContactUs" && s.cLangID == "vi-VN").ToList().FirstOrDefault();
            ViewBag.lienhe = lienhe;
            return View(lienhe);
        }
        public ActionResult Gioithieu()
        {

            var gioithieu = db.BaiVietHeThongs.Where(s => s.cCode == "AboutUs" && s.cLangID == "vi-VN").ToList().FirstOrDefault();
            ViewBag.gioithieu = gioithieu;
            return View(gioithieu);
        }
        public PartialViewResult Menu()
        {

            //var ds = db.Menus.Where(s => s.Active == true && s.LangID == "vi-VN").OrderBy(s => s.Thutu).ToList();
            //ViewBag.dsmenu = ds;
            return PartialView();
        }
        public PartialViewResult Banner()
        {
            var slideshow = db.QuangCaos.Where(s => s.LangID == "vi-VN").OrderBy(s => s.AdsIndex).ToList();
            
            return PartialView(slideshow);
        }
        public PartialViewResult MenuCon()
        {
            var ds = db.Menus.Where(s => s.Active == true && s.LangID == "vi-VN").OrderBy(s => s.Thutu).ToList();
            ViewBag.dsmenu = ds;
            return PartialView();
        }
        public PartialViewResult RightMenu()
        {
            var rightmenu = db.LoaiSanPhams.Where(s => s.Thucthi == 1 && s.Ngonngu == "vi-VN").OrderBy(s => s.Vitri).ToList();
            return PartialView(rightmenu);
        }
        public PartialViewResult Footer()
        {
            var address = db.BaiVietHeThongs.Where(s => s.cCode == "Address" && s.cLangID == "vi-VN").ToList().FirstOrDefault();
            ViewBag.address = address;
            return PartialView();
          
        }
        public ActionResult DangNhap()
        {

            return View(); 
        }
        [HttpPost]
        public ActionResult DangNhap(string txtTen, string txtMatKhau)
        {
            var kh = db.KhachHangs.Where(s => s.Tentruynhap == txtTen && s.Matkhau == txtMatKhau).ToList().FirstOrDefault();
            if (kh != null)
            {
                Session["KH"] = kh;

                return RedirectToAction("Index");
            }
            else
            {
                Session["ms"] = "Đăng nhập không thành công";
                return RedirectToAction("DangNhap");
            }
        }
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangKy(string txtHoTen, string txtDienThoai, string txtDiaChi, string txtTenDangNhap, string txtMatKhau)
        {
            var khachhang = db.KhachHangs.Where(s => s.Tenkhachhang == txtHoTen).ToList().FirstOrDefault();
            if (khachhang != null)
            {
                ViewBag.ms = "Tên đăng nhập đã tồn tại";
                return View();
            }
            else
            {
                KhachHang KH = new KhachHang();
                KH.Tentruynhap = txtTenDangNhap;
                KH.Tenkhachhang = txtHoTen;
                KH.Diachi = txtDiaChi;
                KH.Dienthoai = txtDienThoai;
                KH.Matkhau = txtMatKhau;
                db.KhachHangs.Add(KH);
                db.SaveChanges();
                Session["KH"] = KH;
                return RedirectToAction("Index");
            }
        }
        public ActionResult Thoat()
        {
            Session["KH"] = null;
          
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult Timkiem(string txtTimKiem) 
        {
            List<Sanpham> kqtk = db.Sanphams.Where(s => s.Tukhoa.Contains(txtTimKiem)).ToList();
            //var ds = db.Sanphams.Where(s => s.Tukhoa.Contains(txtTimKiem)).ToList();
            
            if ( kqtk.Count != 0)
            {
                return PartialView(kqtk);
            }
            else
            {
                ViewBag.thongbao = "Không tìm thấy sản phẩm cần tìm";
                return View();
            }
            
        }
        public PartialViewResult Hotnumber()
        {
            var hotnumber = db.BaiVietHeThongs.Where(s => s.cCode == "HotNumber" && s.cLangID == "vi-VN").ToList().FirstOrDefault();
            ViewBag.hotnumber = hotnumber;
            return PartialView(hotnumber);
        }
    }
    
}