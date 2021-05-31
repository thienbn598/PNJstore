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
    public class HangSXesController : Controller
   {
        private QLBH db = new QLBH();

        // GET: Administrator/HangSXes
        public ActionResult Index()
        {
            return View(db.HangSXes.ToList());
        }

        // GET: Administrator/HangSXes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HangSX hangSX = db.HangSXes.Find(id);
            if (hangSX == null)
            {
                return HttpNotFound();
            }
            return View(hangSX);
        }

        // GET: Administrator/HangSXes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Administrator/HangSXes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "IdHang,Mota,Website,LienHe,UTien,ThucThi,NgonNgu")] HangSX hangSX)
        {
            if (ModelState.IsValid)
            {
                db.HangSXes.Add(hangSX);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(hangSX);
        }

        // GET: Administrator/HangSXes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HangSX hangSX = db.HangSXes.Find(id);
            if (hangSX == null)
            {
                return HttpNotFound();
            }
            return View(hangSX);
        }

        // POST: Administrator/HangSXes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "IdHang,Mota,Website,LienHe,UTien,ThucThi,NgonNgu")] HangSX hangSX)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hangSX).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(hangSX);
        }
        [HttpPost]
        // GET: Administrator/HangSXes/Delete/5
        public ActionResult Delete(int[] idHang)
        { 
            foreach(var i in idHang)
            {
                HangSX hsx = db.HangSXes.Find(i);
                        db.HangSXes.Remove(hsx);
                        db.SaveChanges();
                }
                return RedirectToAction("Index");
            }
        //if (id == null)
        //{
        //    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //}
        //HangSX hangSX = db.HangSXes.Find(id);
        //if (hangSX == null)
        //{
        //    return HttpNotFound();
        //}
        //return View(hangSX);
        // POST: Administrator/HangSXes/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    HangSX hangSX = db.HangSXes.Find(id);
        //    db.HangSXes.Remove(hangSX);
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



