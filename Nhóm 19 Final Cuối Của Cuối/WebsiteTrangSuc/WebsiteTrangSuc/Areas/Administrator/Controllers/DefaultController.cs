using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteTrangSuc.Models;

namespace WebsiteTrangSuc.Areas.Administrator.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Administrator/Default
        QLBH db = new QLBH();
        public ActionResult Index()
        {
            if(string.IsNullOrEmpty(Session["ten"].ToString()))
            {
                return RedirectToAction("Login");
            }
            else
            {
                return View();
            }
           
        }
        public PartialViewResult Menu()
        {

            return PartialView();
        }
        public ActionResult Login()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Login(string txtTen, string txtMatKhau)
        {
            var ds = db.NguoiDungs.Where(s => s.Username == txtTen && s.Password == txtMatKhau).ToList();
            if(ds.Count !=0)
            {
                Session["ten"] = txtTen;
                Session["matkhau"] = txtMatKhau;
                return RedirectToAction("Index");
            }
            else
            {
                return View();
            }
        
        }
        public ActionResult Thoat()
        {
            Session["ten"] = "";
            Session["matkhau"] = "";
            return RedirectToAction("Login");
        }
    }
}