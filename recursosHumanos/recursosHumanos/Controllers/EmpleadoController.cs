﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using recursosHumanos.Models;

namespace recursosHumanos.Controllers
{
    public class empleadoController : Controller
    {

        private recursosHumanosEntities entidad = new recursosHumanosEntities();

        // GET: Empleado
        public ActionResult Consultar()
        {

            var empleados = entidad.empleado;

            return View(empleados.ToList());
        }



    }
}