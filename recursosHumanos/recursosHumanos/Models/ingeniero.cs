//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace recursosHumanos.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ingeniero
    {
        public int cedula { get; set; }
        public string area { get; set; }
    
        public virtual empleado empleado { get; set; }
    }
}
