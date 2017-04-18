using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace recursosHumanos.Controllers
{
    public class principalController : Controller
    {
        // GET: principal
        public ActionResult Index()
        {
            return View("index");
        }
    }
}