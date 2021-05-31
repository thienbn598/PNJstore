using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteTrangSuc.Models;

namespace WebsiteTrangSuc.Controllers
{
    public class SanPhamController : Controller
    {
        QLBH db = new QLBH();
        // GET: SanPham
        public ActionResult Index()
        {
            return View();
        }
        public PartialViewResult SanPhamMoi()
        {
            var ds = db.Sanphams.OrderByDescending(s=>s.id).ToList().Take(3);
            return PartialView(ds);
        }
        public PartialViewResult SanPhamTieuBieu()
        {
            var ds = db.Sanphams.Where(s => s.TieuBieu == true).ToList().Take(2);
            return PartialView(ds);
        }
        [HttpGet]
        public ActionResult DanhMucSP(int id  )
        {
            var dssp = db.Sanphams.Where(s => s.IdLoai == id).OrderBy(s=>s.GiaMoi).ToList();
            ViewBag.tenloai = db.LoaiSanPhams.Where(s => s.IdLoai == id).ToList().FirstOrDefault();
            return View(dssp);
        }
        [HttpGet]
        public ActionResult Chitietsanpham(int id)
        {
            var chitiet = db.Sanphams.Where(s => s.id == id).ToList().FirstOrDefault();
            var splq = db.Sanphams.Where(s => s.IdLoai == chitiet.IdLoai && s.id != chitiet.id).ToList().Take(3);
            ViewBag.sqlq = splq;
            return View(chitiet);
        }
    }
}