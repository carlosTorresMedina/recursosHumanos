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
    
    public partial class empleado
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public empleado()
        {
            this.comentario = new HashSet<comentario>();
        }
    
        public int cedula { get; set; }
        public string nombre { get; set; }
        public Nullable<int> edad { get; set; }
        public string telefono { get; set; }
        public Nullable<int> añoingreso { get; set; }
        public string tipoempleado { get; set; }
    
        public virtual administrador administrador { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<comentario> comentario { get; set; }
        public virtual ingeniero ingeniero { get; set; }
        public virtual operario operario { get; set; }
    }
}
