﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ParkSomewhereApp.Models;
using Microsoft.AspNet.Identity;

namespace ParkSomewhereApp.Controllers
{
    public class ReviewsController : Controller
    {
        private ParkSomewhereAppEntities db = new ParkSomewhereAppEntities();

        // GET: Reviews
        public ActionResult Index()
        {
            ViewBag.ParkID = new SelectList(db.Parks, "ParkID", "ParkName");
            var reviews = db.Reviews.Include(r => r.Park).Include(r => r.AspNetUser).OrderByDescending(r => r.ReviewTimeStamp)
                .ThenBy(r => r.Rating).ToList();
            return View(reviews.ToList());
        }
        [HttpPost]
        public ActionResult Index(int ParkID)
        {
            ViewBag.ParkID = new SelectList(db.Parks, "ParkID", "ParkName");
            var reviews = db.Reviews.Include(r => r.Park).Include(r => r.AspNetUser).Where(r => r.ParkID == ParkID).OrderByDescending(r => r.ReviewTimeStamp)
                .ThenBy(r => r.Rating).ToList();
            return View(reviews.ToList());
        }

        // GET: Reviews/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Review review = db.Reviews.Find(id);
            if (review == null)
            {
                return HttpNotFound();
            }
            return View(review);
        }

        // GET: Reviews/Create
        [Authorize]
        public ActionResult Create()
        {
            ViewBag.ParkID = new SelectList(db.Parks, "ParkID", "ParkName");
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email");
            return View();
        }

        // POST: Reviews/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ReviewID,ParkID,ReviewTitle,ReviewComments,ReviewTimeStamp,Rating,TotalVotes,UserID")] Review review)
        {
            if (ModelState.IsValid)
            {
                review.ReviewTimeStamp = DateTime.Now;
                review.UserID = User.Identity.GetUserId();
                db.Reviews.Add(review);
                db.SaveChanges();
                return RedirectToAction("Index", "Parks");
            }

            ViewBag.ParkID = new SelectList(db.Parks, "ParkID", "ParkName", review.ParkID);
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email", review.UserID);
            return View(review);
        }

        // GET: Reviews/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Review review = db.Reviews.Find(id);
            if (review == null)
            {
                return HttpNotFound();
            }
            ViewBag.ParkID = new SelectList(db.Parks, "ParkID", "ParkName", review.ParkID);
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email", review.UserID);
            return View(review);
        }

        // POST: Reviews/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ReviewID,ParkID,ReviewTitle,ReviewComments,ReviewTimeStamp,Rating,TotalVotes,UserID")] Review review)
        {
            if (ModelState.IsValid)
            {
                db.Entry(review).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ParkID = new SelectList(db.Parks, "ParkID", "ParkName", review.ParkID);
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email", review.UserID);
            return View(review);
        }

        // GET: Reviews/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Review review = db.Reviews.Find(id);
            if (review == null)
            {
                return HttpNotFound();
            }
            return View(review);
        }

        // POST: Reviews/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Review review = db.Reviews.Find(id);
            db.Reviews.Remove(review);
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
