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
    public class LoaiSanPhamsController : Controller
    {
        private QLBH db = new QLBH();

        // GET: Administrator/LoaiSanPhams
        public ActionResult Index()
        {
            return View(db.LoaiSanPhams.ToList());
        }

        // GET: Administrator/LoaiSanPhams/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiSanPham loaiSanPham = db.LoaiSanPhams.Find(id);
            if (loaiSanPham == null)
            {
                return HttpNotFound();
            }
            return View(loaiSanPham);
        }

        // GET: Administrator/LoaiSanPhams/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Administrator/LoaiSanPhams/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "IdLoai,Ten,Tieude,Mota,Uutien,Hinhanh,Tukhoa,Thucthi,Vitri,Ngonngu")] LoaiSanPham loaiSanPham)
        {
            if (ModelState.IsValid)
            {
                db.LoaiSanPhams.Add(loaiSanPham);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(loaiSanPham);
        }

        // GET: Administrator/LoaiSanPhams/Edit/5
     
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiSanPham loaiSanPham = db.LoaiSanPhams.Find(id);
            if (loaiSanPham == null)
            {
                return HttpNotFound();
            }
            return View(loaiSanPham);
        }

        // POST: Administrator/LoaiSanPhams/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "IdLoai,Ten,Tieude,Mota,Uutien,Hinhanh,Tukhoa,Thucthi,Vitri,Ngonngu")] LoaiSanPham loaiSanPham)
        {
            if (ModelState.IsValid)
            {
                db.Entry(loaiSanPham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(loaiSanPham);
        }
        [HttpPost]
        // GET: Administrator/LoaiSanPhams/Delete/5
        public ActionResult Delete(int[] idLoai)
        {
            foreach(var i in idLoai)
            {
                LoaiSanPham lsp = db.LoaiSanPhams.Find(i);
                var dssp = db.Sanphams.Where(s => s.IdLoai == i).ToList();
                if (dssp.Count>0)
                {
                    foreach (var sp in dssp)
                    db.Sanphams.Remove(sp);
                    db.SaveChanges();
                }
                db.LoaiSanPhams.Remove(lsp);
                db.SaveChanges();
            }
            return RedirectToAction("Index");
            //if (id == null)
            //{
            //    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //}
            //LoaiSanPham loaiSanPham = db.LoaiSanPhams.Find(id);
            //if (loaiSanPham == null)
            //{
            //    return HttpNotFound();
            //}
            //return View(loaiSanPham);
        }
        

        // POST: Administrator/LoaiSanPhams/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    LoaiSanPham loaiSanPham = db.LoaiSanPhams.Find(id);
        //    db.LoaiSanPhams.Remove(loaiSanPham);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public ActionResult Close()
        {

            return RedirectToAction("Index","Default");
        }
    }
}
