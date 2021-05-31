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
    public class SanphamsController : Controller
    {
        private QLBH db = new QLBH();

        // GET: Administrator/Sanphams
        public ActionResult Index()
        {
            var sanphams = db.Sanphams.Include(s => s.LoaiSanPham);
            return View(sanphams.ToList());
        }

        // GET: Administrator/Sanphams/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sanpham sanpham = db.Sanphams.Find(id);
            if (sanpham == null)
            {
                return HttpNotFound();
            }
            return View(sanpham);
        }

        // GET: Administrator/Sanphams/Create
        public ActionResult Create()
        {
            ViewBag.IdLoai = new SelectList(db.LoaiSanPhams, "IdLoai", "Ten");
            return View();
        }

        // POST: Administrator/Sanphams/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "id,MaSanPham,IdLoai,Ten,Model,MotaNgan,MotaChiTiet,TSKyThuat,Tukhoa,IdHang,NgayNhap,NgayCapNhatCuoi,GiaCu,GiaMoi,Uutien,ThucThi,HinhAnh,HinhAnh1,HinhAnh3,HinhAnh4,TieuBieu,Ngonngu")] Sanpham sanpham)
        {
            if (ModelState.IsValid)
            {
                db.Sanphams.Add(sanpham);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdLoai = new SelectList(db.LoaiSanPhams, "IdLoai", "Ten", sanpham.IdLoai);
            return View(sanpham);
        }

        // GET: Administrator/Sanphams/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sanpham sanpham = db.Sanphams.Find(id);
            if (sanpham == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdLoai = new SelectList(db.LoaiSanPhams, "IdLoai", "Ten", sanpham.IdLoai);
            return View(sanpham);
        }

        // POST: Administrator/Sanphams/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "id,MaSanPham,IdLoai,Ten,Model,MotaNgan,MotaChiTiet,TSKyThuat,Tukhoa,IdHang,NgayNhap,NgayCapNhatCuoi,GiaCu,GiaMoi,Uutien,ThucThi,HinhAnh,HinhAnh1,HinhAnh3,HinhAnh4,TieuBieu,Ngonngu")] Sanpham sanpham)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sanpham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdLoai = new SelectList(db.LoaiSanPhams, "IdLoai", "Ten", sanpham.IdLoai);
            return View(sanpham);
        }
        [HttpPost]
        // GET: Administrator/Sanphams/Delete/5
        public ActionResult Delete(int [] id)
        {
            foreach(var i in id)
            {
                Sanpham sp = db.Sanphams.Find(i);

                db.Sanphams.Remove(sp);
                db.SaveChanges();
            }
            return RedirectToAction("Index");

            
                //if (id == null)
            //{
            //    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //}
            //Sanpham sanpham = db.Sanphams.Find(id);
            //if (sanpham == null)
            //{
            //    return HttpNotFound();
            //}
            //return View(sanpham);
        }

        // POST: Administrator/Sanphams/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Sanpham sanpham = db.Sanphams.Find(id);
        //    db.Sanphams.Remove(sanpham);
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
            return RedirectToAction("Index", "Default");
        }
    }
}
