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
    public class ChitietdonhangsController : Controller
    {
        private QLBH db = new QLBH();

        // GET: Administrator/Chitietdonhangs
        public ActionResult Index()
        {
            return View(db.Chitietdonhangs.ToList());
        }

        // GET: Administrator/Chitietdonhangs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Chitietdonhang chitietdonhang = db.Chitietdonhangs.Find(id);
            if (chitietdonhang == null)
            {
                return HttpNotFound();
            }
            return View(chitietdonhang);
        }

        // GET: Administrator/Chitietdonhangs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Administrator/Chitietdonhangs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,IdDonHang,IdSanPham,Soluong,Dongia")] Chitietdonhang chitietdonhang)
        {
            if (ModelState.IsValid)
            {
                db.Chitietdonhangs.Add(chitietdonhang);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(chitietdonhang);
        }

        // GET: Administrator/Chitietdonhangs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Chitietdonhang chitietdonhang = db.Chitietdonhangs.Find(id);
            if (chitietdonhang == null)
            {
                return HttpNotFound();
            }
            return View(chitietdonhang);
        }

        // POST: Administrator/Chitietdonhangs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,IdDonHang,IdSanPham,Soluong,Dongia")] Chitietdonhang chitietdonhang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(chitietdonhang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(chitietdonhang);
        }

        // GET: Administrator/Chitietdonhangs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Chitietdonhang chitietdonhang = db.Chitietdonhangs.Find(id);
            if (chitietdonhang == null)
            {
                return HttpNotFound();
            }
            return View(chitietdonhang);
        }

        // POST: Administrator/Chitietdonhangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Chitietdonhang chitietdonhang = db.Chitietdonhangs.Find(id);
            db.Chitietdonhangs.Remove(chitietdonhang);
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
