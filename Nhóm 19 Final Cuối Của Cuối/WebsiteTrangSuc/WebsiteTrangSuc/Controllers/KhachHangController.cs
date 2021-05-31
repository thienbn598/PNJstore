using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteTrangSuc.Models;

namespace WebsiteTrangSuc.Controllers
{
    
    public class KhachHangController : Controller
    {
        QLBH db = new QLBH();
        // GET: KhachHang
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Thongtinkhachhang(int id)
        {
            var kh = db.KhachHangs.Where(s => s.IdKhachhang == id).ToList().FirstOrDefault();   
            return View(kh);
        }
    }
}