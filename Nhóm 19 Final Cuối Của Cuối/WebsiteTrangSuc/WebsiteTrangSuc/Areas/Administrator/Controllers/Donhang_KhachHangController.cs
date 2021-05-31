using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebsiteTrangSuc.Models;

namespace WebsiteTrangSuc.Areas.Administrator.Controllers
{
    public class Donhang_KhachHangController : Controller
    {
        private QLBH db = new QLBH();

        // GET: Administrator/Donhang_KhachHang
        public ActionResult Index()
        {
            return View(db.Donhang_KhachHang.ToList());
        }

        // GET: Administrator/Donhang_KhachHang/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Donhang_KhachHang donhang_KhachHang = db.Donhang_KhachHang.Find(id);
            if (donhang_KhachHang == null)
            {
                return HttpNotFound();
            }
            return View(donhang_KhachHang);
        }

        // GET: Administrator/Donhang_KhachHang/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Administrator/Donhang_KhachHang/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdDonHang,Idkhachhang,Ngaydat,Ngaygiao,Yeucau,Kieuthanhtoan,Trangthai,Ngonngu,Duyet,Tennguoinhan,DTnguoinhan,EmailnguoiNhan,Diachinguoinhan")] Donhang_KhachHang donhang_KhachHang)
        {
            if (ModelState.IsValid)
            {
                db.Donhang_KhachHang.Add(donhang_KhachHang);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(donhang_KhachHang);
        }

        // GET: Administrator/Donhang_KhachHang/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Donhang_KhachHang donhang_KhachHang = db.Donhang_KhachHang.Find(id);
            if (donhang_KhachHang == null)
            {
                return HttpNotFound();
            }
            return View(donhang_KhachHang);
        }

        // POST: Administrator/Donhang_KhachHang/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdDonHang,Idkhachhang,Ngaydat,Ngaygiao,Yeucau,Kieuthanhtoan,Trangthai,Ngonngu,Duyet,Tennguoinhan,DTnguoinhan,EmailnguoiNhan,Diachinguoinhan")] Donhang_KhachHang donhang_KhachHang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(donhang_KhachHang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(donhang_KhachHang);
        }

        // GET: Administrator/Donhang_KhachHang/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Donhang_KhachHang donhang_KhachHang = db.Donhang_KhachHang.Find(id);
            if (donhang_KhachHang == null)
            {
                return HttpNotFound();
            }
            return View(donhang_KhachHang);
        }

        // POST: Administrator/Donhang_KhachHang/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Donhang_KhachHang donhang_KhachHang = db.Donhang_KhachHang.Find(id);
            db.Donhang_KhachHang.Remove(donhang_KhachHang);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
